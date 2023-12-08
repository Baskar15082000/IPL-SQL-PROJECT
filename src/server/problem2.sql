SELECT 
    season, winner, COUNT(winner) AS matchWon
FROM
    matches
GROUP BY season , winner;