-- Team with most wins
SELECT winner, COUNT(*) AS wins
FROM matches
GROUP BY winner
ORDER BY wins DESC;

-- Top run scorers
SELECT batsman,
       SUM(batsman_runs) AS total_runs
FROM deliveries
GROUP BY batsman
ORDER BY total_runs DESC
LIMIT 10;

-- Top wicket takers
SELECT bowler,
       COUNT(player_dismissed) AS wickets
FROM deliveries
WHERE dismissal_kind IS NOT NULL
GROUP BY bowler
ORDER BY wickets DESC
LIMIT 10;