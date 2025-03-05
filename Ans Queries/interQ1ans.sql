SELECT * FROM pizzas; -- pizza_id,pizza_type_id,pizza_size,price 
SELECT * FROM pizza_types; -- pizza_type_id,pizza_name,category,ingredients
SELECT * FROM orders;  -- order_id,date,time
SELECT * FROM order_details; --order_details,order_id,pizza_id,quantity
-- LEVEL: INTERMEDIATE
-- PROBLEM : Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT SUM(o.quantity) AS total_quantity_order, pt.category FROM pizza_types AS pt
INNER JOIN pizzas AS p
ON pt.pizza_type_id = p.pizza_type_id
INNER JOIN order_details AS o
ON p.pizza_id = o.pizza_id
GROUP BY pt.category
ORDER BY SUM(o.quantity) DESC;