-- Create a new database called 'township'
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
                WHERE   name = N'township' )
    EXEC('CREATE SCHEMA [township]');
GO

-- Create a new table called '[items]' in schema '[township]'
-- Drop the table if it already exists
IF OBJECT_ID('[portfolio].[township].[items]', 'U') IS NOT NULL
DROP TABLE [portfolio].[township].[items];
GO
-- Create the table in the specified schema
CREATE TABLE [portfolio].[township].[items]
(
    [Id] INT Identity(1,1) -- Primary Key column
    , [name] VARCHAR(50) NOT NULL
    , [cost] INT NOT NULL
    , [productiontime] INT NOT NULL
    , [constraintId] INT NOT NULL
    ,CONSTRAINT PK_items PRIMARY KEY CLUSTERED (Id)
);
GO

-- Create a new table called '[constraints]' in schema '[township]'
-- Drop the table if it already exists
IF OBJECT_ID('[portfolio].[township].[constraints]', 'U') IS NOT NULL
DROP TABLE [portfolio].[township].[constraints];
GO
-- Create the table in the specified schema
CREATE TABLE [portfolio].[township].[constraints]
(
    [Id] INT Identity(1,1) -- Primary Key column
    , [name] VARCHAR(50) NOT NULL
    ,CONSTRAINT PK_constraints PRIMARY KEY CLUSTERED (Id)
);
GO

INSERT INTO [portfolio].[township].[constraints]([name]) VALUES ('field');
GO

INSERT INTO [portfolio].[township].[items]([name], [cost], [productiontime], [constraintId]) VALUES 
('wheat', 0, 2, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('corn', 1, 5, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('carrot', 2, 10, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('suggarcanr', 3, 20, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('cotton', 4, 30, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('strawberry', 5, 60, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('tomato', 6, 120, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('pine tree', 7, 180, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('potato', 8, 240, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('cacao', 9, 480, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('rubber tree', 15, 720, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('silk', 20, 900, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field'));
GO
