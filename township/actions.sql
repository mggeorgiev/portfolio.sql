USE portfolio;
GO

CREATE OR ALTER VIEW [township].[V_ITEMS] AS
SELECT TOP (1000) 
    [portfolio].[township].[items].[Id],
    [portfolio].[township].[items].[name] as [itemName],
    [portfolio].[township].[constraints].[name] AS [constraintName],
    [portfolio].[township].[items].[productiontime] as [productionTime],
    [portfolio].[township].[dependancies].[parentId] AS [parentId],
    [portfolio].[township].[dependancies].[items] AS [numberOfItems]
  FROM [portfolio].[township].[items]
  JOIN [portfolio].[township].[constraints] ON [portfolio].[township].[items].[constraintId] = [portfolio].[township].[constraints].[Id]
  LEFT JOIN [portfolio].[township].[dependancies] ON [portfolio].[township].[items].[Id] = [portfolio].[township].[dependancies].[itemId]
  WHERE [portfolio].[township].[dependancies].[parentId] IS NULL

UNION ALL

SELECT TOP (1000) 
    [portfolio].[township].[items].[Id],
    [portfolio].[township].[items].[name] as [itemName],
    [portfolio].[township].[constraints].[name] AS [constraintName],
    [portfolio].[township].[items].[productiontime] as [productionTime],
    [portfolio].[township].[dependancies].[parentId] AS [parentId],
    [portfolio].[township].[dependancies].[items] AS [numberOfItems]
  FROM [portfolio].[township].[items]
  JOIN [portfolio].[township].[constraints] ON [portfolio].[township].[items].[constraintId] = [portfolio].[township].[constraints].[Id]
  LEFT JOIN [portfolio].[township].[dependancies] ON [portfolio].[township].[items].[Id] = [portfolio].[township].[dependancies].[itemId]
  WHERE [portfolio].[township].[dependancies].[parentId] IS NOT NULL
GO

SELECT * FROM [portfolio].[township].[V_ITEMS];
GO

CREATE OR ALTER VIEW [township].[V_CONSTRAINTS] AS
SELECT TOP (1000) 
    [portfolio].[township].[constraints].[Id] as constriantId
    , [portfolio].[township].[constraints].[name] as constraintName
    ,[portfolio].[township].[items].[Id]
    ,[portfolio].[township].[items].[name] as itemMame
    ,[portfolio].[township].[items].[productiontime] as productionTime
  FROM [portfolio].[township].[constraints]
  JOIN [portfolio].[township].[items] on [portfolio].[township].[constraints].[Id] = [portfolio].[township].[items].[constraintId]
  ORDER BY constriantId, productionTime, itemMame;
GO

SELECT * FROM [township].[V_CONSTRAINTS];
GO

CREATE OR ALTER VIEW [township].[V_CONSTRAINTS_DEPENDANCIES] AS
SELECT TOP (1000) 
    [portfolio].[township].[items].[Id],
    [portfolio].[township].[items].[name] as [itemName],
    [portfolio].[township].[constraints].[name] AS [constraintName],
    [portfolio].[township].[items].[productiontime] as [productionTime],
    parentDetails.name AS [parentName],
    [portfolio].[township].[dependancies].[items] AS [numberOfItems]
  FROM [portfolio].[township].[items]
  JOIN [portfolio].[township].[constraints] ON [portfolio].[township].[items].[constraintId] = [portfolio].[township].[constraints].[Id]
  LEFT JOIN [portfolio].[township].[dependancies] ON [portfolio].[township].[items].[Id] = [portfolio].[township].[dependancies].[itemId]
  JOIN (SELECT * FROM [portfolio].[township].[items]) as parentDetails ON [portfolio].[township].[dependancies].[parentId] = parentDetails.Id
  WHERE [portfolio].[township].[dependancies].[parentId] IS NULL

UNION ALL

SELECT TOP (1000) 
    [portfolio].[township].[items].[Id],
    [portfolio].[township].[items].[name] as [itemName],
    [portfolio].[township].[constraints].[name] AS [constraintName],
    [portfolio].[township].[items].[productiontime] as [productionTime],
    parentDetails.name AS [parentName],
    [portfolio].[township].[dependancies].[items] AS [numberOfItems]
  FROM [portfolio].[township].[items]
  JOIN [portfolio].[township].[constraints] ON [portfolio].[township].[items].[constraintId] = [portfolio].[township].[constraints].[Id]
  LEFT JOIN [portfolio].[township].[dependancies] ON [portfolio].[township].[items].[Id] = [portfolio].[township].[dependancies].[itemId]
  JOIN (SELECT * FROM [portfolio].[township].[items]) as parentDetails ON [portfolio].[township].[dependancies].[parentId] = parentDetails.Id
  WHERE [portfolio].[township].[dependancies].[parentId] IS NOT NULL
  ORDER BY productionTime, itemName;
GO

SELECT * FROM [portfolio].[township].[V_CONSTRAINTS_DEPENDANCIES];
GO

CREATE OR ALTER VIEW [township].[V_PRODUCTION_FLOW_PIZZA] AS
WITH RecursiveCTE AS (
    SELECT 
        d.itemId
        ,d.parentId
        ,p.name AS parentName
        ,i.name AS itemName
        ,i.productiontime AS productionTime
        ,c.name AS constraintName
        ,d.items
        , 1 as [level]
    FROM 
        portfolio.township.dependancies d
    JOIN 
        portfolio.township.items i ON i.Id = d.itemId
    JOIN 
        portfolio.township.items p ON p.Id = d.parentId
    JOIN 
        portfolio.township.constraints c ON c.Id = i.constraintId
    WHERE 
        i.name = 'pizza'

    UNION ALL

    SELECT 
        d.itemId
        ,d.parentId
        ,p.name AS parentName
        ,i.name AS itemName
        ,i.productiontime AS productionTime
        ,c.name AS constraintName
        ,d.items
        , rc.[level]+1 as [level]
    FROM 
        portfolio.township.dependancies d
    JOIN 
        portfolio.township.items i ON i.Id = d.itemId
    JOIN 
        portfolio.township.items p ON p.Id = d.parentId
    JOIN 
        portfolio.township.constraints c ON c.Id = i.constraintId
    JOIN 
        RecursiveCTE rc ON rc.parentId = d.itemId
)
SELECT 
    * 
FROM 
    RecursiveCTE
GO

-- Create a new stored procedure called 'StoredProcedureName' in schema 'township'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
  FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'township'
  AND SPECIFIC_NAME = N'ProductionLine'
  AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE township.ProductionLine
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE township.ProductionLine
  @itemName VARCHAR(50)
-- add more stored procedure parameters here
AS
BEGIN
    -- Print the constraintId (for demonstration purposes)
    PRINT 'Processing item: ' + CAST(@itemName AS VARCHAR);
    -- Run the RecursiveCTE query for the current @itemName
    WITH RecursiveCTE AS (
        SELECT 
            d.itemId
            ,d.parentId
            ,p.name AS parentName
            ,i.name AS itemName
            ,i.productiontime AS productionTime
            ,c.name AS constraintName
            ,d.items AS requiredItems
            , 1 as [level]
        FROM 
            portfolio.township.dependancies d
        JOIN 
            portfolio.township.items i ON i.Id = d.itemId
        JOIN 
            portfolio.township.items p ON p.Id = d.parentId
        JOIN 
            portfolio.township.constraints c ON c.Id = i.constraintId
        WHERE 
            i.name = @itemName

        UNION ALL

        SELECT 
            d.itemId
            ,d.parentId
            ,p.name AS parentName
            ,i.name AS itemName
            ,i.productiontime AS productionTime
            ,c.name AS constraintName
            ,d.items AS requiredItems
            , rc.[level]+1 as [level]
        FROM 
            portfolio.township.dependancies d
        JOIN 
            portfolio.township.items i ON i.Id = d.itemId
        JOIN 
            portfolio.township.items p ON p.Id = d.parentId
        JOIN 
            portfolio.township.constraints c ON c.Id = i.constraintId
        JOIN 
            RecursiveCTE rc ON rc.parentId = d.itemId
    )
    SELECT 
        * 
    FROM 
        RecursiveCTE
    ORDER BY 
        [level] desc, parentName, productionTime;
END
GO
-- -- example to execute the stored procedure we just created
EXECUTE township.ProductionLine @itemName='pizza'
GO