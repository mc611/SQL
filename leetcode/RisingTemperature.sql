SELECT w1.id 
FROM weather w1
JOIN weather w2
ON DATEDIFF (w1.RecordDate,w2.RecordDate) = 1
WHERE w1.Temperature > w2.Temperature