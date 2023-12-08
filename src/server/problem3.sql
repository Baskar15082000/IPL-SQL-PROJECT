SELECT 
    batting_team AS Team, SUM(extra_runs) AS Extra_Runs
FROM
    deliveries
        LEFT JOIN
    matches ON deliveries.match_id = matches.id
WHERE
    season = 2016
GROUP BY batting_team;