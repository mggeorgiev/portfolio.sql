/*Assuming a random starting saldo, what combination of products can be consumed from the limited available stock at the cantine and vending machines, using banknotes of 5, 10, 20, and 50 units loaded onto a payment card, to bring the saldo down to 0?*/
USE portfolio;
GO

/*List Items*/
SELECT 
    [Id]
    ,[name]
    ,[unitPrice]
    ,[type]
FROM [portfolio].[cantine].[items];
GO

/*Calculate the integer and modulo price of a product.*/
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

SELECT 
    [name]
    ,SUM([unitPrice]) as Total_Price
FROM [portfolio].[cantine].[items]
JOIN [portfolio].[cantine].[consumption] on [portfolio].[cantine].[items].[Id] = [portfolio].[cantine].[consumption].[itemId]
GROUP BY ROLLUP ([name]);
GO

/*Calculate the 'combo' price of two products.*/

DECLARE @MyCounter INT;
SET @MyCounter = 10;

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

/*List details and running total of the consumption since 16-01-2023*/
CREATE OR ALTER VIEW [cantine].[V_CONSUMPTION_RESTARTED] AS
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

CREATE OR ALTER VIEW [cantine].[V_CONSUMPTION] AS
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

SELECT * FROM [portfolio].[cantine].[V_CONSUMPTION]
WHERE [ConsumptionDate] > CONVERT(date, '16-01-2023', 103)
ORDER BY [ConsumptionDate] ASC, [ConsumptionTime];
GO

SELECT * FROM [portfolio].[cantine].[V_CONSUMPTION_RESTARTED]
WHERE [ConsumptionDate] > CONVERT(date, '16-01-2023', 103)
ORDER BY [ConsumptionDate] ASC, [ConsumptionTime];
GO

CREATE OR ALTER VIEW [cantine].[V_CONSUMPTION_ITEMS] AS
SELECT 
      DATEPART(yyyy, [ConsumptionDate]) as [year]
      ,DATEPART(MM, [ConsumptionDate]) as [month]
      ,DATEPART(dw, [ConsumptionDate]) as [weekday]
      ,[Product]
      ,COUNT([Product]) as [ProductCount]
      ,SUM([Price]) as [Total_Price]
  FROM [portfolio].[cantine].[consumption_log]
  GROUP BY [Product], DATEPART(yyyy, [ConsumptionDate]),DATEPART(MM, [ConsumptionDate]), DATEPART(dw, [ConsumptionDate]);
GO

SELECT * FROM [portfolio].[cantine].[V_CONSUMPTION_ITEMS]
ORDER BY [year], [month], [weekday];
GO

SELECT * FROM [portfolio].[cantine].[V_CONSUMPTION_ITEMS]
ORDER BY [year], [month], [weekday];
GO

SELECT * FROM [portfolio].[cantine].[consumption_log];
GO

CREATE OR ALTER VIEW [cantine].[V_REMAINING_OPTIONS] AS
WITH CTE_Saldo ([Saldo]) AS
(
    SELECT 
            MIN([Saldo]) 
        FROM [portfolio].[cantine].[consumption_log]
        WHERE ConsumptionDate = (SELECT MAX(ConsumptionDate) FROM [portfolio].[cantine].[consumption_log])
        AND ConsumptionTime = (SELECT MAX(ConsumptionTime) FROM [portfolio].[cantine].[consumption_log] WHERE ConsumptionDate = (SELECT MAX(ConsumptionDate) FROM [portfolio].[cantine].[consumption_log]))
)
SELECT 
    [Id]
    ,[name]
    ,[unitPrice]
    ,[type]
    ,(SElECT * FROM CTE_Saldo) AS Saldo
    ,(SElECT * FROM CTE_Saldo) / [unitPrice] AS TimesInSaldo
    ,FLOOR((SElECT * FROM CTE_Saldo) / [unitPrice]) AS Integer
    ,(SElECT * FROM CTE_Saldo) % [unitPrice] AS Remainder
FROM [portfolio].[cantine].[items]
WHERE [unitPrice] <= ( SElECT * FROM CTE_Saldo)
AND [unitPrice] <> 0.00;
GO

/*Determine the product that, after being consumed n times, will result in a saldo of 0.*/
SELECT * FROM [portfolio].[cantine].[V_REMAINING_OPTIONS]
WHERE Remainder = 0.00;
GO

/*Find the saldo's remainder per product obtained by consuming the products as many times as possible without generating a negative saldo.*/
SELECT * FROM [portfolio].[cantine].[V_REMAINING_OPTIONS]
WHERE Remainder <> 0.00;
GO

/*
This SQL query is used to find the minimum value of the "Saldo" column in the "consumption_log" table, under certain conditions.

The conditions are as follows:

The ConsumptionDate is equal to the maximum ConsumptionDate in the table.
The ConsumptionTime is equal to the maximum ConsumptionTime for the maximum ConsumptionDate in the table.
In other words, the query is finding the minimum "Saldo" value at the latest consumption time and date in the "consumption_log" table.

The query achieves this by using two subqueries in the WHERE clause. The first subquery finds the maximum ConsumptionDate in the table, and the second subquery finds the maximum ConsumptionTime for that maximum ConsumptionDate.

*/

WITH CTE_Saldo ([Saldo]) AS
(
    SELECT 
            MIN([Saldo]) 
        FROM [portfolio].[cantine].[consumption_log]
        WHERE ConsumptionDate = (SELECT MAX(ConsumptionDate) FROM [portfolio].[cantine].[consumption_log])
        AND ConsumptionTime = (SELECT MAX(ConsumptionTime) FROM [portfolio].[cantine].[consumption_log] WHERE ConsumptionDate = (SELECT MAX(ConsumptionDate) FROM [portfolio].[cantine].[consumption_log]))
)
SELECT 
    [Id]
    ,[name]
    ,[unitPrice]
    ,[type]
    ,(SElECT * FROM CTE_Saldo) AS Saldo
    ,(SElECT * FROM CTE_Saldo) / [unitPrice] AS TimesInSaldo
    ,FLOOR((SElECT * FROM CTE_Saldo) / [unitPrice]) AS Integer
    ,(SElECT * FROM CTE_Saldo) % [unitPrice] AS Remainder
FROM [portfolio].[cantine].[items]
WHERE [unitPrice] <> 0.00
AND FLOOR((SElECT * FROM CTE_Saldo) / [unitPrice]) <> 0
ORDER BY Remainder;
GO