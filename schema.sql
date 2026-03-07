-- The schema used in my PostgreSQL database

-- Customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    signup_date DATE
);

-- Products table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name TEXT,
    price NUMERIC
);

-- Orders table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE
);

-- Order items table
CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_id INT REFERENCES products(product_id),
    quantity INT
);
