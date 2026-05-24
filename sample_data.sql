INSERT INTO customers (first_name, last_name, email, phone_number)
VALUES
('Alex', 'Tan', 'alex.tan@email.com', '0401000001'),
('Sarah', 'Lee', 'sarah.lee@email.com', '0401000002'),
('James', 'Wong', 'james.wong@email.com', '0401000003'),
('Priya', 'Shah', 'priya.shah@email.com', '0401000004'),
('Daniel', 'Kim', 'daniel.kim@email.com', '0401000005');

INSERT INTO product_categories (category_name)
VALUES
('Electronics'),
('Clothing'),
('Home'),
('Books');

INSERT INTO warehouses (warehouse_location, warehouse_size)
VALUES
('Sydney', 'Large'),
('Melbourne', 'Medium'),
('Brisbane', 'Small');

INSERT INTO products (category_id, product_name, price)
VALUES
(1, 'Wireless Mouse', 29.99),
(1, 'USB-C Charger', 34.99),
(1, 'Bluetooth Speaker', 79.99),
(2, 'Cotton T-Shirt', 24.99),
(2, 'Running Shoes', 119.99),
(3, 'Desk Lamp', 49.99),
(3, 'Coffee Mug Set', 19.99),
(3, 'Office Chair', 199.99),
(4, 'SQL Beginner Book', 39.99),
(4, 'Data Analytics Guide', 44.99);

INSERT INTO orders (customer_id, order_date, order_status)
VALUES
(1, '2026-05-01', 'Delivered'),
(2, '2026-05-02', 'Delivered'),
(3, '2026-05-03', 'Processing'),
(4, '2026-05-04', 'Shipped'),
(5, '2026-05-05', 'Delivered');

SELECT customer_id, first_name, last_name
FROM customers
ORDER BY customer_id;

INSERT INTO products (category_id, product_name, price)
VALUES
(1, 'Wireless Mouse', 29.99),
(1, 'USB-C Charger', 34.99),
(1, 'Bluetooth Speaker', 79.99),
(2, 'Cotton T-Shirt', 24.99),
(2, 'Running Shoes', 119.99),
(3, 'Desk Lamp', 49.99),
(3, 'Coffee Mug Set', 19.99),
(3, 'Office Chair', 199.99),
(4, 'SQL Beginner Book', 39.99),
(4, 'Data Analytics Guide', 44.99);

INSERT INTO inventory (warehouse_id, product_id, stock_quantity)
VALUES
(1, 11, 50),
(1, 12, 80),
(1, 13, 25),
(1, 14, 100),
(1, 16, 40),
(2, 11, 30),
(2, 15, 20),
(2, 17, 60),
(2, 18, 15),
(2, 19, 35),
(3, 12, 45),
(3, 13, 10),
(3, 14, 70),
(3, 15, 12),
(3, 20, 25);

INSERT INTO order_items (order_id, product_id, quantity, unit_price)
VALUES
(30, 11, 1, 29.99),
(30, 14, 2, 24.99),
(31, 12, 1, 34.99),
(31, 17, 1, 19.99),
(32, 13, 1, 79.99),
(32, 16, 1, 49.99),
(33, 15, 1, 119.99),
(33, 18, 1, 199.99),
(34, 19, 1, 39.99),
(34, 20, 1, 44.99);

INSERT INTO shipments (order_id, warehouse_id, tracking_number, shipment_status, shipped_date, estimated_delivery_date)
VALUES
(30, 1, 'AP100001', 'Delivered', '2026-05-02', '2026-05-04'),
(31, 2, 'AP100002', 'Delivered', '2026-05-03', '2026-05-05'),
(32, 1, 'AP100003', 'In Transit', '2026-05-04', '2026-05-07'),
(33, 3, 'AP100004', 'Shipped', '2026-05-05', '2026-05-08'),
(34, 2, 'AP100005', 'Delivered', '2026-05-06', '2026-05-09');

INSERT INTO tracking_events (shipment_id, event_time, event_status, event_location)
VALUES
(1, '2026-05-02 09:00:00', 'Packed', 'Sydney Warehouse'),
(1, '2026-05-02 14:00:00', 'Shipped', 'Sydney'),
(1, '2026-05-04 10:30:00', 'Delivered', 'Customer Address'),

(2, '2026-05-03 08:30:00', 'Packed', 'Melbourne Warehouse'),
(2, '2026-05-03 13:00:00', 'Shipped', 'Melbourne'),
(2, '2026-05-05 11:15:00', 'Delivered', 'Customer Address'),

(3, '2026-05-04 09:45:00', 'Packed', 'Sydney Warehouse'),
(3, '2026-05-04 15:20:00', 'In Transit', 'Sydney'),

(4, '2026-05-05 10:00:00', 'Packed', 'Brisbane Warehouse'),
(4, '2026-05-05 16:00:00', 'Shipped', 'Brisbane'),

(5, '2026-05-06 08:00:00', 'Packed', 'Melbourne Warehouse'),
(5, '2026-05-06 12:45:00', 'Shipped', 'Melbourne'),
(5, '2026-05-09 09:30:00', 'Delivered', 'Customer Address');

INSERT INTO customer_feedback (order_id, rating, comment, feedback_date)
VALUES
(30, 5, 'Delivered on time and product was in good condition.', '2026-05-04'),
(31, 4, 'Good delivery experience overall.', '2026-05-05'),
(34, 5, 'Easy tracking and fast delivery.', '2026-05-09');
