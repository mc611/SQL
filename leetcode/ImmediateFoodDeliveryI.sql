SELECT 
    round(COUNT(delivery_id) / (SELECT COUNT(*) FROM Delivery)*100 ,2) AS immediate_percentage 
FROM Delivery 
WHERE order_date = customer_pref_delivery_date