--Teams Analysis

--Top Teams by Wins
Select Match_Winner ,
	Count(*) AS Wins
From matchresults
Group By Match_Winner
Order By Wins DESC;

--Team who won most number of matches after winning toss
SELECT match_winner ,
	Count(*) As wins
From matchresults
Where match_winner = toss_winner
Group by match_winner
Order By wins DESC;

--Team who won most number of tosses
Select Toss_winner,
	Count(*) as Tosswins
From matchresults
Group By Toss_winner
Order by Tosswins DESC;

--Team who won most number of matches while chasing
Select Match_winner,
	Count(*) as wins
From matchresults
Where Won_by = 'wickets'
Group by match_winner
Order by wins DESC;

--Team who won most number of matches while defending
Select Match_winner,
	Count(*) as wins
From matchresults
Where Won_by = 'Runs'
Group by match_winner
Order by wins DESC;

--Player with most number of Man of the Match awards
Select player_of_the_match,
	Count(*) as Most_POTM
From matchresults
Group by player_of_the_match
Order By Most_POTM Desc;

--Chasing Freindly Venues
Select distinct venue,
	Count(*) as ChasingFriendly
From matchresults
Where won_by = 'Wickets'
Group by Venue
Order By ChasingFriendly Desc;

--Defending Friendly Venues
Select distinct venue,
	Count(*) as DefendingFriendly
From matchresults
Where won_by = 'Runs'
Group by Venue
Order By ChasingFriendly Desc;

--Chasing Vs Defending Wins
Select Won_by , 
	Count(*) as Wins
From matchresults
Group by Won_by
Order By Wins Desc;

--Batting Analysis

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

--Highest Scorer of one match of the tournament
SELECT PlayerName, MAX(Runs) AS HighestRuns
FROM batting    
GROUP BY PlayerName
ORDER BY HighestRuns DESC

--Best Average
Select Playername ,
	Avg(Runs) as BestAverage
From Batting
Group by Playername
Order BY BestAverage Desc
Limit 10 ;