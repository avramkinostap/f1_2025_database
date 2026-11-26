-- Formula 1 Season 2025 Database | Microsoft SQL Server (T-SQL)
-- Author: Ostap Avramkin

USE F1_2025;
GO

-- Teams (10)
INSERT INTO teams (teamid, teamname, country, principal) VALUES
    (1,'McLaren','United Kingdom','Andrea Stella'),
    (2,'Ferrari','Italy','Frederic Vasseur'),
    (3,'Red Bull Racing','Austria','Laurent Mekies'),
    (4,'Mercedes','Germany','Toto Wolff'),
    (5,'Aston Martin','United Kingdom','Andy Cowell'),
    (6,'Alpine','France','Oliver Oakes'),
    (7,'Haas','United States','Ayao Komatsu'),
    (8,'Racing Bulls','Italy','Laurent Mekies'),
    (9,'Williams','United Kingdom','James Vowles'),
    (10,'Kick Sauber','Switzerland','Mattia Binotto');

-- Drivers (20)
INSERT INTO drivers (driverid, firstname, lastname, nationality, drivernumber, teamid) VALUES
    (1,'Lando','Norris','British',4,1),
    (2,'Oscar','Piastri','Australian',81,1),
    (3,'Lewis','Hamilton','British',44,2),
    (4,'Charles','Leclerc','Monegasque',16,2),
    (5,'Max','Verstappen','Dutch',1,3),
    (6,'Yuki','Tsunoda','Japanese',22,3),
    (7,'George','Russell','British',63,4),
    (8,'Kimi','Antonelli','Italian',12,4),
    (9,'Fernando','Alonso','Spanish',14,5),
    (10,'Lance','Stroll','Canadian',18,5),
    (11,'Pierre','Gasly','French',10,6),
    (12,'Franco','Colapinto','Argentine',43,6),
    (13,'Oliver','Bearman','British',87,7),
    (14,'Esteban','Ocon','French',31,7),
    (15,'Isack','Hadjar','French',6,8),
    (16,'Liam','Lawson','Kiwi',30,8),
    (17,'Alexander','Albon','Thai',23,9),
    (18,'Carlos','Sainz','Spanish',55,9),
    (19,'Nico','Hulkenberg','German',27,10),
    (20,'Gabriel','Bortoleto','Brazilian',5,10);

-- Races (24) - full 2025 calendar
INSERT INTO races (raceid, racename, country, totallaps) VALUES
    (1,'Australian Grand Prix','Australia',58),
    (2,'Chinese Grand Prix','China',56),
    (3,'Japanese Grand Prix','Japan',53),
    (4,'Bahrain Grand Prix','Bahrain',57),
    (5,'Saudi Arabian Grand Prix','Saudi Arabia',50),
    (6,'Miami Grand Prix','United States',57),
    (7,'Emilia Romagna Grand Prix','Italy',63),
    (8,'Monaco Grand Prix','Monaco',78),
    (9,'Spanish Grand Prix','Spain',66),
    (10,'Canadian Grand Prix','Canada',70),
    (11,'Austrian Grand Prix','Austria',71),
    (12,'British Grand Prix','United Kingdom',52),
    (13,'Belgian Grand Prix','Belgium',44),
    (14,'Hungarian Grand Prix','Hungary',70),
    (15,'Dutch Grand Prix','Netherlands',72),
    (16,'Italian Grand Prix','Italy',53),
    (17,'Azerbaijan Grand Prix','Azerbaijan',51),
    (18,'Singapore Grand Prix','Singapore',62),
    (19,'United States Grand Prix','United States',56),
    (20,'Mexico City Grand Prix','Mexico',71),
    (21,N'São Paulo Grand Prix','Brazil',71),
    (22,'Las Vegas Grand Prix','United States',50),
    (23,'Qatar Grand Prix','Qatar',57),
    (24,'Abu Dhabi Grand Prix','UAE',58);

-- Results (240) - top 10 of every Grand Prix (points-scoring positions)

-- 1. Australian Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (1,1,1,1,'1:42:06.304',25),
    (2,1,5,2,'+0.895',18),
    (3,1,7,3,'+8.481',15),
    (4,1,8,4,'+10.135',12),
    (5,1,17,5,'+12.773',10),
    (6,1,10,6,'+17.413',8),
    (7,1,19,7,'+18.423',6),
    (8,1,4,8,'+19.826',4),
    (9,1,2,9,'+20.448',2),
    (10,1,3,10,'+22.473',1);

-- 2. Chinese Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (11,2,2,1,'1:30:55.026',25),
    (12,2,1,2,'+9.748',18),
    (13,2,7,3,'+11.097',15),
    (14,2,5,4,'+16.656',12),
    (15,2,14,5,'+49.969',10),
    (16,2,8,6,'+53.748',8),
    (17,2,17,7,'+56.321',6),
    (18,2,13,8,'+61.303',4),
    (19,2,10,9,'+70.204',2),
    (20,2,18,10,'+76.387',1);

-- 3. Japanese Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (21,3,5,1,'1:22:06.983',25),
    (22,3,1,2,'+1.423',18),
    (23,3,2,3,'+2.129',15),
    (24,3,4,4,'+16.097',12),
    (25,3,7,5,'+17.362',10),
    (26,3,8,6,'+18.671',8),
    (27,3,3,7,'+29.182',6),
    (28,3,15,8,'+37.134',4),
    (29,3,17,9,'+40.367',2),
    (30,3,13,10,'+54.529',1);

-- 4. Bahrain Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (31,4,2,1,'1:35:39.435',25),
    (32,4,7,2,'+15.499',18),
    (33,4,1,3,'+16.273',15),
    (34,4,4,4,'+19.679',12),
    (35,4,3,5,'+27.993',10),
    (36,4,5,6,'+34.395',8),
    (37,4,11,7,'+36.002',6),
    (38,4,14,8,'+44.244',4),
    (39,4,6,9,'+45.061',2),
    (40,4,13,10,'+47.594',1);

-- 5. Saudi Arabian Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (41,5,2,1,'1:21:06.758',25),
    (42,5,5,2,'+2.843',18),
    (43,5,4,3,'+8.103',15),
    (44,5,1,4,'+9.196',12),
    (45,5,7,5,'+27.236',10),
    (46,5,8,6,'+34.688',8),
    (47,5,3,7,'+39.073',6),
    (48,5,18,8,'+64.629',4),
    (49,5,17,9,'+66.515',2),
    (50,5,15,10,'+67.091',1);

-- 6. Miami Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (51,6,2,1,'1:28:51.587',25),
    (52,6,1,2,'+4.630',18),
    (53,6,7,3,'+37.644',15),
    (54,6,5,4,'+39.956',12),
    (55,6,17,5,'+48.067',10),
    (56,6,8,6,'+55.502',8),
    (57,6,4,7,'+57.036',6),
    (58,6,3,8,'+60.186',4),
    (59,6,18,9,'+60.577',2),
    (60,6,6,10,'+74.434',1);

-- 7. Emilia Romagna Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (61,7,5,1,'1:31:33.199',25),
    (62,7,1,2,'+6.109',18),
    (63,7,2,3,'+12.956',15),
    (64,7,3,4,'+14.356',12),
    (65,7,17,5,'+17.945',10),
    (66,7,4,6,'+20.774',8),
    (67,7,7,7,'+22.034',6),
    (68,7,18,8,'+22.898',4),
    (69,7,15,9,'+23.586',2),
    (70,7,6,10,'+26.446',1);

-- 8. Monaco Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (71,8,1,1,'1:40:33.843',25),
    (72,8,4,2,'+3.131',18),
    (73,8,2,3,'+3.658',15),
    (74,8,5,4,'+20.572',12),
    (75,8,3,5,'+51.387',10),
    (76,8,15,6,'+1 LAP',8),
    (77,8,14,7,'+1 LAP',6),
    (78,8,16,8,'+1 LAP',4),
    (79,8,17,9,'+2 LAPS',2),
    (80,8,18,10,'+2 LAPS',1);

-- 9. Spanish Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (81,9,2,1,'1:32:57.375',25),
    (82,9,1,2,'+2.471',18),
    (83,9,4,3,'+10.455',15),
    (84,9,7,4,'+11.359',12),
    (85,9,19,5,'+13.648',10),
    (86,9,3,6,'+15.508',8),
    (87,9,15,7,'+16.021',6),
    (88,9,11,8,'+17.882',4),
    (89,9,9,9,'+21.564',2),
    (90,9,5,10,'+21.826',1);

-- 10. Canadian Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (91,10,7,1,'1:31:52.688',25),
    (92,10,5,2,'+0.228',18),
    (93,10,8,3,'+1.014',15),
    (94,10,2,4,'+2.109',12),
    (95,10,4,5,'+3.442',10),
    (96,10,3,6,'+10.713',8),
    (97,10,9,7,'+10.972',6),
    (98,10,19,8,'+15.364',4),
    (99,10,14,9,'+1 LAP',2),
    (100,10,18,10,'+1 LAP',1);

-- 11. Austrian Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (101,11,1,1,'1:23:47.693',25),
    (102,11,2,2,'+2.695',18),
    (103,11,4,3,'+19.820',15),
    (104,11,3,4,'+29.020',12),
    (105,11,7,5,'+62.396',10),
    (106,11,16,6,'+67.754',8),
    (107,11,9,7,'+1 LAP',6),
    (108,11,20,8,'+1 LAP',4),
    (109,11,19,9,'+1 LAP',2),
    (110,11,14,10,'+1 LAP',1);

-- 12. British Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (111,12,1,1,'1:37:15.735',25),
    (112,12,2,2,'+6.812',18),
    (113,12,19,3,'+34.742',15),
    (114,12,3,4,'+39.812',12),
    (115,12,5,5,'+56.781',10),
    (116,12,11,6,'+59.857',8),
    (117,12,10,7,'+60.603',6),
    (118,12,17,8,'+64.135',4),
    (119,12,9,9,'+65.858',2),
    (120,12,7,10,'+70.674',1);

-- 13. Belgian Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (121,13,2,1,'1:25:22.601',25),
    (122,13,1,2,'+3.415',18),
    (123,13,4,3,'+20.185',15),
    (124,13,5,4,'+21.731',12),
    (125,13,7,5,'+34.863',10),
    (126,13,17,6,'+39.926',8),
    (127,13,3,7,'+40.679',6),
    (128,13,16,8,'+52.033',4),
    (129,13,20,9,'+56.434',2),
    (130,13,11,10,'+72.714',1);

-- 14. Hungarian Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (131,14,1,1,'1:35:21.231',25),
    (132,14,2,2,'+0.698',18),
    (133,14,7,3,'+21.916',15),
    (134,14,4,4,'+42.560',12),
    (135,14,9,5,'+59.040',10),
    (136,14,20,6,'+66.169',8),
    (137,14,10,7,'+68.174',6),
    (138,14,16,8,'+69.451',4),
    (139,14,5,9,'+72.645',2),
    (140,14,8,10,'+1 LAP',1);

-- 15. Dutch Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (141,15,2,1,'1:38:29.849',25),
    (142,15,5,2,'+1.271',18),
    (143,15,15,3,'+3.233',15),
    (144,15,7,4,'+5.654',12),
    (145,15,17,5,'+6.327',10),
    (146,15,13,6,'+9.044',8),
    (147,15,10,7,'+9.497',6),
    (148,15,9,8,'+11.709',4),
    (149,15,6,9,'+13.597',2),
    (150,15,14,10,'+14.063',1);

-- 16. Italian Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (151,16,5,1,'1:13:24.325',25),
    (152,16,1,2,'+19.207',18),
    (153,16,2,3,'+21.351',15),
    (154,16,4,4,'+25.624',12),
    (155,16,7,5,'+32.881',10),
    (156,16,3,6,'+37.449',8),
    (157,16,17,7,'+50.537',6),
    (158,16,20,8,'+58.484',4),
    (159,16,8,9,'+59.762',2),
    (160,16,15,10,'+63.891',1);

-- 17. Azerbaijan Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (161,17,5,1,'1:33:26.408',25),
    (162,17,7,2,'+14.609',18),
    (163,17,18,3,'+19.199',15),
    (164,17,8,4,'+21.760',12),
    (165,17,16,5,'+33.290',10),
    (166,17,6,6,'+33.808',8),
    (167,17,1,7,'+34.227',6),
    (168,17,3,8,'+36.310',4),
    (169,17,4,9,'+36.774',2),
    (170,17,15,10,'+38.982',1);

-- 18. Singapore Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (171,18,7,1,'1:40:22.367',25),
    (172,18,5,2,'+5.430',18),
    (173,18,1,3,'+6.066',15),
    (174,18,2,4,'+8.146',12),
    (175,18,8,5,'+33.681',10),
    (176,18,4,6,'+45.996',8),
    (177,18,9,7,'+80.667',6),
    (178,18,3,8,'+85.251',4),
    (179,18,13,9,'+93.527',2),
    (180,18,18,10,'+1 LAP',1);

-- 19. United States Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (181,19,5,1,'1:34:00.161',25),
    (182,19,1,2,'+7.959',18),
    (183,19,4,3,'+15.373',15),
    (184,19,3,4,'+28.536',12),
    (185,19,2,5,'+29.678',10),
    (186,19,7,6,'+33.456',8),
    (187,19,6,7,'+52.714',6),
    (188,19,19,8,'+57.249',4),
    (189,19,13,9,'+64.721',2),
    (190,19,9,10,'+70.001',1);

-- 20. Mexico City Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (191,20,1,1,'1:37:58.574',25),
    (192,20,4,2,'+30.324',18),
    (193,20,5,3,'+31.049',15),
    (194,20,13,4,'+40.955',12),
    (195,20,2,5,'+42.065',10),
    (196,20,8,6,'+47.837',8),
    (197,20,7,7,'+50.287',6),
    (198,20,3,8,'+56.446',4),
    (199,20,14,9,'+75.464',2),
    (200,20,20,10,'+76.863',1);

-- 21. São Paulo Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (201,21,1,1,'1:32:01.596',25),
    (202,21,8,2,'+10.388',18),
    (203,21,5,3,'+10.750',15),
    (204,21,7,4,'+15.267',12),
    (205,21,2,5,'+15.749',10),
    (206,21,13,6,'+29.630',8),
    (207,21,16,7,'+52.642',6),
    (208,21,15,8,'+52.873',4),
    (209,21,19,9,'+53.324',2),
    (210,21,11,10,'+53.914',1);

-- 22. Las Vegas Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (211,22,5,1,'1:21:08.429',25),
    (212,22,7,2,'+23.546',18),
    (213,22,8,3,'+30.488',15),
    (214,22,4,4,'+30.678',12),
    (215,22,18,5,'+34.924',10),
    (216,22,15,6,'+45.257',8),
    (217,22,19,7,'+51.134',6),
    (218,22,3,8,'+59.369',4),
    (219,22,14,9,'+60.635',2),
    (220,22,13,10,'+70.549',1);

-- 23. Qatar Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (221,23,5,1,'1:24:38.241',25),
    (222,23,2,2,'+7.995',18),
    (223,23,18,3,'+22.665',15),
    (224,23,1,4,'+23.315',12),
    (225,23,8,5,'+28.317',10),
    (226,23,7,6,'+48.599',8),
    (227,23,9,7,'+54.045',6),
    (228,23,4,8,'+56.785',4),
    (229,23,16,9,'+60.073',2),
    (230,23,6,10,'+61.770',1);

-- 24. Abu Dhabi Grand Prix
INSERT INTO results (resultid, raceid, driverid, position, racetime, points) VALUES
    (231,24,5,1,'1:26:07.469',25),
    (232,24,2,2,'+12.594',18),
    (233,24,1,3,'+16.572',15),
    (234,24,4,4,'+23.279',12),
    (235,24,7,5,'+48.563',10),
    (236,24,9,6,'+67.562',8),
    (237,24,14,7,'+69.876',6),
    (238,24,3,8,'+72.670',4),
    (239,24,19,9,'+79.014',2),
    (240,24,10,10,'+79.523',1);
GO
