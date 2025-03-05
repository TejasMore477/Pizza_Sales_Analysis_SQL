SELECT * FROM pizzas; -- pizza_id,pizza_type_id,pizza_size,price 
SELECT * FROM pizza_types; -- pizza_type_id,pizza_name,category,ingredients
SELECT * FROM orders;  -- order_id,date,time
SELECT * FROM order_details; --order_details,order_id,pizza_id,quantity
-- LEVEL: EASY
-- PROBLEM : Identify the highest-priced pizza.

SELECT price , pizza_id as most_expensive_pizza
FROM pizzas
ORDER BY price DESC
LIMIT 1;