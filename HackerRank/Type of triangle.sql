SELECT 
    CASE 
        WHEN (a+b>c) AND (a+c>b) AND (b+c>a) THEN
            CASE 
                WHEN (a=b) AND (a=c) THEN 'Equilateral'
                WHEN (a=b AND a!=c) OR (a=c AND a!=b) OR (b=c AND a!=b) THEN 'Isosceles'
                ELSE 'Scalene'
            END
        ELSE 'Not A Triangle'
    END
FROM TRIANGLES