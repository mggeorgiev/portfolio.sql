insert into [Ukraine_RF].[dbo].[Units] ([Id] ,[Name] ,[Country],[Parent] ,[Native_Name]) values (26, '76th Air Assault Division', 'Russia', 2,'');
insert into [Ukraine_RF].[dbo].[Units] ([Id] ,[Name] ,[Country],[Parent] ,[Native_Name]) values (28, '7th Air Assault Division', 'Russia', 2,'');
insert into [Ukraine_RF].[dbo].[Units] ([Id] ,[Name] ,[Country],[Parent] ,[Native_Name]) values (30, '11th Air Assault Brigade', 'Russia', 2,'');
insert into [Ukraine_RF].[dbo].[Units] ([Id] ,[Name] ,[Country],[Parent] ,[Native_Name]) values (32, '31th Air Assault Brigade', 'Russia', 2,'');
insert into [Ukraine_RF].[dbo].[Units] ([Id] ,[Name] ,[Country],[Parent] ,[Native_Name]) values (34, '83th Air Assault Brigade', 'Russia', 2,'');

insert into [Ukraine_RF].[dbo].[Units] ([Id] ,[Name] ,[Country],[Parent] ,[Native_Name]) values (36, '98th Airborne Division', 'Russia', 2,'');
insert into [Ukraine_RF].[dbo].[Units] ([Id] ,[Name] ,[Country],[Parent] ,[Native_Name]) values (38, '106th Airborne Division', 'Russia', 2,'');
insert into [Ukraine_RF].[dbo].[Units] ([Id] ,[Name] ,[Country],[Parent] ,[Native_Name]) values (40, '45th Spetsnaz Brigade', 'Russia', 2,'');

insert into [Ukraine_RF].[dbo].[Element] ([Id],[Name], [Number]) values (1, 'Airborne infantry fighting vehicle', 3);
insert into [Ukraine_RF].[dbo].[Element] ([Id],[Name], [Number]) values (2, 'Platoon Commander', 1);
insert into [Ukraine_RF].[dbo].[Element] ([Id],[Name], [Number]) values (3, 'Squads',3);

insert into [Ukraine_RF].[dbo].[organization] ([Id] ,[Country] ,[Name], [ParentId]) values (1, 'Russia', 'Airborne Platoon', 2);
insert into [Ukraine_RF].[dbo].[organization] ([Id] ,[Country] ,[Name], [ParentId]) values (2, 'Russia', 'Airborne Company', 3);
insert into [Ukraine_RF].[dbo].[organization] ([Id] ,[Country] ,[Name], [ParentId]) values (3, 'Russia', 'Airborne Batalion', 4);
insert into [Ukraine_RF].[dbo].[organization] ([Id] ,[Country] ,[Name], [ParentId]) values (4, 'Russia', 'Airborne Regiment', 5);
insert into [Ukraine_RF].[dbo].[organization] ([Id] ,[Country] ,[Name], [ParentId]) values (5, 'Russia', 'Airborne Division', null);
insert into [Ukraine_RF].[dbo].[organization] ([Id] ,[Country] ,[Name], [ParentId]) values (6, 'Russia', 'Airborne Brigade', null);

insert into [Ukraine_RF].[dbo].[Arms] ([Id], [Name], [Country], [Type]) values (1, 'BMD-2','Russia', 'Airborne infantry fighting vehicle');
insert into [Ukraine_RF].[dbo].[Arms] ([Id], [Name], [Country], [Type]) values (2, 'BMD-4M','Russia', 'Airborne infantry fighting vehicle');

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