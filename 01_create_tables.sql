-- Formula 1 Season 2025 Database | Microsoft SQL Server (T-SQL)
-- Author: Ostap Avramkin

IF DB_ID('F1_2025') IS NULL
    CREATE DATABASE F1_2025;
GO
USE F1_2025;
GO

CREATE TABLE teams (
    teamid      INT          PRIMARY KEY,
    teamname    VARCHAR(50)  NOT NULL,
    country     VARCHAR(50),
    principal   VARCHAR(50)
);

CREATE TABLE drivers (
    driverid      INT          PRIMARY KEY,
    firstname     VARCHAR(50)  NOT NULL,
    lastname      VARCHAR(50)  NOT NULL,
    nationality   VARCHAR(50),
    drivernumber  INT,
    teamid        INT          FOREIGN KEY REFERENCES teams(teamid)
);

CREATE TABLE races (
    raceid      INT            PRIMARY KEY,
    racename    NVARCHAR(100)  NOT NULL,
    country     VARCHAR(50),
    totallaps   INT
);

CREATE TABLE results (
    resultid    INT          PRIMARY KEY,
    raceid      INT          FOREIGN KEY REFERENCES races(raceid),
    driverid    INT          FOREIGN KEY REFERENCES drivers(driverid),
    position    INT,
    racetime    VARCHAR(20),   -- winner: total race time, others: gap to the leader
    points      INT
);
GO
