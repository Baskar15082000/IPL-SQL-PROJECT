SELECT 
    winner, COUNT(winner)
FROM
    matches
WHERE
    toss_winner = winner
GROUP BY winner; 