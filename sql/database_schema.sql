CREATE DATABASE ipl2022;

USE ipl2022;

CREATE TABLE Batting (
    MatchID INT,
    InningsNo INT,
    Team TEXT,
    PlayerName TEXT,
    MatchPlayingOrder INT,
    BowlerName TEXT,
    OutDesc TEXT,
    Runs INT,
    Balls INT,
    DotBalls INT,
    Ones INT,
    Twos INT,
    Threes INT,
    Fours INT,
    Sixes INT,
    StrikeRate DOUBLE,
    WicketNo TEXT,
    AgainstFast INT,
    AgainstSpin INT
);