-- Business KPI queries used by analysis/analyze.py
-- Written to be portable (MySQL 8 with ONLY_FULL_GROUP_BY, MariaDB) and readable (CTEs, explicit GROUP BY).
-- Each query starts with a "-- name: <id>" line so the Python script can run them individually.

-- name: monthly_revenue
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       COUNT(*)                          AS invoices,
       SUM(invoice_amount)               AS revenue,
       ROUND(AVG(invoice_amount), 2)     AS avg_order_value
FROM Invoice
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;

-- name: payment_mix
SELECT payment_type,
       COUNT(*)                                              AS invoices,
       SUM(invoice_amount)                                   AS revenue,
       ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 1)      AS pct_of_invoices
FROM Invoice
GROUP BY payment_type
ORDER BY revenue DESC;

-- name: delivery_person_performance
WITH dp_orders AS (
    SELECT I.dp_id, COUNT(*) AS deliveries, SUM(I.invoice_amount) AS revenue_delivered
    FROM Invoice I
    GROUP BY I.dp_id
),
dp_ratings AS (
    SELECT I.dp_id, ROUND(AVG(R.delivery_person_rating), 2) AS avg_rating
    FROM Rating R
    JOIN Invoice I ON I.order_id = R.order_id
    GROUP BY I.dp_id
)
SELECT D.dp_id,
       CONCAT(D.dp_firstname, ' ', D.dp_lastname) AS delivery_person,
       COALESCE(o.deliveries, 0)                  AS deliveries,
       COALESCE(o.revenue_delivered, 0)           AS revenue_delivered,
       r.avg_rating
FROM Delivery_Person D
LEFT JOIN dp_orders  o ON o.dp_id = D.dp_id
LEFT JOIN dp_ratings r ON r.dp_id = D.dp_id
ORDER BY deliveries DESC, avg_rating DESC;

-- name: menu_item_popularity
SELECT C.menu_item_desc,
       C.cuisine_name,
       SUM(O.menu_item_qty)                       AS units_sold,
       SUM(O.menu_item_qty * M.menu_item_price)   AS gross_sales
FROM Orders O
JOIN Menu M    ON M.menu_item_id = O.menu_item_id AND M.res_id = O.res_id
JOIN Cuisine C ON C.menu_item_id = O.menu_item_id
GROUP BY C.menu_item_desc, C.cuisine_name
ORDER BY units_sold DESC, gross_sales DESC;

-- name: restaurant_ratings
SELECT Re.res_name,
       COUNT(DISTINCT Ra.order_id)              AS rated_orders,
       ROUND(AVG(Ra.restaurant_rating), 2)      AS avg_restaurant_rating,
       ROUND(AVG(Ra.menu_item_rating), 2)       AS avg_item_rating,
       DENSE_RANK() OVER (ORDER BY AVG(Ra.restaurant_rating) DESC) AS rating_rank
FROM Rating Ra
JOIN Orders O      ON O.order_id = Ra.order_id AND O.menu_item_id = Ra.menu_item_id
JOIN Restaurant Re ON Re.res_id = O.res_id
GROUP BY Re.res_name
ORDER BY rating_rank;

-- name: discount_impact
SELECT discount_percent,
       COUNT(*)                      AS invoices,
       ROUND(AVG(invoice_amount), 2) AS avg_invoice_amount,
       SUM(invoice_amount)           AS revenue
FROM Invoice
GROUP BY discount_percent
ORDER BY discount_percent;

-- name: premium_vs_standard_customers
SELECT Cu.cus_premium_member                AS premium_member,
       COUNT(DISTINCT Cu.cus_id)            AS customers,
       COUNT(DISTINCT O.order_id)           AS orders,
       SUM(O.menu_item_qty * M.menu_item_price) AS gross_sales
FROM Customer Cu
LEFT JOIN Orders O ON O.cus_id = Cu.cus_id
LEFT JOIN Menu M   ON M.menu_item_id = O.menu_item_id AND M.res_id = O.res_id
GROUP BY Cu.cus_premium_member;

-- name: dq_invoices_without_order
-- Data-quality check: invoices that reference an order with no order lines
SELECT I.Invoice_id, I.order_id, I.order_date
FROM Invoice I
LEFT JOIN Orders O ON O.order_id = I.order_id
WHERE O.order_id IS NULL
ORDER BY I.order_date;
