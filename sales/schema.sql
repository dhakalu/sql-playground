CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    cost NUMERIC(10, 2) NOT NULL CHECK (cost >= 0),
    price NUMERIC(10, 2) NOT NULL CHECK (price >= 0),
    sold_on DATE DEFAULT CURRENT_DATE
);