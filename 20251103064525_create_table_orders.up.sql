CREATE TABLE payment_methods (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    image VARCHAR(250) NOT NULL,
    created_at TIMESTAMP DEFAULT now(),
    updated_at TIMESTAMP DEFAULT now()
);

CREATE TABLE shippings (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE
);

CREATE TABLE status (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id BIGINT REFERENCES users(id),
    payment_method BIGINT REFERENCES payment_methods(id),
    shipping_id BIGINT REFERENCES shippings(id),
    no_orders VARCHAR(50),
    total NUMERIC NOT NULL,
    status_id BIGINT REFERENCES status(id),
    created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE orders_products (
    id SERIAL PRIMARY KEY
    order_id BIGINT REFERENCES orders(id),
    product_id BIGINT REFERENCES products(id),
    size_id INT REFERENCES sizes(id),
    qty INT
);
