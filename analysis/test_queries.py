"""Smoke tests: every KPI query and every original query in SQL Files/ runs without errors."""
import re
from pathlib import Path

import pytest
from sqlalchemy import text

from analyze import engine_from_env, load_queries

ROOT = Path(__file__).resolve().parent.parent
engine = engine_from_env()


def original_queries():
    sql = (ROOT / "SQL Files" / "SQL Queries.sql").read_text()
    blocks = [b for b in re.split(r"\n(?=#)", sql) if b.strip()]
    for block in blocks:
        title = block.strip().splitlines()[0].lstrip("#").strip()
        query = "\n".join(l for l in block.splitlines() if not l.startswith("#")).strip().rstrip(";")
        if query:
            yield pytest.param(query, id=title[:60])


@pytest.mark.parametrize("name,sql", list(load_queries().items()))
def test_kpi_query_runs(name, sql):
    with engine.connect() as conn:
        rows = conn.execute(text(sql)).fetchall()
    if not name.startswith("dq_"):
        assert rows, f"{name} returned no rows"


@pytest.mark.parametrize("sql", list(original_queries()))
def test_original_query_runs(sql):
    with engine.connect() as conn:
        conn.execute(text(sql)).fetchall()
