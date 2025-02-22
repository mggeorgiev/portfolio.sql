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

INSERT INTO [portfolio].[township].[constraints]([name]) VALUES ('none');
INSERT INTO [portfolio].[township].[constraints]([name]) VALUES ('field');
INSERT INTO [portfolio].[township].[constraints]([name]) VALUES ('bakery');
INSERT INTO [portfolio].[township].[constraints]([name]) VALUES ('cowshed');
INSERT INTO [portfolio].[township].[constraints]([name]) VALUES ('chicken coop');
INSERT INTO [portfolio].[township].[constraints]([name]) VALUES ('sheep farm');
INSERT INTO [portfolio].[township].[constraints]([name]) VALUES ('sugar factory');
INSERT INTO [portfolio].[township].[constraints]([name]) VALUES ('dairy factory');
INSERT INTO [portfolio].[township].[constraints]([name]) VALUES ('feed mill');

GO

INSERT INTO [portfolio].[township].[items]([name], [productiontime], [constraintId]) VALUES 
('gold', 2, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'none'));
GO

/*Crops*/
INSERT INTO [portfolio].[township].[items]([name], [productiontime], [constraintId]) VALUES 
('wheat', 2, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('corn', 5, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('carrot', 10, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('sugarcane', 20, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('cotton', 30, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('strawberry', 60, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('tomato', 120, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('pine tree', 180, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('potato', 240, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('cacao', 480, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('rubber tree', 720, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field')),
('silk', 900, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'field'));
GO

/*Bakery*/
INSERT INTO [portfolio].[township].[items]([name], [productiontime], [constraintId]) VALUES 
('bread', 5, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'bakery'))
,('cookies', 15, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'bakery'))
,('bagel', 29, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'bakery'))
,('pizza', 114, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'bakery'))
,('potato bread', 57, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'bakery'))
;
GO


INSERT INTO [portfolio].[township].[items]([name], [productiontime], [constraintId]) VALUES 
('eggs', 60, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'chicken coop'))
,('milk', 20, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'cowshed'))
;
GO

INSERT INTO [portfolio].[township].[items]([name], [productiontime], [constraintId]) VALUES 
('cow feed', 4, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'feed mill'))
,('chicken feed', 8, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'feed mill'))
,('sheep feed', 16, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'feed mill'))
,('bee feed', 24, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'feed mill'))
;
GO

/*Dairy Factory*/
INSERT INTO [portfolio].[township].[items]([name], [productiontime], [constraintId]) VALUES 
('cream', 11, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'dairy factory'))
,('cheese', 27, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'dairy factory'))
,('butter', 54, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'dairy factory'))
,('yogurt', 54, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'dairy factory'))
;
GO

/*Sugar Factory*/
INSERT INTO [portfolio].[township].[items]([name], [productiontime], [constraintId]) VALUES 
('sugar', 20, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'sugar factory'))
,('syrup', 40, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'sugar factory'))
,('caramel', 90, (SELECT Id FROM [portfolio].[township].[constraints] WHERE [name] = 'sugar factory'))
;
GO

/*Crops*/
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'wheat'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'gold'), 0);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'corn'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'gold'), 1);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'carrot'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'gold'), 2);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'sugarcane'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'gold'), 3);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'cotton'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'gold'), 4);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'strawberry'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'gold'), 5);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'tomato'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'gold'), 6);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'pine tree'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'gold'), 7);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'potato'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'gold'), 8);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'cacao'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'gold'), 9);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'rubber tree'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'gold'), 15);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'silk'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'gold'), 20);

/*Bakery*/
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

/*Dairy Factory*/
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'cream'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'milk'), 1);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'cheese'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'milk'), 2);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'butter'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'milk'), 3);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'yogurt'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'milk'), 4);


INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'milk'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'cow feed'), 1);

/*Feed Mill*/
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'cow feed'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'wheat'), 2);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'cow feed'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'corn'), 1);

INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'chicken feed'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'wheat'), 2);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'chicken feed'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'carrot'), 1);

INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'sheep feed'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'corn'), 2);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'sheep feed'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'carrot'), 2);

INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'bee feed'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'wheat'), 3);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'bee feed'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'sugarcane'), 1);

/*Farming*/
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'eggs'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'chicken feed'), 1);

/*Sugar Factory*/
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'sugar'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'sugarcane'), 1);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'syrup'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'sugarcane'), 2);
INSERT INTO [portfolio].[township].[dependancies]([itemId], [parentId], [items]) VALUES ((SELECT Id FROM [portfolio].[township].[items] WHERE name = 'caramel'), (SELECT Id FROM [portfolio].[township].[items] WHERE name = 'sugarcane'), 3);
