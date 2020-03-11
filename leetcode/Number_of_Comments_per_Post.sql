SELECT
    DISTINCT p.sub_id AS post_id,
    COUNT(DISTINCT c.sub_id) AS number_of_comments
FROM Submissions p
LEFT JOIN Submissions c
ON p.sub_id = c.parent_id
WHERE p.parent_id IS NULL
GROUP BY p.sub_id
ORDER BY p.sub_id 