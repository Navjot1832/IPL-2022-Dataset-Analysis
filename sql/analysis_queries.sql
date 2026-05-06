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

--Best Strike Rate
Select PlayerName,
	Round(avg(StrikeRate)) as StrikeRate
From Batting
Group By PlayerName
Having SUM(Balls)>100
ORDER BY StrikeRate DESC
Limit 10;

--Teams with most Runs
Select Team,
	Sum(Runs) as TotalRuns
From Batting
Group By Team
Order By TotalRuns Desc;

--Teams with most IN first Innings
Select Team,
	Sum(Runs) as TotalRuns
From Batting
WHERE InningsNo = 1
Group By Team
Order By TotalRuns Desc;

--Comparison of runs scored in first and second innings
Select InningsNo,
	Sum(Runs) as TotalRuns
From Batting
Group by InningsNo;