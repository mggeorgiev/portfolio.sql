-- Create a new database called 'portfolio'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] = N'portfolio'
)
CREATE DATABASE portfolio
GO

USE portfolio;
GO

IF NOT EXISTS ( SELECT  *
                FROM    sys.schemas
                WHERE   name = N'cantine' )
    EXEC('CREATE SCHEMA [cantine]');
GO

-- Create a new table called '[items]' in schema '[cantine]'
-- Drop the table if it already exists
IF OBJECT_ID('[cantine].[items]', 'U') IS NOT NULL
DROP TABLE [cantine].[items]
GO
-- Create the table in the specified schema
CREATE TABLE [cantine].[items]
(
    [Id] INT Identity(1,1), -- Primary Key column
    [name] NVARCHAR(50) NOT NULL,
    [unitPrice] NUMERIC(5,2),
    [type] NVARCHAR(50) NOT NULL
    -- Specify more columns here
);
GO

-- Create a new table called '[banknotes]' in schema '[cantine]'
-- Drop the table if it already exists
IF OBJECT_ID('[cantine].[banknotes]', 'U') IS NOT NULL
DROP TABLE [cantine].[banknotes]
GO
-- Create the table in the specified schema
CREATE TABLE [cantine].[banknotes]
(
    [Id] INT identity(1,1), -- Primary Key column
    [banknote] INT NOT NULL
);
GO

INSERT INTO [cantine].[banknotes] ([banknote]) VALUES (5);
INSERT INTO [cantine].[banknotes] ([banknote]) VALUES (10);
INSERT INTO [cantine].[banknotes] ([banknote]) VALUES (20);
INSERT INTO [cantine].[banknotes] ([banknote]) VALUES (50);
GO

-- Create a new table called '[consumption]' in schema '[cantine]'
-- Drop the table if it already exists
IF OBJECT_ID('[cantine].[consumption]', 'U') IS NOT NULL
DROP TABLE [cantine].[consumption]
GO
-- Create the table in the specified schema
CREATE TABLE [cantine].[consumption]
(
    [Id] INT Identity(1,1), -- Primary Key column
    [itemId] INT NOT NULL
);
GO

IF OBJECT_ID('[cantine].[canteen_status]', 'U') IS NOT NULL
DROP TABLE [cantine].[canteen_status]

CREATE TABLE [portfolio].[cantine].[canteen_status] (
	[Id] INT IDENTITY(1,1),
    [Date] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Time] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Product varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Amount int NULL,
	Price varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Saldo varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);

INSERT INTO portfolio.cantine.canteen_status ([Date],[Time],Product,Amount,Price,Saldo) VALUES
	 (N'21-11-2022',N'12:00:36',N'1 - MENU DU JOUR',1,N'7,43',N'33,20'),
	 (N'21-11-2022',N'12:00:36',N'113 - VIVA 1/4 FREE',1,N'0,00',N'33,20'),
	 (N'22-11-2022',N'09:07:00',N'311 - DM Sandwich Maison - 1.80€',1,N'1,80',N'31,40'),
	 (N'22-11-2022',N'09:07:18',N'311 - DM Sandwich Maison - 1.80€',1,N'1,80',N'29,60'),
	 (N'22-11-2022',N'10:35:40',N'301 - Dallmayr Sweet 1 - 0.70€',1,N'0,70',N'28,90'),
	 (N'22-11-2022',N'12:00:22',N'1 - MENU DU JOUR',1,N'7,43',N'21,47'),
	 (N'22-11-2022',N'12:00:22',N'107 - ROSPORT 1/4',1,N'0,53',N'20,94'),
	 (N'24-11-2022',N'12:05:22',N'1 - MENU DU JOUR',1,N'7,43',N'13,51'),
	 (N'24-11-2022',N'12:05:22',N'113 - VIVA 1/4 FREE',1,N'0,00',N'13,51'),
	 (N'24-11-2022',N'16:34:58',N'212 - DM - COCA COLA ZERO 33cl 0.62€',1,N'0,62',N'12,89');
INSERT INTO portfolio.cantine.canteen_status ([Date],[Time],Product,Amount,Price,Saldo) VALUES
	 (N'24-11-2022',N'16:35:08',N'209 - DM - MM ORANGE 33cl 0.86€',1,N'0,86',N'12,03'),
	 (N'28-11-2022',N'08:10:04',N'305 - Dallmayr Sweet 5 - 0.90€',1,N'0,90',N'11,13'),
	 (N'28-11-2022',N'08:09:46',N'312 - DM Traingles - 2.50€',1,N'2,50',N'8,63'),
	 (N'28-11-2022',N'12:31:44',N'1 - MENU DU JOUR',1,N'7,43',N'1,20'),
	 (N'28-11-2022',N'12:31:44',N'107 - ROSPORT 1/4',1,N'0,53',N'0,67'),
	 (N'28-11-2022',N'16:05:42',N'212 - DM - COCA COLA ZERO 33cl 0.62€',1,N'0,62',N'50,05'),
	 (N'28-11-2022',N'16:05:52',N'209 - DM - MM ORANGE 33cl 0.86€',1,N'0,86',N'49,19'),
	 (N'05-12-2022',N'11:56:24',N'1 - MENU DU JOUR',1,N'7,43',N'41,76'),
	 (N'05-12-2022',N'11:56:24',N'113 - VIVA 1/4 FREE',1,N'0,00',N'41,76'),
	 (N'05-12-2022',N'17:33:12',N'302 - Dallmayr Sweet 2 - 0.75€',1,N'0,75',N'41,01');
INSERT INTO portfolio.cantine.canteen_status ([Date],[Time],Product,Amount,Price,Saldo) VALUES
	 (N'05-12-2022',N'08:51:58',N'311 - DM Sandwich Maison - 1.80€',1,N'1,80',N'25,54'),
	 (N'06-12-2022',N'09:35:54',N'304 - Dallmayr Sweet 4 - 0.85€',1,N'0,85',N'40,16'),
	 (N'06-12-2022',N'11:59:54',N'6 - MENU ACTION',1,N'10,57',N'29,59'),
	 (N'06-12-2022',N'11:59:54',N'107 - ROSPORT 1/4',1,N'0,53',N'29,06'),
	 (N'06-12-2022',N'16:22:46',N'209 - DM - MM ORANGE 33cl 0.86€',1,N'0,86',N'28,20'),
	 (N'06-12-2022',N'16:22:58',N'209 - DM - MM ORANGE 33cl 0.86€',1,N'0,86',N'27,34'),
	 (N'06-12-2022',N'08:52:48',N'311 - DM Sandwich Maison - 1.80€',1,N'1,80',N'23,74'),
	 (N'08-12-2022',N'11:57:28',N'2 - MENU DU CHEF',1,N'9,86',N'13,88'),
	 (N'08-12-2022',N'11:57:28',N'113 - VIVA 1/4 FREE',1,N'0,00',N'13,88'),
	 (N'12-12-2022',N'12:38:32',N'311 - DM Sandwich Maison - 1.80€',1,N'1,80',N'12,08');
INSERT INTO portfolio.cantine.canteen_status ([Date],[Time],Product,Amount,Price,Saldo) VALUES
	 (N'12-12-2022',N'12:39:04',N'311 - DM Sandwich Maison - 1.80€',1,N'1,80',N'10,28'),
	 (N'12-12-2022',N'14:38:34',N'212 - DM - COCA COLA ZERO 33cl 0.62€',1,N'0,62',N'9,66'),
	 (N'12-12-2022',N'14:38:40',N'212 - DM - COCA COLA ZERO 33cl 0.62€',1,N'0,62',N'9,04'),
	 (N'13-12-2022',N'12:04:54',N'5 - MENU DE NOEL',1,N'12,93',N'-3,89'),
	 (N'13-12-2022',N'12:04:54',N'107 - ROSPORT 1/4',1,N'0,53',N'-4,42'),
	 (N'19-12-2022',N'12:02:04',N'1 - MENU DU JOUR',1,N'7,43',N'48,15'),
	 (N'19-12-2022',N'12:02:04',N'113 - VIVA 1/4 FREE',1,N'0,00',N'48,15'),
	 (N'19-12-2022',N'12:25:26',N'209 - DM - MM ORANGE 33cl 0.86€',1,N'0,86',N'47,29'),
	 (N'19-12-2022',N'16:30:04',N'303 - Dallmayr Sweet 3 - 0.80€',1,N'0,80',N'46,49'),
	 (N'19-12-2022',N'16:30:22',N'301 - Dallmayr Sweet 1 - 0.70€',1,N'0,70',N'45,79');
INSERT INTO portfolio.cantine.canteen_status ([Date],[Time],Product,Amount,Price,Saldo) VALUES
	 (N'02-01-2023',N'12:11:42',N'1 - MENU DU JOUR',1,N'7,43',N'38,36'),
	 (N'02-01-2023',N'12:11:42',N'107 - ROSPORT 1/4',1,N'0,53',N'37,83'),
	 (N'03-01-2023',N'12:07:16',N'1 - MENU DU JOUR',1,N'7,43',N'30,40'),
	 (N'03-01-2023',N'12:07:16',N'107 - ROSPORT 1/4',1,N'0,53',N'29,87'),
	 (N'04-01-2023',N'12:06:26',N'1 - MENU DU JOUR',1,N'7,43',N'22,44'),
	 (N'04-01-2023',N'12:06:26',N'113 - VIVA 1/4 FREE',1,N'0,00',N'22,44'),
	 (N'05-01-2023',N'08:38:12',N'311 - DM Sandwich Maison - 1.80€',1,N'1,80',N'20,64'),
	 (N'05-01-2023',N'11:56:54',N'1 - MENU DU JOUR',1,N'7,43',N'13,21'),
	 (N'05-01-2023',N'11:56:54',N'107 - ROSPORT 1/4',1,N'0,53',N'12,68'),
	 (N'06-01-2023',N'11:56:38',N'3 - MENU CLIN D''OEIL',1,N'11,53',N'1,15');
INSERT INTO portfolio.cantine.canteen_status ([Date],[Time],Product,Amount,Price,Saldo) VALUES
	 (N'06-01-2023',N'11:56:38',N'107 - ROSPORT 1/4',1,N'0,53',N'0,62'),
	 (N'09-01-2023',N'09:21:10',N'311 - DM Sandwich Maison - 1.80€',1,N'1,80',N'48,82'),
	 (N'09-01-2023',N'12:07:40',N'1 - MENU DU JOUR',1,N'7,43',N'41,39'),
	 (N'09-01-2023',N'12:07:40',N'113 - VIVA 1/4 FREE',1,N'0,00',N'41,39'),
	 (N'10-01-2023',N'11:56:56',N'3 - MENU CLIN D''OEIL',1,N'11,53',N'29,86'),
	 (N'10-01-2023',N'11:56:56',N'113 - VIVA 1/4 FREE',1,N'0,00',N'29,86'),
	 (N'11-01-2023',N'11:55:34',N'1 - MENU DU JOUR',1,N'7,43',N'22,43'),
	 (N'11-01-2023',N'11:55:34',N'113 - VIVA 1/4 FREE',1,N'0,00',N'22,43'),
	 (N'11-01-2023',N'15:24:20',N'212 - DM - COCA COLA ZERO 33cl 0.62€',1,N'0,62',N'21,81'),
	 (N'11-01-2023',N'15:24:34',N'212 - DM - COCA COLA ZERO 33cl 0.62€',1,N'0,62',N'21,19');
INSERT INTO portfolio.cantine.canteen_status ([Date],[Time],Product,Amount,Price,Saldo) VALUES
	 (N'12-01-2023',N'12:04:16',N'1 - MENU DU JOUR',1,N'7,43',N'13,76'),
	 (N'12-01-2023',N'12:04:16',N'113 - VIVA 1/4 FREE',1,N'0,00',N'13,76'),
	 (N'12-01-2023',N'15:06:18',N'209 - DM - MM ORANGE 33cl 0.86€',1,N'0,86',N'12,90'),
	 (N'13-01-2023',N'12:03:12',N'6 - MENU ACTION',1,N'10,57',N'2,33'),
	 (N'13-01-2023',N'12:03:12',N'106 - COCA ZERO 1/4',1,N'0,53',N'1,80'),
	 (N'16-01-2023',N'13:15:50',N'311 - DM Sandwich Maison - 1.80€',1,N'1,80',N'0,00'),
	 (N'19-01-2023',N'12:31:00',N'1 - MENU DU JOUR',1,N'7,43',N'12,57'),
	 (N'19-01-2023',N'12:31:00',N'113 - VIVA 1/4 FREE',1,N'0,00',N'12,57'),
	 (N'20-01-2023',N'13:17:58',N'212 - DM - COCA COLA ZERO 33cl 0.62€',1,N'0,62',N'11,95'),
	 (N'20-01-2023',N'13:18:10',N'209 - DM - MM ORANGE 33cl 0.86€',1,N'0,86',N'11,09');
INSERT INTO portfolio.cantine.canteen_status ([Date],[Time],Product,Amount,Price,Saldo) VALUES
	 (N'20-01-2023',N'12:06:52',N'311 - DM Sandwich Maison - 1.80€',1,N'1,80',N'9,29'),
	 (N'23-01-2023',N'12:06:52',N'1 - MENU DU JOUR',1,N'7,43',N'1,86'),
	 (N'23-01-2023',N'12:06:52',N'113 - VIVA 1/4 FREE',1,N'0,00',N'1,86'),
	 (N'24-01-2023',N'12:14:04',N'1 - MENU DU JOUR',1,N'7,43',N'44,43'),
	 (N'24-01-2023',N'12:14:04',N'113 - VIVA 1/4 FREE',1,N'0,00', N'44,43'),
	 (N'25-01-2023',N'12:00:46',N'1 - MENU DU JOUR',1,N'7,43',N'37,00'),
	 (N'25-01-2023',N'12:00:46',N'107 - ROSPORT 1/4',1,N'0,53', N'36,47'),
	 (N'25-01-2023',N'12:03:46',N'1 - MENU DU JOUR',1,N'7,43', N'29,04');

INSERT INTO portfolio.cantine.canteen_status ([Date],[Time],Product,Amount,Price,Saldo) VALUES
	 (N'25-01-2023',N'12:00:46',N'1 - MENU DU JOUR',1,N'7,43',N'37,00'),
	 (N'25-01-2023',N'12:03:46',N'1 - MENU DU JOUR',1,N'7,43', N'29,04');

SELECT * FROM [portfolio].[cantine].[canteen_status];

WITH Products_CTE ([ConsumptionDate], [ConsumptionTime], [Product], [Price]) AS
(
    SELECT 
		CONVERT(date, [Date], 103) as ConsumptionDate
		,CONVERT(time, [Time], 103) as ConsumptionTime
        ,[Product]
        ,CAST(REPLACE([Price],',','.') AS NUMERIC(5,2)) as Price
    FROM [portfolio].[cantine].[canteen_status]
) 
SELECT * FROM Products_CTE
WHERE ConsumptionDate > CONVERT(date, '16-01-2023', 103);
GO

INSERT INTO [portfolio].[cantine].[items] ([name], [unitPrice], [type]) VALUES ('1 - MENU DU JOUR', 7.43,'external');
INSERT INTO [portfolio].[cantine].[items] ([name], [unitPrice], [type]) VALUES ('Menu du chef', 9.86,'external');
INSERT INTO [portfolio].[cantine].[items] ([name], [unitPrice], [type]) VALUES ('3 - MENU CLIN D''OEIL', 11.53,'external');
INSERT INTO [portfolio].[cantine].[items] ([name], [unitPrice], [type]) VALUES ('Menu gourmet', 15.73,'external');
INSERT INTO [portfolio].[cantine].[items] ([name], [unitPrice], [type]) VALUES ('5 - MENU DE NOEL', 12.93,'external');
INSERT INTO [portfolio].[cantine].[items] ([name], [unitPrice], [type]) VALUES ('6 - MENU ACTION', 10.57,'external');
INSERT INTO [portfolio].[cantine].[items] ([name], [unitPrice], [type]) VALUES ('Suplement', 1.09,'external');
INSERT INTO [portfolio].[cantine].[items] ([name], [unitPrice], [type]) VALUES ('Viennoiserie', 0.92,'external');
INSERT INTO [portfolio].[cantine].[items] ([name], [unitPrice], [type]) VALUES ('311 - DM Sandwich Maison', 1.8,'external');
INSERT INTO [portfolio].[cantine].[items] ([name], [unitPrice], [type]) VALUES ('212 - DM - COCA COLA ZERO 33cl', 0.62,'external');
INSERT INTO [portfolio].[cantine].[items] ([name], [unitPrice], [type]) VALUES ('209 - DM - MM ORANGE 33cl', 0.62,'external');
INSERT INTO [portfolio].[cantine].[items] ([name], [unitPrice], [type]) VALUES ('209 - DM - MM ORANGE 33cl', 0.62,'external');
GO


INSERT INTO [portfolio].[cantine].[items] ([name], [unitPrice], [type])
SELECT 
    DISTINCT [Product], CAST(REPLACE([Price],',','.') AS NUMERIC(5,2)), 'external'
FROM [portfolio].[cantine].[canteen_status]
WHERE [Product] NOT IN (SELECT [name] FROM [portfolio].[cantine].[items])
ORDER BY [Product];

-- Create a new table called '[consumption]' in schema '[cantine]'
-- Drop the table if it already exists
IF OBJECT_ID('[portfolio].[cantine].[consumption_log]', 'U') IS NOT NULL
DROP TABLE [portfolio].[cantine].[consumption_log]
GO
-- Create the table in the specified schema
CREATE TABLE [portfolio].[cantine].[consumption_log]
(
    [Id] INT Identity(1,1), -- Primary Key column
	[ConsumptionDate] DATE,
	[ConsumptionTime] TIME,
	[Product] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL, 
	[Price] NUMERIC(5,2)
);
GO

INSERT INTO [portfolio].[cantine].[consumption_log] ([ConsumptionDate], [ConsumptionTime], [Product], [Price] )
	SELECT
		CONVERT(date, [Date], 103) as ConsumptionDate
		,CONVERT(time, [Time], 103) as ConsumptionTime
        ,[Product]
        ,CAST(REPLACE([Price],',','.') AS NUMERIC(5,2)) as Price
    FROM [portfolio].[cantine].[canteen_status];
GO


-- Create a new table called '[card_charges]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[cantine].[card_charges]', 'U') IS NOT NULL
DROP TABLE [cantine].[card_charges]
GO
-- Create the table in the specified schema
CREATE TABLE [cantine].[card_charges]
(
	[Id] INT Identity(1,1), -- Primary Key column
	[Charge_date] DATE,
	[Amount] NUMERIC(5,2)
	-- Specify more columns here
);
GO

INSERT INTO [portfolio].[cantine].[card_charges] ([Charge_date],[Amount]) VALUES
	 (CONVERT(date, '21-11-2022', 103), 33.2),
	 (CONVERT(date, '28-11-2022', 103), 50.0),
	 (CONVERT(date, '19-12-2022', 103), 50.0),
	 (CONVERT(date, '09-01-2023', 103), 50.0),
	 (CONVERT(date, '19-01-2023', 103), 20.0),
	 (CONVERT(date, '24-01-2023', 103), 50.0);
GO

SELECT * FROM [portfolio].[cantine].[card_charges];
GO