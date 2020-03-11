SELECT t.team_id, t.team_name, SUM(IFNULL(points,0)) AS num_points
FROM Teams t
LEFT JOIN (
    SELECT host_team AS team_id,
           (CASE WHEN host_goals > guest_goals THEN 3
                 WHEN host_goals = guest_goals THEN 1
                 ELSE 0
            END) AS points
    FROM Matches

    UNION ALL

    SELECT guest_team AS team_id, 
           (CASE WHEN host_goals < guest_goals THEN 3
                 WHEN host_goals = guest_goals THEN 1
                 ELSE 0
            END) AS points
    FROM Matches 
) temp
ON t.team_id = temp.team_id
GROUP BY t.team_id
ORDER BY num_points DESC, t.team_id