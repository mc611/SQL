SELECT Email FROM 
(
      SELECT Email, count(Email) as num
      FROM Person 
      GROUP BY Email
     ) AS M
WHERE num>1