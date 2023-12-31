USE desafio;
GO

-- Create a new table called '[episodes]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[episodes]', 'U') IS NOT NULL
DROP TABLE [dbo].[episodes]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[episodes]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY, -- Primary Key column
    [seasonId] INT,
    [episode] INT,
    [airDate] DATE
    -- Specify more columns here
);
GO

-- insert repisodes per season
WITH episodesCTE AS (
    SELECT 1 AS Number, 1 as Season
    UNION ALL
    SELECT Number + 1, 1 as Season
    FROM episodesCTE
    WHERE Number <= (SELECT [episodes] FROM [desafio].[dbo].[season] WHERE id = 1)
)
INSERT INTO [dbo].[episodes] ([episode], [seasonId])
SELECT Number, Season
FROM episodesCTE;

-- insert repisodes per season
WITH episodesCTE AS (
    SELECT 1 AS Number, 2 as Season
    UNION ALL
    SELECT Number + 1, 2 as Season
    FROM episodesCTE
    WHERE Number <= (SELECT [episodes] FROM [desafio].[dbo].[season] WHERE id = 2)
)

INSERT INTO [dbo].[episodes] ([episode], [seasonId])
SELECT Number, Season
FROM episodesCTE;

-- insert repisodes per season
WITH episodesCTE AS (
    SELECT 1 AS Number, 3 as Season
    UNION ALL
    SELECT Number + 1, 3 as Season
    FROM episodesCTE
    WHERE Number <= (SELECT [episodes] FROM [desafio].[dbo].[season] WHERE id = 3)
)

INSERT INTO [dbo].[episodes] ([episode], [seasonId])
SELECT Number, Season
FROM episodesCTE;

-- insert repisodes per season
WITH episodesCTE AS (
    SELECT 1 AS Number, 4 as Season
    UNION ALL
    SELECT Number + 1, 4 as Season
    FROM episodesCTE
    WHERE Number <= (SELECT [episodes] FROM [desafio].[dbo].[season] WHERE id = 4)
)

INSERT INTO [dbo].[episodes] ([episode], [seasonId])
SELECT Number, Season
FROM episodesCTE;

INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 1, 5, TRY_CONVERT(date,'09-02-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 2, 5, TRY_CONVERT(date,'09-03-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 3, 5, TRY_CONVERT(date,'09-04-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 4, 5, TRY_CONVERT(date,'09-05-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 5, 5, TRY_CONVERT(date,'09-06-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 6, 5, TRY_CONVERT(date,'09-07-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 7, 5, TRY_CONVERT(date,'09-08-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 8, 5, TRY_CONVERT(date,'09-09-2023');

INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 9, 5, TRY_CONVERT(date,'09-11-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 10, 5, TRY_CONVERT(date,'09-12-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 11, 5, TRY_CONVERT(date,'09-13-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 12, 5, TRY_CONVERT(date,'09-14-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 13, 5, TRY_CONVERT(date,'09-15-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 14, 5, TRY_CONVERT(date,'09-16-2023');

INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 15, 5, TRY_CONVERT(date,'09-18-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 16, 5, TRY_CONVERT(date,'09-19-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 17, 5, TRY_CONVERT(date,'09-20-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 18, 5, TRY_CONVERT(date,'09-21-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 19, 5, TRY_CONVERT(date,'09-22-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 20, 5, TRY_CONVERT(date,'09-23-2023');

INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 21, 5, TRY_CONVERT(date,'09-25-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 22, 5, TRY_CONVERT(date,'09-26-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 23, 5, TRY_CONVERT(date,'09-27-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 24, 5, TRY_CONVERT(date,'09-28-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 25, 5, TRY_CONVERT(date,'09-29-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 26, 5, TRY_CONVERT(date,'09-30-2023');

INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 27, 5, TRY_CONVERT(date,'10-02-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 28, 5, TRY_CONVERT(date,'10-03-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 29, 5, TRY_CONVERT(date,'10-04-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 30, 5, TRY_CONVERT(date,'10-05-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 31, 5, TRY_CONVERT(date,'10-06-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 32, 5, TRY_CONVERT(date,'10-07-2023');

INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 33, 5, TRY_CONVERT(date,'10-09-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 34, 5, TRY_CONVERT(date,'10-10-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 35, 5, TRY_CONVERT(date,'10-11-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 36, 5, TRY_CONVERT(date,'10-12-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 37, 5, TRY_CONVERT(date,'10-13-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 38, 5, TRY_CONVERT(date,'10-14-2023');

INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 39, 5, TRY_CONVERT(date,'10-16-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 40, 5, TRY_CONVERT(date,'10-17-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 41, 5, TRY_CONVERT(date,'10-18-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 42, 5, TRY_CONVERT(date,'10-19-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 43, 5, TRY_CONVERT(date,'10-20-2023');
INSERT INTO [dbo].[episodes] ([episode], [seasonId], [airDate]) SELECT 44, 5, TRY_CONVERT(date,'10-21-2023');

SELECT    [Id],
          [seasonId],
          [episode],
          [airDate],
          FORMAT([airDate], 'dddd', 'en-us')  AS "Weekday",
          DATEPART(dw, [airDate]) AS "Weekday Number"
FROM      [dbo].[episodes]
WHERE     [dbo].[episodes].[seasonId] IN (5)
ORDER BY  [dbo].[episodes].[episode];
GO