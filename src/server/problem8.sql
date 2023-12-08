SELECT 
    bowler,
    player_dismissed,
    COUNT(player_dismissed) AS No_Of_Times_Dismissed
FROM
    deliveries
WHERE
    player_dismissed NOT LIKE ''
GROUP BY player_dismissed , bowler
ORDER BY No_Of_Times_Dismissed DESC
LIMIT 1;