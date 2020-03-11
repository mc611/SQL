SELECT e.business_id
FROM Events e
LEFT JOIN (
    SELECT event_type, AVG(occurences) AS m
    FROM Events
    GROUP BY event_type
) a
ON e.event_type = a.event_type
WHERE e.occurences > a.m
GROUP BY business_id
HAVING COUNT(e.event_type) > 1 

