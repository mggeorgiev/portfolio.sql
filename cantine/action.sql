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

WITH RecursivePrices (ctn, name_one, name_two, price_one, price_two, combo_price) AS
(
    SELECT
        10 as ctn
        ,t2.name as name_one
        ,t1.name as name_two
        ,t1.unitPrice as price_one
        ,t2.unitPrice as price_two
        ,(t1.unitPrice + t2.unitPrice)*1 as combo_price
    FROM
        [portfolio].[cantine].[items] t1
    CROSS JOIN [portfolio].[cantine].[items] t2 

)
SELECT ctn, name_one, name_two, price_one, price_two, combo_price FROM RecursivePrices
--WHERE (combo_price % 10 = 0) ;
GO