SELECT * FROM pizzas; -- pizza_id,pizza_type_id,pizza_size,price 
SELECT * FROM pizza_types; -- pizza_type_id,pizza_name,category,ingredients
SELECT * FROM orders;  -- order_id,date,time
SELECT * FROM order_details; --order_details,order_id,pizza_id,quantity
-- LEVEL: EASY
-- PROBLEM : Calculate the total revenue generated from pizza sales.

SELECT round( SUM(o.quantity * p.price)::numeric,2) AS total_revenue 
FROM pizzas AS p
INNER JOIN order_details AS o
ON p.pizza_id = o.pizza_id;