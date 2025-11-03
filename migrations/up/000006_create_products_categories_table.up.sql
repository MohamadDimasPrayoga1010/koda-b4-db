CREATE TABLE products_categories(
    product_id BIGINT REFERENCES products(id),
    category_id BIGINT REFERENCES categories(id)
);

CREATE TABLE product_images(
    id SERIAL PRIMARY KEY,
    product_id BIGINT REFERENCES products(id),
    image VARCHAR(250),
    updated_at TIMESTAMP DEFAULT now(),
    deleted_at TIMESTAMP DEFAULT now()
);
 
CREATE TABLE sizes(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    additional_price NUMERIC
);

CREATE TABLE product_sizes(
    product_id BIGINT REFERENCES products(id),
    size_id INT REFERENCES sizes(id)
);