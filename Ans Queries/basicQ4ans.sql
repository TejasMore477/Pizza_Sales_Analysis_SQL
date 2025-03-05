SELECT * FROM pizzas; -- pizza_id,pizza_type_id,pizza_size,price 
SELECT * FROM pizza_types; -- pizza_type_id,pizza_name,category,ingredients
SELECT * FROM orders;  -- order_id,date,time
SELECT * FROM order_details; --order_details,order_id,pizza_id,quantity
-- LEVEL: EASY
-- PROBLEM : Identify the most common pizza size ordered.

SELECT pizza_size, SUM(quantity) AS Total_orders FROM order_details AS o
INNER JOIN pizzas AS p
ON p.pizza_id = p.pizza_id
GROUP BY p.pizza_size
ORDER BY SUM(quantity) DESC
LIMIT 1;