SELECT s1.Score, COUNT(DISTINCT(s2.score)) AS RANK
FROM Scores s1 JOIN Scores s2
WHERE s1.Score <= s2.score
GROUP BY s1.Id
ORDER BY Score DESC
