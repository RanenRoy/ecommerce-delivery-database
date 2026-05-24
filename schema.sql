CREATE TABLE customers (
    customer_id SERIAL NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(150) NOT NULL,
    phone_number VARCHAR(20),

    PRIMARY KEY (customer_id),
    UNIQUE (email)
);

CREATE TABLE product_categories (
    category_id SERIAL NOT NULL,
    category_name VARCHAR(100) NOT NULL,

    PRIMARY KEY (category_id),
    UNIQUE (category_name)
);

CREATE TABLE warehouses (
    warehouse_id SERIAL NOT NULL,
    warehouse_location VARCHAR(100) NOT NULL,
    warehouse_size VARCHAR(50),

    PRIMARY KEY (warehouse_id)
);

CREATE TABLE products (
    product_id SERIAL NOT NULL,
    category_id INT NOT NULL,
    product_name VARCHAR(150) NOT NULL,
    price NUMERIC(10,2) NOT NULL,

    PRIMARY KEY (product_id),
    FOREIGN KEY (category_id) REFERENCES product_categories(category_id),
    CHECK (price > 0)
);

CREATE TABLE orders (
    order_id SERIAL NOT NULL,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    order_status VARCHAR(50) NOT NULL,

    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE inventory (
    inventory_id SERIAL NOT NULL,
    warehouse_id INT NOT NULL,
    product_id INT NOT NULL,
    stock_quantity INT NOT NULL,

    PRIMARY KEY (inventory_id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(warehouse_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    CHECK (stock_quantity >= 0),
    UNIQUE (warehouse_id, product_id)
);

CREATE TABLE order_items (
    order_item_id SERIAL NOT NULL,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price NUMERIC(10,2) NOT NULL,

    PRIMARY KEY (order_item_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    CHECK (quantity > 0),
    CHECK (unit_price > 0)
);

CREATE TABLE shipments (
    shipment_id SERIAL NOT NULL,
    order_id INT NOT NULL,
    warehouse_id INT NOT NULL,
    tracking_number VARCHAR(100) NOT NULL,
    shipment_status VARCHAR(50) NOT NULL,
    shipped_date DATE,
    estimated_delivery_date DATE,

    PRIMARY KEY (shipment_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(warehouse_id),
    UNIQUE (order_id),
    UNIQUE (tracking_number)
);

CREATE TABLE tracking_events (
    tracking_event_id SERIAL NOT NULL,
    shipment_id INT NOT NULL,
    event_time TIMESTAMP NOT NULL,
    event_status VARCHAR(100) NOT NULL,
    event_location VARCHAR(100),

    PRIMARY KEY (tracking_event_id),
    FOREIGN KEY (shipment_id) REFERENCES shipments(shipment_id)
);

CREATE TABLE customer_feedback (
    feedback_id SERIAL NOT NULL,
    order_id INT NOT NULL,
    rating INT NOT NULL,
    comment VARCHAR(255),
    feedback_date DATE NOT NULL,

    PRIMARY KEY (feedback_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    UNIQUE (order_id),
    CHECK (rating BETWEEN 1 AND 5)
);
