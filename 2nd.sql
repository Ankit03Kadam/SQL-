select * from pizzas;
select * from order_details;

-- Calculate the total revenue generated from pizza sales.
SELECT 
    ROUND(SUM(pizzas.price * order_details.quantity),
            2) AS 'Total Revenue'
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id;