-- =====================================================
-- IPL 2022 Data Cleaning Queries
-- =====================================================

USE ipl2022;

-- 1. Check total records
SELECT COUNT(*) AS TotalRecords
FROM Batting;

-- 2. Check NULL player names
SELECT *
FROM Batting
WHERE PlayerName IS NULL;

-- 3. Check NULL team names
SELECT *
FROM Batting
WHERE Team IS NULL;

-- 4. Check missing strike rates
SELECT *
FROM Batting
WHERE StrikeRate IS NULL;

-- 5. Find duplicate rows
SELECT MatchID,
       PlayerName,
       COUNT(*) AS DuplicateCount
FROM Batting
GROUP BY MatchID, PlayerName
HAVING COUNT(*) > 1;

-- 6. Verify runs are non-negative
SELECT *
FROM Batting
WHERE Runs < 0;

-- 7. Verify balls are non-negative
SELECT *
FROM Batting
WHERE Balls < 0;

-- 8. Check unusual strike rates
SELECT *
FROM Batting
WHERE StrikeRate > 300;

-- 9. Standardize team names (example)
UPDATE Batting
SET Team = 'RCB'
WHERE Team = 'Royal Challengers Bangalore';

-- 10. Check distinct teams
SELECT DISTINCT Team
FROM Batting;

-- 11. Check distinct players
SELECT COUNT(DISTINCT PlayerName) AS TotalPlayers
FROM Batting;

-- 12. Verify innings values
SELECT DISTINCT InningsNo
FROM Batting;

-- 13. Find players with zero balls faced
SELECT *
FROM Batting
WHERE Balls = 0;

-- 14. Check batting order values
SELECT *
FROM Batting
WHERE MatchPlayingOrder <= 0;

-- 15. Validate boundary counts
SELECT *
FROM Batting
WHERE Fours < 0 OR Sixes < 0;