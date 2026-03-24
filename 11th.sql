-- Calculate the percentage contribution of each pizza type to total revenue.

select pizza_types.category,round(sum(order_details.quantity*pizzas.price)/(SELECT 
    ROUND(SUM(pizzas.price * order_details.quantity),
            2) AS 'Total Revenue'
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id)*100,2) as Revenue
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details on
order_details.pizza_id = pizzas.pizza_id
group by pizza_types.category
order by Revenue desc