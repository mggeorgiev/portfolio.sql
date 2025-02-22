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