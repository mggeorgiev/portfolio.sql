USE [desafio];
GO

-- Create a new table called '[eventTribe]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[eventTribe]', 'U') IS NOT NULL
DROP TABLE [dbo].[eventTribe]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[eventTribe]
(
    [id] INT NOT NULL PRIMARY KEY IDENTITY, -- Primary Key column
    [participantId] INT NOT NULL,
    [tribeId] INT NOT NULL,
    [event] NVARCHAR(50) NOT NULL,
    [episode] INT
    -- Specify more columns here
);
GO

/*Season 1*/

INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (1, 1, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (2, 1, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (5, 1, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (12, 1, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (13, 1, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (18, 1, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (20, 1, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (23, 1, 'joins', 1);

INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (11, 2, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (21, 2, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (8, 2, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (24, 2, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (15, 2, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (3, 2, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (19, 2, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (16, 2, 'joins', 1);

INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (9, 3, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (6, 3, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (22, 3, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (10, 3, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (4, 3, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (7, 3, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (14, 3, 'joins', 1);
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) VALUES (17, 3, 'joins', 1);

/*Season 2*/

INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 25, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Ловци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 26, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жътвари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 27, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Ловци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 28, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Рибари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 29, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Рибари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 30, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жътвари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 31, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Рибари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 32, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Рибари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 33, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жътвари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 34, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Рибари';

INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 35, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Рибари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 36, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жътвари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 37, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Ловци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 38, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жътвари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 39, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Ловци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 40, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жътвари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 41, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Рибари';

INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 42, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Ловци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 43, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Рибари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 44, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жътвари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 45, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Ловци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 46, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Ловци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 47, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жътвари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 48, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Ловци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 49, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Ловци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 50, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Ловци';

/*Season 3*/

INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 53, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Бойци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 54, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Бойци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 55, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Приключенци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 56, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жълти';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 57, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жълти';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 58, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жълти';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 59, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Бойци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 60, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жълти';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 61, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Приключенци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 62, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Приключенци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 63, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Бойци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 64, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Бойци';

INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 65, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Бойци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 66, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жълти';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 67, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Бойци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 68, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Приключенци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 69, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Бойци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 70, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Приключенци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 71, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Бойци';

INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 72, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Приключенци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 73, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жълти';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 74, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жълти';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 75, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Бойци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 76, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Приключенци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 77, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Приключенци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 78, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жълти';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 79, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жълти';

/*Season 4*/

INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 80, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Безстрашни';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 81, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Резерви';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 82, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Непобедими';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 83, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Резерви';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 84, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Супергерои';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 85, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Резерви';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 86, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Непобедими';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 87, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Резерви';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 88, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Резерви';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 89, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Безстрашни';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 90, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Непобедими';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 91, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Супергерои';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 92, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Супергерои';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 93, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Супергерои';

INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 94, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Непобедими';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 95, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Безстрашни';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 96, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Супергерои';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 97, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Безстрашни';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 98, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Безстрашни';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 99, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Непобедими';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 100, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Резерви';

INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 101, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Непобедими';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 102, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Супергерои';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 103, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Безстрашни';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 104, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Безстрашни';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 105, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Резерви';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 106, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Супергерои';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 107, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Непобедими';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 108, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Резерви';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 109, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Резерви';

/*Season 5*/

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Даниел Димов'
          AND       [desafio].[dbo].[participant].[age] = 34
          ),
          [id],
          'joins',
          1
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Момчета';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Калоян Митов'
          AND       [desafio].[dbo].[participant].[age] = 22
          ),
          [id],
          'joins',
          1
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Момчета';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Крум Апостолов'
          AND       [desafio].[dbo].[participant].[age] = 25
          ),
          [id],
          'joins',
          1
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Момчета';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Николай Костадинов'
          AND       [desafio].[dbo].[participant].[age] = 32
          ),
          [id],
          'joins',
          1
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Момчета';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Пеньо Гатевски „Гатьо“'
          AND       [desafio].[dbo].[participant].[age] = 41
          ),
          [id],
          'joins',
          1
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Момчета';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Цветелин Гешов'
          AND       [desafio].[dbo].[participant].[age] = 25
          ),
          [id],
          'joins',
          1
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Момчета';

---

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Васил Василев'
          AND       [desafio].[dbo].[participant].[age] = 31
          ),
          [id],
          'joins',
          1
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Двойки';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Момчил Василев'
          AND       [desafio].[dbo].[participant].[age] = 25
          ),
          [id],
          'joins',
          1
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Двойки';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Красимир Дунев'
          AND       [desafio].[dbo].[participant].[age] = 50
          ),
          [id],
          'joins',
          1
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Двойки';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Никол Дунев'
          AND       [desafio].[dbo].[participant].[age] = 24
          ),
          [id],
          'joins',
          1
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Двойки';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Румен Радев'
          AND       [desafio].[dbo].[participant].[age] = 26
          ),
          [id],
          'joins',
          1
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Двойки';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Теодора Мудева'
          AND       [desafio].[dbo].[participant].[age] = 22
          ),
          [id],
          'joins',
          1
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Двойки';

---

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Албена Ситнилска'
          AND       [desafio].[dbo].[participant].[age] = 41
          ),
          [id],
          'joins',
          1
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Момичета';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Виктория Йорданова'
          AND       [desafio].[dbo].[participant].[age] = 27
          ),
          [id],
          'joins',
          1
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Момичета';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Ива Георгиева'
          AND       [desafio].[dbo].[participant].[age] = 20
          ),
          [id],
          'joins',
          1
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Момичета';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Мария Оряшкова'
          AND       [desafio].[dbo].[participant].[age] = 34
          ),
          [id],
          'joins',
          1
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Момичета';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Радосвета Симеонова'
          AND       [desafio].[dbo].[participant].[age] = 29
          ),
          [id],
          'joins',
          1
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Момичета';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Цвети Станева'
          AND       [desafio].[dbo].[participant].[age] = 22
          ),
          [id],
          'joins',
          1
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Момичета';

--

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Васил Василев'
          AND       [desafio].[dbo].[participant].[age] = 31
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Изгубени';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Веселина Маринова'
          AND       [desafio].[dbo].[participant].[age] = 29
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Изгубени';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Денислава Велкова'
          AND       [desafio].[dbo].[participant].[age] = 24
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Изгубени';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Елена Петрова'
          AND       [desafio].[dbo].[participant].[age] = 20
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Изгубени';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Михаил Кръстев'
          AND       [desafio].[dbo].[participant].[age] = 20
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Изгубени';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Никол Дунев'
          AND       [desafio].[dbo].[participant].[age] = 24
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Изгубени';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Николай Рълев'
          AND       [desafio].[dbo].[participant].[age] = 19
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Изгубени';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Румен Радев'
          AND       [desafio].[dbo].[participant].[age] = 26
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Изгубени';

--

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Николай Костадинов'
          AND       [desafio].[dbo].[participant].[age] = 32
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Гладиатори';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Цветелин Гешов'
          AND       [desafio].[dbo].[participant].[age] = 25
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Гладиатори';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Пеньо Гатевски „Гатьо“'
          AND       [desafio].[dbo].[participant].[age] = 41
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Гладиатори';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Крум Апостолов'
          AND       [desafio].[dbo].[participant].[age] = 25
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Гладиатори';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Калоян Митов'
          AND       [desafio].[dbo].[participant].[age] = 22
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Гладиатори';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Даниел Димов'
          AND       [desafio].[dbo].[participant].[age] = 34
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Гладиатори';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Радостин Кръстев'
          AND       [desafio].[dbo].[participant].[age] = 22
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Гладиатори';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Иван Рълев'
          AND       [desafio].[dbo].[participant].[age] = 25
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Гладиатори';

--

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Трифон Симеонов „Туньо“'
          AND       [desafio].[dbo].[participant].[age] = 33
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Старейшини';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Виолета Стайкова'
          AND       [desafio].[dbo].[participant].[age] = 47
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Старейшини';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Моника Николаева'
          AND       [desafio].[dbo].[participant].[age] = 35
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Старейшини';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Момчил Василев'
          AND       [desafio].[dbo].[participant].[age] = 25
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Старейшини';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Красимир Дунев'
          AND       [desafio].[dbo].[participant].[age] = 50
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Старейшини';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Благомир Мастагарков'
          AND       [desafio].[dbo].[participant].[age] = 31
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Старейшини';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Валентин Петров'
          AND       [desafio].[dbo].[participant].[age] = 48
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Старейшини';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Мартин Николов „Елвиса“'
          AND       [desafio].[dbo].[participant].[age] = 38
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Старейшини';

--

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Албена Ситнилска'
          AND       [desafio].[dbo].[participant].[age] = 41
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Амазонки';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Веселина Маринова'
          AND       [desafio].[dbo].[participant].[age] = 29
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Амазонки';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Виктория Йорданова'
          AND       [desafio].[dbo].[participant].[age] = 27
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Амазонки';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Ива Георгиева'
          AND       [desafio].[dbo].[participant].[age] = 20
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Амазонки';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Мария Оряшкова'
          AND       [desafio].[dbo].[participant].[age] = 34
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Амазонки';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Теодора Маринова'
          AND       [desafio].[dbo].[participant].[age] = 29
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Амазонки';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Радосвета Симеонова'
          AND       [desafio].[dbo].[participant].[age] = 29
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Амазонки';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Цвети Станева'
          AND       [desafio].[dbo].[participant].[age] = 22
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Амазонки';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Теодора Мудева'
          AND       [desafio].[dbo].[participant].[age] = 22
          ),
          [id],
          'joins',
          2
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Амазонки';

--

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Васил Василев'
          AND       [desafio].[dbo].[participant].[age] = 31
          ),
          [id],
          'joins',
          13
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Старейшини';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Валентин Петров'
          AND       [desafio].[dbo].[participant].[age] = 48
          ),
          [id],
          'joins',
          13
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Изгубени';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Пеньо Гатевски „Гатьо“'
          AND       [desafio].[dbo].[participant].[age] = 41
          ),
          [id],
          'joins',
          14
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Амазонки';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Цветелин Гешов'
          AND       [desafio].[dbo].[participant].[age] = 25
          ),
          [id],
          'joins',
          14
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Амазонки';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Цвети Станева'
          AND       [desafio].[dbo].[participant].[age] = 22
          ),
          [id],
          'joins',
          16
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Гладиатори';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Момчил Василев'
          AND       [desafio].[dbo].[participant].[age] = 25
          ),
          [id],
          'joins',
          17
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Амазонки';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Виктория Йорданова'
          AND       [desafio].[dbo].[participant].[age] = 27
          ),
          [id],
          'joins',
          17
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Старейшини';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Денислава Велкова'
          AND       [desafio].[dbo].[participant].[age] = 24
          ),
          [id],
          'joins',
          17
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Старейшини';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Виктория Йорданова'
          AND       [desafio].[dbo].[participant].[age] = 27
          ),
          [id],
          'joins',
          18
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Изгубени';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Виктория Йорданова'
          AND       [desafio].[dbo].[participant].[age] = 27
          ),
          [id],
          'joins',
          19
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Старейшини';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Мартин Николов „Елвиса“'
          AND       [desafio].[dbo].[participant].[age] = 38
          ),
          [id],
          'joins',
          19
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Изгубени';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Мартин Николов „Елвиса“'
          AND       [desafio].[dbo].[participant].[age] = 38
          ),
          [id],
          'joins',
          22
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Старейшини';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Виолета Стайкова'
          AND       [desafio].[dbo].[participant].[age] = 47
          ),
          [id],
          'joins',
          23
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Изгубени';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Цветелин Гешов'
          AND       [desafio].[dbo].[participant].[age] = 25
          ),
          [id],
          'joins',
          23
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Изгубени';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Румен Радев'
          AND       [desafio].[dbo].[participant].[age] = 26
          ),
          [id],
          'joins',
          24
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Амазонки';

INSERT    INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode])
SELECT    (
          SELECT    [id]
          FROM      [desafio].[dbo].[participant]
          WHERE     [desafio].[dbo].[participant].[name] = N'Виктория Пенелова'
          AND       [desafio].[dbo].[participant].[age] = 0
          ),
          [id],
          'joins',
          27
FROM      [dbo].[tribes]
WHERE     [dbo].[tribes].[name] = N'Старейшини';