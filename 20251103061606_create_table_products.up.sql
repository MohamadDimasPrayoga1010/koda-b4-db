CREATE TABLE variants(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE categories(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT now(),
    updated_at TIMESTAMP DEFAULT now()
);


CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    description VARCHAR(250),
    stock INT,
    category_id BIGINT REFERENCES categories(id),
    variant_id BIGINT REFERENCES variants(id),
    base_price NUMERIC,
    created_at TIMESTAMP DEFAULT now(),
    updated_at TIMESTAMP DEFAULT now(),
    deleted_at TIMESTAMP DEFAULT now()
);

