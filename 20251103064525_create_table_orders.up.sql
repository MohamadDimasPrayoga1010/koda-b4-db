CREATE TABLE payment_methods (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    image VARCHAR(250) NOT NULL,
    created_at TIMESTAMP DEFAULT now(),
    updated_at TIMESTAMP DEFAULT now()
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id BIGINT REFERENCES users(id),
    payment_method BIGINT REFERENCES payment_methods(id),
    delevery VARCHAR(100) NOT NULL,
    no_orders VARCHAR(50),
    total NUMERIC NOT NULL,
    status VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE orders_products (
    order_id BIGINT REFERENCES orders(id),
    product_id BIGINT REFERENCES products(id),
    size_id INT REFERENCES sizes(id),
    qty INT
);
