SELECT extra AS report_reason, count(DISTINCT post_id) AS report_count
FROM Actions
WHERE (DATEDIFF('2019-07-05',action_date) = 1) AND (Actions.action = 'report') 
GROUP BY report_reason