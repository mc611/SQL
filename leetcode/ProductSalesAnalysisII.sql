SELECT product_id, SUM(quantity) AS total_quantity
FROM Sales 
GROUP BY product_id