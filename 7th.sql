-- Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(time) AS Hours, COUNT(order_id) AS Order_count
FROM
    orders
GROUP BY HOUR(time);