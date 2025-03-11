SELECT * FROM order_details; -- order_details_id,order_id,pizza_id,quantity
SELECT * FROM orders; -- order_id,date,time
SELECT * FROM pizzas; -- pizza_id,pizza_type_id,pizza_size,price
SELECT * FROM pizza_types; -- pizza_type_id,pizza_name,category,ingredients
-- LEVEL : ADVANCED
-- PROBLEM : Determine the top 3 most ordered pizza types based on revenue for each pizza category.