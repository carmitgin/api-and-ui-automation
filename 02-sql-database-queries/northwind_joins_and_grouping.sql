-- Northwind DB Practice Queries (Aggregation, Filtering, and JOINS)

-- 1. Aggregation & GROUP BY: Total revenue per product
SELECT 
    p.product_id,
    p.product_name,
    SUM(od.quantity * p.unit_price) AS total_revenue
FROM order_details AS od
JOIN products AS p ON od.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC;

-- 2. Multi-Table INNER JOIN: Orders with Customer Name & Shipper Info
SELECT 
    c.customer_id,
    c.company_name,
    o.order_id,
    s.company_name AS shipper_name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN shippers s ON o.ship_via = s.shipper_id;

-- 3. LEFT JOIN: Identify "Ghost Customers" (Customers with zero orders)
SELECT 
    c.customer_id,
    c.company_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- 4. Revenue per Category (Multi-Join + Grouping)
SELECT 
    c.category_name,
    ROUND(SUM(p.unit_price * od.quantity), 2) AS total_category_revenue
FROM order_details od
JOIN products p ON p.product_id = od.product_id
JOIN categories c ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name
ORDER BY total_category_revenue DESC;
