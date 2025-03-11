SELECT * FROM order_details; -- order_details_id,order_id,pizza_id,quantity
SELECT * FROM orders; -- order_id,date,time
SELECT * FROM pizzas; -- pizza_id,pizza_type_id,pizza_size,price
SELECT * FROM pizza_types; -- pizza_type_id,pizza_name,category,ingredients
-- LEVEL : ADVANCED
-- PROBLEM : Determine the top 3 most ordered pizza types based on revenue for each pizza category.

SELECT pizza_name, revenue, category, Most_buyed_rank
FROM
(SELECT pizza_name, revenue, category,
RANK()
OVER ( PARTITION BY category ORDER BY revenue DESC ) AS Most_buyed_rank
FROM
(SELECT pt.pizza_name,
ROUND(SUM(p.price * od.quantity)::INTEGER,2) AS revenue,
pt.category
FROM pizzas AS p
INNER JOIN order_details AS od
ON p.pizza_id = od.pizza_id
INNER JOIN pizza_types AS pt
ON pt.pizza_type_id = p.pizza_type_id
GROUP BY pt.category ,pt.pizza_name) )
WHERE Most_buyed_rank <= 3;