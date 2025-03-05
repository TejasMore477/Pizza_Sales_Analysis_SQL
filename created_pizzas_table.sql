CREATE TABLE pizzas (
pizza_id VARCHAR(80) PRIMARY KEY,
pizza_type_id VARCHAR(80) NOT NULL,
pizza_size VARCHAR(5) NOT NULL,
price FLOAT NOT NULL
);


SELECT * FROM pizzas;

-- copy csv file into database

COPY pizzas (pizza_id,pizza_type_id,pizza_size,price)
FROM 'E:\pizza_sales\pizzas.csv'
DELIMITER ','
CSV HEADER;
