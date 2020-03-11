SELECT s1.product_id, s1.year AS first_year, s1.quantity, s1.price
FROM Sales s1
LEFT JOIN Sales s2
ON s1.product_id = s2.product_id AND s1.year > s2.year
WHERE s2.year IS NULL

# Solution 2
SELECT product_id, year AS first_year, quantity, price
FROM Sales
WHERE (product_id, year) IN (
    SELECT product_id, MIN(year)
    FROM Sales
    GROUP BY product_id
)