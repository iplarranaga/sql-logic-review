SELECT
    c.customer_id,
    c.name,
    o.order_id
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.order_date >= '2024-01-01';
