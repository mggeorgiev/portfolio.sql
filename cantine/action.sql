USE portfolio;
GO

SELECT 
    [Id], [name], [unitPrice], [type]
FROM [portfolio].[cantine].[items];

SELECT 
    [Id], [name], [unitPrice], [type]
    ,CAST((unitPrice) AS INT) AS intUnitPrice
    ,[unitPrice] % CASE
                    WHEN CAST((unitPrice) AS INT) >0 THEN CAST((unitPrice) AS INT)
                    ELSE 1
                   END
                   AS Modulo
FROM [portfolio].[cantine].[items];
GO

-- INSERT INTO [portfolio].[cantine].[consumption] ([itemId]) SELECT Id from [portfolio].[cantine].[items] where [name] = '1 - MENU DU JOUR'; 
-- INSERT INTO [portfolio].[cantine].[consumption] ([itemId]) SELECT Id from [portfolio].[cantine].[items] where [name] = '311 - DM Sandwich Maison - 1.80€'; 

SELECT 
    [name]
    ,SUM([unitPrice]) as Total_Price
FROM [portfolio].[cantine].[items]
JOIN [portfolio].[cantine].[consumption] on [portfolio].[cantine].[items].[Id] = [portfolio].[cantine].[consumption].[itemId]
GROUP BY ROLLUP ([name]);
GO

DECLARE @MyCounter INT;
SET @MyCounter = 100;

WITH RecursivePrices (ctn, name_one, name_two, price_one, price_two, combo_price, combo_price_multiplied) AS
(
    SELECT
        @MyCounter as ctn
        ,t2.name as name_one
        ,t1.name as name_two
        ,t1.unitPrice as price_one
        ,t2.unitPrice as price_two
        ,(t1.unitPrice + t2.unitPrice) as combo_price
        ,(t1.unitPrice + t2.unitPrice)*@MyCounter as combo_price_multiplied
    FROM
        [portfolio].[cantine].[items] t1
    CROSS JOIN [portfolio].[cantine].[items] t2 

)
SELECT ctn, name_one, name_two, price_one, price_two, combo_price, combo_price_multiplied FROM RecursivePrices
WHERE (combo_price_multiplied % 0.2 = 0) 
  AND price_one <> '0.00'
  AND price_two <> '0.00';
GO

CREATE OR ALTER VIEW [cantine].V_CONSUMPTION_RESTARTED AS
SELECT TOP (1000) [Id]
      ,[ConsumptionDate]
      ,[ConsumptionTime]
      , DATEPART(dw, [ConsumptionDate]) as weekday
      , DATEPART(hh, [ConsumptionTime]) as hours
      , DATEPART(mi, [ConsumptionTime]) as minutes
      ,[Product]
      ,[Price]
      ,SUM ([Price]) OVER (ORDER BY [Id]) AS RunningTotal
  FROM (
    SELECT TOP (1000) [Id]
        ,[ConsumptionDate]
        ,[ConsumptionTime]
        , DATEPART(dw, [ConsumptionDate]) as weekday
        , DATEPART(hh, [ConsumptionTime]) as hours
        , DATEPART(mi, [ConsumptionTime]) as minutes
        ,[Product]
        ,[Price]
    FROM [portfolio].[cantine].[consumption_log]
    WHERE [ConsumptionDate] > CONVERT(date, '16-01-2023', 103) 
  ) filtered;
  GO

SELECT TOP (1000) [Id]
      ,[ConsumptionDate]
      ,[ConsumptionTime]
      , DATEPART(dw, [ConsumptionDate]) as weekday
      , DATEPART(hh, [ConsumptionTime]) as hours
      , DATEPART(mi, [ConsumptionTime]) as minutes
      ,[Product]
      ,[Price]
  FROM [portfolio].[cantine].[consumption_log]
  WHERE [ConsumptionDate] > CONVERT(date, '16-01-2023', 103);
GO

CREATE OR ALTER VIEW [cantine].V_CONSUMPTION AS
SELECT TOP (1000) [Id]
      ,[ConsumptionDate]
      ,[ConsumptionTime]
      , DATEPART(dw, [ConsumptionDate]) as weekday
      , DATEPART(hh, [ConsumptionTime]) as hours
      , DATEPART(mi, [ConsumptionTime]) as minutes
      ,[Product]
      ,[Price]
  FROM [portfolio].[cantine].[consumption_log];
GO

SELECT * FROM [portfolio].[cantine].V_CONSUMPTION
WHERE [ConsumptionDate] > CONVERT(date, '16-01-2023', 103)
ORDER BY [ConsumptionDate] ASC, [ConsumptionTime];
GO

SELECT * FROM [portfolio].[cantine].V_CONSUMPTION_RESTARTED
WHERE [ConsumptionDate] > CONVERT(date, '16-01-2023', 103)
ORDER BY [ConsumptionDate] ASC, [ConsumptionTime];
GO