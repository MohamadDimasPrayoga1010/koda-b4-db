CREATE TABLE orders_products (
    id SERIAL PRIMARY KEY,
    order_id BIGINT REFERENCES orders(id),
    product_id BIGINT REFERENCES products(id),
    size_id INT REFERENCES sizes(id),
    qty INT
);