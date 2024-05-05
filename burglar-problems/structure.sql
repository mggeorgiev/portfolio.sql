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
                WHERE   name = N'burglars' )
    EXEC('CREATE SCHEMA [burglars]');
GO

-- Create a new table called '[items]' in schema '[burglars]'
-- Drop the table if it already exists
IF OBJECT_ID('[portfolio].[burglars].[items]', 'U') IS NOT NULL
DROP TABLE [portfolio].[burglars].[items];
GO
-- Create the table in the specified schema
CREATE TABLE [portfolio].[burglars].[items]
(
    [Id] INT Identity(1,1) -- Primary Key column
    ,[value] INT NOT NULL
    , [weight] INT NOT NULL
    ,CONSTRAINT PK_items PRIMARY KEY CLUSTERED (Id)
);
GO

-- Create a new table called '[conditions]' in schema '[burglars]'
-- Drop the table if it already exists
IF OBJECT_ID('[portfolio].[burglars].[conditions]', 'U') IS NOT NULL
DROP TABLE [portfolio].[burglars].[conditions];
GO
-- Create the table in the specified schema
CREATE TABLE [portfolio].[burglars].[conditions]
(
    [Id] INT Identity(1,1) -- Primary Key column
    ,[wtmax ] INT NOT NULL
    ,[itemsnumber] INT NOT NULL
    ,CONSTRAINT PK_conditions PRIMARY KEY CLUSTERED (Id)
);
GO

INSERT INTO [portfolio].[burglars].[items]([value], [weight]) VALUES (15, 2),
(100, 20),
(90, 20),
(60, 30),
(40, 40),
(15, 30),
(10, 60),
(1, 10);

INSERT INTO [portfolio].[burglars].[conditions]([wtmax], [itemsnumber]) VALUES (102, 8);