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

-- Create a new table called '[dependancies]' in schema '[township]'
-- Drop the table if it already exists
IF OBJECT_ID('[portfolio].[township].[dependancies]', 'U') IS NOT NULL
DROP TABLE [portfolio].[township].[dependancies];
GO
-- Create the table in the specified schema
CREATE TABLE [portfolio].[township].[dependancies]
(
    [itemId] INT NOT NULL
    , [parentId] INT NOT NULL
    , [items] INT NOT NULL
);
GO

INSERT INTO [portfolio].[township].[constraints]([name]) VALUES ('field');
INSERT INTO [portfolio].[township].[constraints]([name]) VALUES ('bakery');
INSERT INTO [portfolio].[township].[constraints]([name]) VALUES ('cowshed');
INSERT INTO [portfolio].[township].[constraints]([name]) VALUES ('chicken coop');
INSERT INTO [portfolio].[township].[constraints]([name]) VALUES ('sheep farm');
INSERT INTO [portfolio].[township].[constraints]([name]) VALUES ('sugar factory');
INSERT INTO [portfolio].[township].[constraints]([name]) VALUES ('dairy factory');
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

INSERT INTO [portfolio].[township].[items]([name], [cost], [productiontime], [constraintId]) VALUES 
('bread', 0, 5, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'bakery'))
,('cookies', 0, 15, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'bakery'))
,('bagel', 0, 29, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'bakery'))
,('pizza', 0, 114, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'bakery'))
,('potato bread', 0, 57, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'bakery'))
;
GO

INSERT INTO [portfolio].[township].[items]([name], [cost], [productiontime], [constraintId]) VALUES 
('eggs', 0, 60, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'chicken coop'))
,('milk', 0, 20, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'cowshed'))
;
GO

INSERT INTO [portfolio].[township].[items]([name], [cost], [productiontime], [constraintId]) VALUES 
('cream', 0, 11, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'dairy factory'))
,('cheese', 0, 27, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'dairy factory'))
,('butter', 0, 54, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'dairy factory'))
,('yogurt', 0, 54, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'dairy factory'))
;
GO

INSERT INTO [portfolio].[township].[items]([name], [cost], [productiontime], [constraintId]) VALUES 
('sugar', 0, 20, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'sugar factory')),
('syrup', 0, 15, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'sugar factory'));
GO

INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'bread'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'wheat'), 2);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'cookies'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'wheat'), 2);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'cookies'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'eggs'), 2);

INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'bagel'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'wheat'), 2);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'bagel'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'sugar'), 1);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'bagel'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'eggs'), 3);

INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'pizza'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'wheat'), 2);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'pizza'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'cheese'), 1);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'pizza'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'tomato'), 2);

INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'potato bread'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'wheat'), 2);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'potato bread'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'potato'), 2);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'potato bread'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'eggs'), 4);

INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'cream'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'milk'), 1);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'cheese'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'milk'), 2);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'butter'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'milk'), 3);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'yogurt'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'milk'), 4);