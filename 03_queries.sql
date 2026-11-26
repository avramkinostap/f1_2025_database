-- Formula 1 Season 2025 Database | Microsoft SQL Server (T-SQL)
-- Author: Ostap Avramkin

USE F1_2025;
GO

-- 1. Number of rows in every table
SELECT 'Teams' AS TableName, COUNT(*) AS Row_Count FROM teams
UNION ALL SELECT 'Drivers', COUNT(*) FROM drivers
UNION ALL SELECT 'Races',   COUNT(*) FROM races
UNION ALL SELECT 'Results', COUNT(*) FROM results;

-- 2. Results of a single race (raceid = 6 -> Miami Grand Prix)
SELECT TOP 10
    r.racename,
    res.position,
    d.firstname + ' ' + d.lastname AS driver,
    t.teamname,
    res.points
FROM results res
JOIN races   r ON res.raceid   = r.raceid
JOIN drivers d ON res.driverid = d.driverid
JOIN teams   t ON d.teamid     = t.teamid
WHERE r.raceid = 6
ORDER BY res.position;

-- 3. Drivers' standings (LEFT JOIN + ISNULL keeps drivers with 0 points)
SELECT
    d.firstname + ' ' + d.lastname AS driver,
    t.teamname,
    ISNULL(SUM(res.points), 0) AS total_points
FROM drivers d
JOIN teams t ON d.teamid = t.teamid
LEFT JOIN results res ON d.driverid = res.driverid
GROUP BY d.firstname, d.lastname, t.teamname
ORDER BY total_points DESC;

-- 4. Constructors' (teams) standings
SELECT
    t.teamname,
    SUM(res.points) AS total_points
FROM results res
JOIN drivers d ON res.driverid = d.driverid
JOIN teams   t ON d.teamid     = t.teamid
GROUP BY t.teamname
ORDER BY total_points DESC;
