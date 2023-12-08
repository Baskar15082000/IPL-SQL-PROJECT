SELECT 
    bowler,
    (SUM(total_runs) / (SUM(CASE
        WHEN noball_runs = 0 AND wide_runs = 0 THEN 1
        ELSE 0
    END) / 6)) AS economy
FROM
    deliveries
        LEFT JOIN
    matches ON deliveries.match_id = matches.id
WHERE
is_super_over=1
GROUP BY bowler
ORDER BY economy limit 1;
