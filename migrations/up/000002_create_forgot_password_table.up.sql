CREATE TABLE forgot_password(
    id SERIAL PRIMARY KEY,
    user_id BIGINT UNIQUE REFERENCES users(id),
    token VARCHAR(100),
    expires_at TIMESTAMP DEFAULT now(),
    created_at TIMESTAMP DEFAULT now()
); 