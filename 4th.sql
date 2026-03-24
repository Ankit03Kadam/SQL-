select * from pizzas;
select * from pizza_types;


-- Identify the most common pizza size ordered.
SELECT 
    pizzas.size, COUNT(order_details.order_id) AS Order_count
FROM
    order_details
        JOIN
    pizzas ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizzas.size
ORDER BY Order_count DESC
LIMIT 1;