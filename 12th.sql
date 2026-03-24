-- Analyze the cumulative revenue generated over time.

SELECT date,
sum(Total_Revenue) OVER(ORDER BY date) AS Cum_revenue
FROM
(SELECT 
    orders.date,
    SUM(order_details.quantity * pizzas.price) AS Total_Revenue
FROM
    order_details
        JOIN
    orders ON order_details.order_id = orders.order_id
        JOIN
    pizzas ON order_details.pizza_id = pizzas.pizza_id
GROUP BY orders.date) AS revenue;