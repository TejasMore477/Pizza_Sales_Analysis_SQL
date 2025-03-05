SELECT * FROM pizzas; -- pizza_id,pizza_type_id,pizza_size,price 
SELECT * FROM pizza_types; -- pizza_type_id,pizza_name,category,ingredients
SELECT * FROM orders;  -- order_id,date,time
SELECT * FROM order_details; --order_details,order_id,pizza_id,quantity
-- LEVEL: EASY
-- PROBLEM : List the top 5 most ordered pizza types along with their quantities.

SELECT SUM(o.quantity) AS total_orders, pt.pizza_type_id FROM order_details AS o
INNER JOIN pizzas AS p
ON p.pizza_id = o.pizza_id
INNER JOIN pizza_types AS pt
ON pt.pizza_type_id = p.pizza_type_id
GROUP BY pt.pizza_type_id
ORDER BY SUM(o.quantity) DESC
LIMIT 5;