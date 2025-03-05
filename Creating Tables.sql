CREATE TABLE order_details (
order_details_id INT PRIMARY KEY,
order_id INT NOT NULL,
pizza_id VARCHAR(80) NOT NULL,
quantity INT NOT NULL
);

SELECT * FROM order_details;

-- copy csv file into database

COPY order_details (order_details_id,order_id,pizza_id,quantity)
FROM 'E:\pizza_sales\order_details.csv'
DELIMITER ','
CSV HEADER;