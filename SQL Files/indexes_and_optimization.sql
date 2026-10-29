-- Query optimization: indexes that support the most common joins / filters in SQL Queries.sql
-- Run after "Table creation and inserting value.sql". Use EXPLAIN to compare plans before/after.

-- Invoice is filtered by order_date (recent-activity reports) and joined on order_id / dp_id
CREATE INDEX idx_invoice_order_date ON Invoice (order_date);
CREATE INDEX idx_invoice_order_id   ON Invoice (order_id);

-- Orders is joined to Menu on (menu_item_id, res_id) and grouped by restaurant / customer
CREATE INDEX idx_orders_item_res    ON Orders (menu_item_id, res_id);

-- Rating is joined to Orders/Invoice on order_id
CREATE INDEX idx_rating_order_id    ON Rating (order_id);

-- Example: compare the plan for the "recent orders" report
EXPLAIN
SELECT I.dp_id, COUNT(*) AS deliveries
FROM Invoice I
WHERE I.order_date >= (SELECT MAX(order_date) FROM Invoice) - INTERVAL 2 MONTH
GROUP BY I.dp_id;
