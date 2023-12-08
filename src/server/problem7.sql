SELECT 
    season,
    batsman,
    round(((SUM(ABS(total_runs - extra_runs))) /(SUM(CASE
        WHEN noball_runs = 0 AND wide_runs = 0 THEN 1
        ELSE 0
    END))*100),2 )as strike_rate 
FROM
    deliveries
        LEFT JOIN
    matches ON matches.id = deliveries.match_id
GROUP BY batsman , season order by season;