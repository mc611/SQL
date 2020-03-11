SELECT  ROUND( IFNULL(AVG(num),0) ,2)
AS average_sessions_per_user 
FROM(
    SELECT user_id, COUNT(DISTINCT session_id) as num
    FROM Activity 
    WHERE DATEDIFF("2019-07-27", activity_date)<30
    GROUP BY user_id
) temp
