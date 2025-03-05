SELECT * FROM order_details; -- order_details_id,order_id,pizza_id,quantity
SELECT * FROM orders; -- order_id,date,time
SELECT * FROM pizzas; -- pizza_id,pizza_type_id,pizza_size,price
SELECT * FROM pizza_types; -- pizza_type_id,pizza_name,category,ingredients
-- LEVEL : ADVANCED
-- PROBLEM : Calculate the percentage contribution of each pizza type to total revenue.

SELECT 
    pt.category,
    ROUND(SUM(od.quantity * p.price)::NUMERIC, 2) AS total_revenue_per_type,
	ROUND(
		SUM(od.quantity * p.price)::numeric/(
		SELECT SUM(od.quantity * p.price)::numeric 
		FROM pizzas AS p
		INNER JOIN order_details AS od ON od.pizza_id = p.pizza_id
	)*100 :: numeric,2) AS percentage_contribution
FROM pizzas AS p
INNER JOIN order_details AS od ON od.pizza_id = p.pizza_id 
INNER JOIN pizza_types AS pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category;



