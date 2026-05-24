CREATE INDEX idx_orders_customer_id
ON orders(customer_id);

CREATE INDEX idx_products_category_id
ON products(category_id);

CREATE INDEX idx_inventory_warehouse_id
ON inventory(warehouse_id);

CREATE INDEX idx_inventory_product_id
ON inventory(product_id);

CREATE INDEX idx_order_items_order_id
ON order_items(order_id);

CREATE INDEX idx_order_items_product_id
ON order_items(product_id);

CREATE INDEX idx_shipments_order_id
ON shipments(order_id);

CREATE INDEX idx_shipments_warehouse_id
ON shipments(warehouse_id);

CREATE INDEX idx_tracking_events_shipment_id
ON tracking_events(shipment_id);
