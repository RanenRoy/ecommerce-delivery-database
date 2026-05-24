-- 1. Total sales by product category
SELECT 
    pc.category_name,
    SUM(oi.quantity * oi.unit_price) AS total_sales
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN product_categories pc ON p.category_id = pc.category_id
GROUP BY pc.category_name
ORDER BY total_sales DESC;


-- 2. Products included in each order
SELECT
    o.order_id,
    c.first_name,
    c.last_name,
    p.product_name,
    oi.quantity,
    oi.unit_price
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
ORDER BY o.order_id;


-- 3. Stock quantity by warehouse
SELECT
    w.warehouse_location,
    p.product_name,
    i.stock_quantity
FROM inventory i
JOIN warehouses w ON i.warehouse_id = w.warehouse_id
JOIN products p ON i.product_id = p.product_id
ORDER BY w.warehouse_location, p.product_name;


-- 4. Shipment tracking history
SELECT
    s.tracking_number,
    te.event_time,
    te.event_status,
    te.event_location
FROM shipments s
JOIN tracking_events te ON s.shipment_id = te.shipment_id
ORDER BY s.tracking_number, te.event_time;


-- 5. Customer feedback by order
SELECT
    o.order_id,
    c.first_name,
    c.last_name,
    cf.rating,
    cf.comment,
    cf.feedback_date
FROM customer_feedback cf
JOIN orders o ON cf.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
ORDER BY cf.feedback_date;
