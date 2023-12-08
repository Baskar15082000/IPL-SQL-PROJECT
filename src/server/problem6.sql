SELECT 
    season, player_of_match, COUNT(player_of_match) AS awards
FROM
    matches AS m1
GROUP BY season , player_of_match
HAVING awards = (SELECT 
        COUNT(m2.player_of_match) AS count
    FROM
        matches AS m2
    WHERE
        m2.season = m1.season
    GROUP BY player_of_match
    ORDER BY count DESC
    LIMIT 1);


-- SELECT m1.season,m1.player_of_match
-- FROM (
--     SELECT
--         season,
--         player_of_match,
--         RANK() OVER (PARTITION BY season ORDER BY COUNT(player_of_match) DESC) AS rnk
--     FROM matches
--     GROUP BY season, player_of_match
-- ) AS m1
-- WHERE rnk = 1;
