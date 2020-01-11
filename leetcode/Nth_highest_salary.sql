CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  
  DECLARE M INT;
  IF N = 0 THEN SET M = 0;
  ELSE          SET M = N-1;
  END IF;
  
  RETURN (
      # Write your MySQL query statement below.
      SELECT ( 
          IFNULL(
              (SELECT DISTINCT salary 
               FROM Employee 
               ORDER BY salary DESC 
               LIMIT 1
               OFFSET M
              ),
           NULL)
        ) 

  );  
END
