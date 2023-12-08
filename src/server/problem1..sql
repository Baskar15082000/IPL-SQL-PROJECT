SELECT DISTINCT
    (season) AS Seasson, COUNT(season) AS Matches
FROM
    matches
GROUP BY season
ORDER BY season;
