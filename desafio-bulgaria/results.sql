/*Всички сезони*/

USE desafio;
GO

SELECT    *
FROM      [dbo].[season]
ORDER BY  [dbo].[season].[id];

GO

/*Всички племена*/
USE desafio;
GO

SELECT    *
FROM      [dbo].[tribes]
ORDER BY  [dbo].[tribes].[seasonId];

GO

/*Всички участинци по градове*/

use desafio;
GO

CREATE OR ALTER VIEW [dbo].[v_participants]
AS
SELECT    [dbo].[participant].[id]   AS "#",
          [dbo].[participant].[name] AS "Име",
          [dbo].[participant].[sex]  AS "Пол",
          [dbo].[participant].[age]  AS "Възраст",
          [dbo].[city].[name]        AS "Град"
FROM      [dbo].[participant]
JOIN      [dbo].[city] ON [dbo].[city].[id] = [dbo].[participant].[cityId];

SELECT * FROM [desafio].[dbo].[v_participants]
ORDER BY [Име];

GO