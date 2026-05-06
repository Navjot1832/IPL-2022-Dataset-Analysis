-- Top run scorers
SELECT PlayerName ,
       SUM(Runs) AS TotalRuns
FROM batting
GROUP BY PlayerName
ORDER BY TotalRuns DESC
LIMIT 10;

--Most Dot balls player by a player
SELECT PlayerName,
       SUM(DotBalls) AS DotBalls
FROM batting
GROUP BY PlayerName
ORDER BY DotBalls DESC
LIMIT 10;

--Most Sixes By A Player
Select PlayerName , 
		SUM(Sixes) as TotalSixes
From Batting
Group BY PlayerName
ORDER BY TotalSixes DESC
Limit 10;

--Most Fours By A Player
Select PlayerName , 
        SUM(Fours) as TotalFours        
From Batting
Group BY PlayerName 
ORDER BY TotalFours DESC
Limit 10;
