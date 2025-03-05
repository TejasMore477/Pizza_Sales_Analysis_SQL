CREATE TABLE orders (
order_id INT PRIMARY KEY,
date DATE NOT NULL,
time TIME NOT NULL
);

SELECT * FROM orders;

-- copy csv file into database

COPY orders (order_id,date,time)
FROM 'E:\pizza_sales\orders.csv'
DELIMITER ','
CSV HEADER;