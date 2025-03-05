CREATE TABLE pizza_types (
pizza_type_id VARCHAR(80) PRIMARY KEY,
pizza_name VARCHAR(80) NOT NULL,
category VARCHAR(50) NOT NULL,
ingredients TEXT NOT NULL
);

SELECT * FROM pizza_types;

-- copy csv file into database

COPY pizza_types (pizza_type_id,pizza_name,category,ingredients)
FROM 'E:\pizza_sales\pizza_types.csv'
DELIMITER ','
CSV HEADER
ENCODING 'WIN1252';