SELECT * FROM pizzas; -- pizza_id,pizza_type_id,pizza_size,price 
SELECT * FROM pizza_types; -- pizza_type_id,pizza_name,category,ingredients
SELECT * FROM orders;  -- order_id,date,time
SELECT * FROM order_details; --order_details,order_id,pizza_id,quantity
-- LEVEL: INTERMEDIATE
-- PROBLEM : Determine the top 3 most ordered pizza types based on revenue.

SELECT round(SUM(od.quantity * p.price)::numeric,2) AS total_revenue,
	   p.pizza_id AS most_Ordered
FROM pizzas AS p
INNER JOIN order_details AS od
ON od.pizza_id = p.pizza_id
INNER JOIN pizza_types AS pt
ON pt.pizza_type_id = p.pizza_type_id
GROUP BY  p.pizza_id
ORDER BY total_revenue DESC
LIMIT 3;