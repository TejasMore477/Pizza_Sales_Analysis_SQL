SELECT * FROM pizzas; -- pizza_id,pizza_type_id,pizza_size,price 
SELECT * FROM pizza_types; -- pizza_type_id,pizza_name,category,ingredients
SELECT * FROM orders;  -- order_id,date,time
SELECT * FROM order_details; --order_details,order_id,pizza_id,quantity
-- LEVEL: INTERMEDIATE
-- PROBLEM : Determine the distribution of orders by hour of the day.

SELECT EXTRACT(HOUR FROM time ) AS order_hour, 
EXTRACT(DAY FROM date) AS order_day,
COUNT(order_id) AS total_orders
FROM orders
GROUP BY order_hour, order_day
ORDER BY order_hour ASC, order_day DESC;

