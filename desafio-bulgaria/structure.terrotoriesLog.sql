USE [desafio];
GO

-- Create a new table called '[teritoryLog]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[teritoryLog]', 'U') IS NOT NULL
DROP TABLE [dbo].[teritoryLog]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[teritoryLog]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY, -- Primary Key column
    [territoryId] INT NOT NULL, 
    [seasonId] INT NOT NULL,
    [participantId] INT NOT NULL,
    [sequenceNumber] INT,
    [episode] INT,

    -- Specify more columns here
);
GO

/*Преместване на играчи по територии*/

USE [desafio];
GO

/*1*/

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Плажа'
          ) AS skillId,
          5,
          [id],
          0,
          1
FROM      [dbo].[participant]
WHERE     [name] = N'Румен Радев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Плажа'
          ) AS skillId,
          5,
          [id],
          0,
          1
FROM      [dbo].[participant]
WHERE     [name] = N'Никол Дунев';

/*2*/

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Чистилище'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Румен Радев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Чистилище'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Никол Дунев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Чистилище'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Денислава Велкова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Чистилище'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Веселина Маринова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Чистилище'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Михаил Кръстев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Чистилище'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Елена Петрова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Чистилище'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Николай Рълев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Чистилище'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Васил Василев';



INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Даниел Димов';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Иван Рълев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Калоян Митов';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Крум Апостолов';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Николай Костадинов';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Пеньо Гатевски „Гатьо“';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Радостин Кръстев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Цветелин Гешов';




INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Благомир Мастагарков';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Валентин Петров';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Виолета Стайкова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Красимир Дунев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Мартин Николов „Елвиса“';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Момчил Василев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Моника Николаева';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Трифон Симеонов „Туньо“';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Дивата река'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Албена Ситнилска';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Дивата река'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Виктория Йорданова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Дивата река'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Ива Георгиева';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Дивата река'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Мария Оряшкова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Дивата река'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Радосвета Симеонова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Дивата река'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Теодора Маринова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Дивата река'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Теодора Мудева';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Дивата река'
          ) AS skillId,
          5,
          [id],
          0,
          2
FROM      [dbo].[participant]
WHERE     [name] = N'Цвети Станева';

/*8*/

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          8
FROM      [dbo].[participant]
WHERE     [name] = N'Благомир Мастагарков';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          8
FROM      [dbo].[participant]
WHERE     [name] = N'Валентин Петров';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          8
FROM      [dbo].[participant]
WHERE     [name] = N'Виолета Стайкова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          8
FROM      [dbo].[participant]
WHERE     [name] = N'Красимир Дунев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          8
FROM      [dbo].[participant]
WHERE     [name] = N'Мартин Николов „Елвиса“';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          8
FROM      [dbo].[participant]
WHERE     [name] = N'Момчил Василев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          8
FROM      [dbo].[participant]
WHERE     [name] = N'Моника Николаева';



INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          8
FROM      [dbo].[participant]
WHERE     [name] = N'Даниел Димов';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          8
FROM      [dbo].[participant]
WHERE     [name] = N'Иван Рълев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          8
FROM      [dbo].[participant]
WHERE     [name] = N'Калоян Митов';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          8
FROM      [dbo].[participant]
WHERE     [name] = N'Крум Апостолов';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          8
FROM      [dbo].[participant]
WHERE     [name] = N'Николай Костадинов';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          8
FROM      [dbo].[participant]
WHERE     [name] = N'Пеньо Гатевски „Гатьо“';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          8
FROM      [dbo].[participant]
WHERE     [name] = N'Радостин Кръстев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          8
FROM      [dbo].[participant]
WHERE     [name] = N'Цветелин Гешов';

/*13*/

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Чистилище'
          ) AS skillId,
          5,
          [id],
          0,
          13
FROM      [dbo].[participant]
WHERE     [name] = N'Валентин Петров';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          13
FROM      [dbo].[participant]
WHERE     [name] = N'Васил Василев';


/*14*/

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Дивата река'
          ) AS skillId,
          5,
          [id],
          0,
          14
FROM      [dbo].[participant]
WHERE     [name] = N'Пеньо Гатевски „Гатьо“';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Дивата река'
          ) AS skillId,
          5,
          [id],
          0,
          14
FROM      [dbo].[participant]
WHERE     [name] = N'Цветелин Гешов';

/*16*/

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          16
FROM      [dbo].[participant]
WHERE     [name] = N'Благомир Мастагарков';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          16
FROM      [dbo].[participant]
WHERE     [name] = N'Васил Василев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          16
FROM      [dbo].[participant]
WHERE     [name] = N'Виолета Стайкова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          16
FROM      [dbo].[participant]
WHERE     [name] = N'Красимир Дунев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          16
FROM      [dbo].[participant]
WHERE     [name] = N'Мартин Николов „Елвиса“';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          16
FROM      [dbo].[participant]
WHERE     [name] = N'Момчил Василев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          16
FROM      [dbo].[participant]
WHERE     [name] = N'Моника Николаева';



INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          16
FROM      [dbo].[participant]
WHERE     [name] = N'Цвети Станева';


INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          16
FROM      [dbo].[participant]
WHERE     [name] = N'Даниел Димов';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          16
FROM      [dbo].[participant]
WHERE     [name] = N'Иван Рълев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          16
FROM      [dbo].[participant]
WHERE     [name] = N'Калоян Митов';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          16
FROM      [dbo].[participant]
WHERE     [name] = N'Крум Апостолов';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          16
FROM      [dbo].[participant]
WHERE     [name] = N'Николай Костадинов';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          16
FROM      [dbo].[participant]
WHERE     [name] = N'Радостин Кръстев';

/*17*/

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          17
FROM      [dbo].[participant]
WHERE     [name] = N'Виктория Йорданова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Дивата река'
          ) AS skillId,
          5,
          [id],
          0,
          17
FROM      [dbo].[participant]
WHERE     [name] = N'Момчил Василев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          17
FROM      [dbo].[participant]
WHERE     [name] = N'Денислава Велкова';

/*18*/

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Чистилище'
          ) AS skillId,
          5,
          [id],
          0,
          18
FROM      [dbo].[participant]
WHERE     [name] = N'Виктория Йорданова';

/*19*/

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          19
FROM      [dbo].[participant]
WHERE     [name] = N'Виктория Йорданова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Чистилище'
          ) AS skillId,
          5,
          [id],
          0,
          19
FROM      [dbo].[participant]
WHERE     [name] = N'Мартин Николов „Елвиса“';

/*21*/

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Дивата река'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Виктория Йорданова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Дивата река'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Денислава Велкова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          16
FROM      [dbo].[participant]
WHERE     [name] = N'Благомир Мастагарков';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Дивата река'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Виолета Стайкова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Дивата река'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Красимир Дунев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Дивата река'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Моника Николаева';


INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Албена Ситнилска';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Виктория Йорданова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Ива Георгиева';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Мария Оряшкова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Теодора Маринова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Теодора Мудева';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Момчил Василев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Пеньо Гатевски „Гатьо“';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Цветелин Гешов';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Цвети Станева';


INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Даниел Димов';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Иван Рълев';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Калоян Митов';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Крум Апостолов';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Николай Костадинов';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Резиденция'
          ) AS skillId,
          5,
          [id],
          0,
          21
FROM      [dbo].[participant]
WHERE     [name] = N'Радостин Кръстев';

/*22*/

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Дивата река'
          ) AS skillId,
          5,
          [id],
          0,
          22
FROM      [dbo].[participant]
WHERE     [name] = N'Мартин Николов „Елвиса“';

/*23*/

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Чистилище'
          ) AS skillId,
          5,
          [id],
          0,
          23
FROM      [dbo].[participant]
WHERE     [name] = N'Виолета Стайкова';

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Чистилище'
          ) AS skillId,
          5,
          [id],
          0,
          23
FROM      [dbo].[participant]
WHERE     [name] = N'Цветелин Гешов';

/*24*/

INSERT INTO [desafio].[dbo].[teritoryLog] ([territoryId], [seasonId], [participantId], [sequenceNumber], [episode])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[teritory]
          WHERE     [name] = N'Стопанството'
          ) AS skillId,
          5,
          [id],
          0,
          23
FROM      [dbo].[participant]
WHERE     [name] = N'Румен Радев';

