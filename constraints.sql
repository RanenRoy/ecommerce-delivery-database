ALTER TABLE orders
ADD CONSTRAINT chk_order_status
CHECK (order_status IN ('Processing', 'Shipped', 'Delivered', 'Cancelled'));

ALTER TABLE shipments
ADD CONSTRAINT chk_shipment_status
CHECK (shipment_status IN ('Packed', 'Shipped', 'In Transit', 'Delivered', 'Delayed'));

ALTER TABLE tracking_events
ADD CONSTRAINT chk_tracking_event_status
CHECK (event_status IN ('Packed', 'Shipped', 'In Transit', 'Out for Delivery', 'Delivered', 'Delayed'));
