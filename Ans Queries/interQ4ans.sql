SELECT * FROM pizzas; -- pizza_id,pizza_type_id,pizza_size,price 
SELECT * FROM pizza_types; -- pizza_type_id,pizza_name,category,ingredients
SELECT * FROM orders;  -- order_id,date,time
SELECT * FROM order_details; --order_details,order_id,pizza_id,quantity
-- LEVEL: INTERMEDIATE
-- PROBLEM : Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT round(AVG(od.quantity),2) AS avg_quantaty_order , o.date  FROM orders AS o
INNER JOIN order_details AS od
ON o.order_id = od.order_id
GROUP BY o.date
ORDER BY o.date ASC;