CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount FLOAT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_name VARCHAR(50),
    quantity INT,
    price FLOAT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_type VARCHAR(20),
    payment_value FLOAT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

CREATE TABLE sales (
    id INT PRIMARY KEY,
    month VARCHAR(20),
    revenue INT
);
