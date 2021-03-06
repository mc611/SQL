SELECT s1.id AS id, 
       s2.student AS student
FROM seat s1
LEFT JOIN seat s2
ON CASE WHEN (MOD(s1.id,2) = 1) AND s1.id = (SELECT MAX(id) FROM seat) THEN s1.id = s2.id
        WHEN MOD(s1.id,2) = 1 THEN s1.id = s2.id - 1
        ELSE s1.id = s2.id + 1 
   END
ORDER BY s1.id