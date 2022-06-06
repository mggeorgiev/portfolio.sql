SELECT TOP (1000) [Id]
      ,[Name]
      ,[Country]
      ,[Parent]
      ,[Native_Name]
  FROM [Ukraine_RF].[dbo].[Units]
  where [Country]= 'Russia'
go

SELECT TOP (1000) [Id]
      ,[Country]
      ,[Name]
      ,(select [Name] from [Ukraine_RF].[dbo].[organization] pn where pn.[id]=o.[ParentId]) as Parent
  FROM [Ukraine_RF].[dbo].[organization] o
  go

WITH MyTest as
(
  SELECT [Id]
      ,[Country]
      ,[Name]
      ,[ParentId]
      ,[ParentId] as Level
  FROM [Ukraine_RF].[dbo].[organization] 
  where [ParentId] is null

  UNION ALL

  SELECT O.[Id]
      ,O.[Country]
      ,O.[Name]
      ,O.[ParentId]  + ', ' + M.Level
  FROM [Ukraine_RF].[dbo].[organization] O
  INNER JOIN MyTest M
  ON M.[ParentId] = O.Id
 )
SELECT * From MyTest

SELECT TOP (1000) [Id]
      ,[Name]
      ,[Number]
  FROM [Ukraine_RF].[dbo].[Element]
go

SELECT TOP (1000) e.[Id]
      ,o.[Country]
      ,o.[Name]
      ,e.[Name]
      ,e.Number
  FROM [Ukraine_RF].[dbo].[organization] o
  join [Ukraine_RF].[dbo].[Element] e on e.Id = o.Element_id
GO