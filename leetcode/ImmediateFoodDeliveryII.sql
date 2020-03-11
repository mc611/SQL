SELECT ROUND(SUM(
    CASE 
        WHEN order_date=customer_pref_delivery_date THEN 1 
        ELSE 0 
    END)/COUNT(DISTINCT customer_id)
             *100,2) AS immediate_percentage
FROM delivery
WHERE (customer_id, order_date) IN
(SELECT customer_id, MIN(order_date) AS firstday
FROM delivery
GROUP BY customer_id) 
