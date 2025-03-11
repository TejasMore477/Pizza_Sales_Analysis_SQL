SELECT * FROM order_details; -- order_details_id,order_id,pizza_id,quantity
SELECT * FROM orders; -- order_id,date,time
SELECT * FROM pizzas; -- pizza_id,pizza_type_id,pizza_size,price
SELECT * FROM pizza_types; -- pizza_type_id,pizza_name,category,ingredients
-- LEVEL : ADVANCED
-- PROBLEM : Analyze the cumulative revenue generated over time.

-- what is cumulative ammount?
-- 200 200
-- 300 500
-- 200 700
SELECT 
    date, 
    SUM(revenue) OVER (ORDER BY date) AS cum_revenue 
FROM (
    SELECT 
        o.date, 
        ROUND(SUM(od.quantity * p.price)::numeric, 2) AS revenue
    FROM order_details AS od
    INNER JOIN pizzas AS p ON p.pizza_id = od.pizza_id
    JOIN orders AS o ON o.order_id = od.order_id
    GROUP BY o.date
) AS sales;
