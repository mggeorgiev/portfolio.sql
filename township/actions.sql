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


