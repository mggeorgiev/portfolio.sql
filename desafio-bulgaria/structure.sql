-- DROP DATABASE desafio;
-- GO
-- Create a new database called 'desafio'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] = N'desafio'
)
CREATE DATABASE desafio
GO

-- Create a new table called '[season]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[season]', 'U') IS NOT NULL
DROP TABLE [dbo].[season]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[season]
(
    [id] INT NOT NULL PRIMARY KEY IDENTITY, -- Primary Key column
    [name] int NOT NULL,
    [startDate] DATETIME,
    [endDate] DATETIME,
    [episodes] INT
    -- Specify more columns here
);
GO

INSERT INTO [dbo].[season] ([name], [startDate], [endDate],[episodes]) VALUES (1, '20190906 00:00:00 AM', '20191206 00:00:00 AM', 66);
INSERT INTO [dbo].[season] ([name], [startDate], [endDate],[episodes]) VALUES (2, '20200906 00:00:00 AM', '20201204 00:00:00 AM', 66);
INSERT INTO [dbo].[season] ([name], [startDate], [endDate],[episodes]) VALUES (3, '20210904 00:00:00 AM', '20211203 00:00:00 AM', 67);
INSERT INTO [dbo].[season] ([name], [startDate], [endDate],[episodes]) VALUES (4, '20220903 00:00:00 AM', '20221129 00:00:00 AM', 63);
INSERT INTO [dbo].[season] ([name], [startDate], [endDate],[episodes]) VALUES (5, '20230902 00:00:00 AM', '20231204 00:00:00 AM', 20);
INSERT INTO [dbo].[season] ([name], [startDate], [endDate],[episodes]) VALUES (6, '20240915 00:00:00 AM', '20241201 00:00:00 AM', 1);

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

-- Create a new table called '[city]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[city]', 'U') IS NOT NULL
DROP TABLE [dbo].[city]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[city]
(
    [id] INT NOT NULL PRIMARY KEY IDENTITY, -- Primary Key column
    [name] NVARCHAR(50) NOT NULL,
    CONSTRAINT AK_name UNIQUE(name)
);
GO

INSERT INTO [dbo].[city] ([name]) VALUES (N'София');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Ботевград');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Варна');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Петрич');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Тополовград');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Монтана');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Ямбол');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Бургас');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Благоевград');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Кавала');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Кюстендил');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Несебър');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Радомир');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Берлин');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Разград');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Плевен');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Карнобат');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Велико Търново');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Панагюрище');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Сливен');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Славяново');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Русе');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Йерусалим');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Харманли');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Златоград');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Карлово');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Самоков');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Белград');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Ловеч');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Добрич');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Пловдив');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Оксфорд');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Пазарджик');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Мездра');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Стара Загора');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Хасково');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Полша');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Казахстан');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Челопеч');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Куклен');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Стратфорд');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Сандански');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Симитли');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Враца');
INSERT INTO [dbo].[city] ([name]) VALUES (N'Промени');

-- Create a new table called '[tribes]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[tribes]', 'U') IS NOT NULL
DROP TABLE [dbo].[tribes]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[tribes]
(
    [id] INT NOT NULL PRIMARY KEY IDENTITY, -- Primary Key column
    [name] NVARCHAR(50) NOT NULL,
    [seasonId] INT NOT NULL
    -- Specify more columns here
);
GO

INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Прабългари',1);
INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Траки',1);
INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Славяни',1);

INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Ловци',2);
INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Жътвари',2);
INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Рибари',2);

INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Бойци',3);
INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Приключенци',3);
INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Жълти',3);

INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Безстрашни',4);
INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Непобедими',4);
INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Супергерои',4);
INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Резерви',4);

INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Старейшини',5);
INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Гладиатори',5);
INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Амазонки',5);
INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Изгубени',5);
INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Двойки',5);
INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Момчета',5);
INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Момичета',5);

INSERT INTO [dbo].[tribes] ([name],[seasonId]) VALUES (N'Финалисти',5);

-- Create a new table called '[skills]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[skills]', 'U') IS NOT NULL
DROP TABLE [dbo].[skills]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[skills]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY, -- Primary Key column
    [name] NVARCHAR(50) NOT NULL
);
GO

INSERT INTO [dbo].[skills] ([name]) VALUES(N'издържливост');
INSERT INTO [dbo].[skills] ([name]) VALUES(N'баланс');
INSERT INTO [dbo].[skills] ([name]) VALUES(N'ловкост');
INSERT INTO [dbo].[skills] ([name]) VALUES(N'късмет');
INSERT INTO [dbo].[skills] ([name]) VALUES(N'точност');
INSERT INTO [dbo].[skills] ([name]) VALUES(N'съобразителност');
INSERT INTO [dbo].[skills] ([name]) VALUES(N'изометрия');

-- Create a new table called '[battleComponent]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[battleComponent]', 'U') IS NOT NULL
DROP TABLE [dbo].[battleComponent]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[battleComponent]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY, -- Primary Key column
    [name] NVARCHAR(50) NOT NULL,
    [type] NVARCHAR(50) NOT NULL,
    -- Specify more columns here
);
GO

INSERT INTO [dbo].[battleComponent] ([name], [type]) VALUES (N'Мелница', '');
INSERT INTO [dbo].[battleComponent] ([name], [type]) VALUES (N'Изометрия над басейн', '');
INSERT INTO [dbo].[battleComponent] ([name], [type]) VALUES (N'Хималайска стълба', '');
INSERT INTO [dbo].[battleComponent] ([name], [type]) VALUES (N'Рибна глава', '');
INSERT INTO [dbo].[battleComponent] ([name], [type]) VALUES (N'Риболов на куки', '');
INSERT INTO [dbo].[battleComponent] ([name], [type]) VALUES (N'Хващане на куки с котва', '');
INSERT INTO [dbo].[battleComponent] ([name], [type]) VALUES (N'Басейн с торбички', '');

-- Create a new table called '[participant]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[participant]', 'U') IS NOT NULL
DROP TABLE [dbo].[participant]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[participant]
(
    [id] INT NOT NULL PRIMARY KEY IDENTITY, -- Primary Key column
    [name] NVARCHAR(50) NOT NULL,
    [sex] VARCHAR (1) NOT NULL,
    [age] INT NOT NULL,
    [seasonId] INT,
    [cityId] INT NOT NULL
    -- Specify more columns here
);
GO

/*Season 1*/

INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Анита Аризанова', 'f', 35, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Гичка Пътникова', 'f', 25, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Петрич';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Илиян Миланов', 'm', 27, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Тополовград';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Йоана Емилова', 'f', 20, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Монтана';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Георги Иванов', 'm', 28, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Ямбол';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Бояна Генова', 'm', 27, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Бургас';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Марешка Глущук', 'f', 23, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Варна';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Атанас Бръндев', 'm', 29, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Благоевград';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Амелия-Мира Маркова', 'f', 27, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Георгиос Сърбинов', 'm', 32, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Кавала';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Александър Кирилов', 'm', 32, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Петрич';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Стоян Вълчев', 'm', 23, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Несебър';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Роберта Стойнева', 'm', 23, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Радомир';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Март Лачев', 'm', 25, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Елена Иванова', 'f', 32, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Стефания Иванова', 'f', 32, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Томас Нацидис', 'm', 25, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Ямбол';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Венцислава Панева', 'f', 34, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Ямбол';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Радостина Бохорова', 'f', 39, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Ямбол';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Пламен Младенов', 'm', 31, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Ямбол';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Анна-Мария Крайчева', 'f', 27, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Ямбол';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Веселин Панчев', 'm', 32, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Ямбол';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Юлиян Златев', 'm', 30, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Ямбол';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Добрин Николов', 'm', 27, 1, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Ямбол';

/*Season 2*/

INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Пламен Диков', 'm', 21, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Елена Василева', 'f', 20, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Ботевград';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Ева Карамфилова', 'f', 24, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Варна';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Мая Тановска', 'f', 30, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Иван Драганов', 'm', 38, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Димитър Банчев', 'm', 33, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Сливен';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Ивайло Тодоров', 'm', 25, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Сливен';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Христа Аспарухова', 'f', 35, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Плевен';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Сюзън Георгиева', 'f', 20, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Станимира Неделчева', 'f', 25, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Бургас';

INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Александър Димитров', 'm', 32, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Варна';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Ивана Дилова', 'f', 21, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Симона Станиславова', 'f', 28, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Ловеч';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Владислав Стоименов', 'm', 31, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Кюстендил';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Николай Стефанов', 'm', 25, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Любомир Костов', 'm', 29, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Петрич';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Чудомир Григоров', 'm', 31, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Пловдив';

INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Тодор Желязков', 'm', 33, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Бургас';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Екатерина Лазарова', 'f', 29, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Джералдин Тодорова', 'f', 18, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Оксфорд';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Николай Лазаринов', 'm', 23, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Пловдив';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Йоанна Лазарова', 'f', 22, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Вайс Сайфи', 'f', 28, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Пазарджик';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Ваня Запрянова', 'f', 27, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Карнобат';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Борислав Лазаров', 'm', 27, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Милен Цветков', 'm', 31, 2, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Пазарджик';

/*Season 3*/

INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Иван Булкин', 'm', 26, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Пловдив';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Златозар Атанасов', 'm', 31, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Пловдив';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Елия Мицова', 'f', 28, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Кюстендил';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Станислава Петрова', 'f', 24, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Бургас';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Виктория Петрова', 'f', 35, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Русе';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Георги Братоев', 'm', 33, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Александър Цеков', 'm', 36, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Габриела Димитрова', 'f', 21, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Варна';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Соня Милева', 'f', 43, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Елена Боянова', 'f', 27, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Пловдив';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Семира Ал Сарай', 'f', 24, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Верислав Туджаров', 'm', 32, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Калоян Проданов', 'm', 32, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Добрич';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Мартин Монев', 'm', 32, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Стара Загора';

INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Стоян Димитров', 'm', 51, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Ботевград';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Красима Кирова', 'f', 21, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Варна';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Кремена Русева', 'f', 40, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Хасково';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Валентин Мичев', 'm', 24, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Пловдив';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Мани Ву Нанг Тъ', 'f', 34, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Бургас';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Милена Мирева', 'f', 25, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Димитър Морунов', 'm', 32, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Самоков';

INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Георги Рабухчиев', 'm', 24, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Стара Загора';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Борис Налбантов', 'm', 27, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Елизабет Василева', 'f', 21, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Неделчо Богданов', 'm', 21, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Несебър';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Стратимир Георгиев', 'm', 28, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Варна';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Паулина Горанов', 'f', 24, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Полша';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Симеон Станкович', 'm', 25, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Андрей Гридин', 'm', 33, 3, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Казахстан';

/*Season 4*/

INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Илина Георгиева', 'f', 30, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Велико Търново';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Иван Мирчев', 'm', 29, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Благоевград';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Димитър Куков', 'm', 32, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Иван Гайтанов', 'm', 20, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Бургас';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Велислава Ангелова', 'f', 29, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Панагюрище';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Елина Пашаланова', 'f', 30, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Сливен';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Аспарух Тотев', 'm', 23, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Веселина Ефремова', 'f', 42, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Николай Чакалов', 'm', 26, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Славяново';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Валери Григоров', 'm', 23, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Звезделина Георгиева', 'f', 30, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Варна';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Касим Касимов', 'm', 21, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Русе';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Илиян Цветков', 'm', 20, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Бургас';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Цветан Петров', 'm', 34, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';

INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Елица Янкова', 'f', 27, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Варна';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Михаела Тодорова', 'f', 26, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Александра Фейгин', 'f', 19, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Йерусалим';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Мирела Илиева', 'f', 21, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Варна';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Димитър Лефтеров', 'm', 28, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Велико Търново';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Генчо Генчев', 'm', 33, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Харманли';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Зорница Стоилова', 'm', 21, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';

INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Мирослава Профирова', 'f', 35, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Златоград';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Мануела Тонева „Мани“', 'f', 25, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Карлово';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Евгения Джаферович', 'f', 32, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Ралица Кашинова', 'f', 29, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Самоков';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Виктория Григорова', 'f', 32, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Георги Петков „Гого“', 'm', 25, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Сливен';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Георги Янев', 'm', 21, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Филип Атанасов', 'm', 29, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Алекса Ерски', 'm', 25, 4, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Белград';

/*Season 5*/

INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Трифон Симеонов „Туньо“', 'm', 33, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Пазарджик';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Радосвета Симеонова', 'f', 29, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Добрич';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Виолета Стайкова', 'f', 47, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';

INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Албена Ситнилска', 'f', 41, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Промени';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Благомир Мастагарков', 'm', 31, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Пловдив';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Васил Василев', 'm', 31, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Валентин Петров', 'm', 48, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Хасково';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Веселина Маринова', 'f', 29, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Русе';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Виктория Йорданова', 'f', 27, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Варна';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Даниел Димов', 'm', 34, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Стратфорд';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Денислава Велкова', 'f', 24, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Елена Петрова', 'f', 20, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Хасково';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Ива Георгиева', 'f', 20, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Варна';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Иван Рълев', 'm', 25, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Симитли';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Калоян Митов', 'm', 22, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Красимир Дунев', 'm', 50, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Пловдив';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Крум Апостолов', 'm', 25, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Куклен';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Мартин Николов „Елвиса“', 'm', 38, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Мария Оряшкова', 'f', 34, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Челопеч';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Михаил Кръстев', 'm', 20, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Промени';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Момчил Василев', 'm', 25, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Моника Николаева', 'f', 35, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Враца';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Николай Костадинов', 'm', 32, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Промени';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Николай Рълев', 'm', 19, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Промени';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Никол Дунев', 'f', 24, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Промени';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Пеньо Гатевски „Гатьо“', 'm', 41, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Пловдив';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Радостин Кръстев', 'm', 22, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Сандански';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Румен Радев', 'm', 26, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Сливен';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Теодора Маринова', 'f', 29, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Русе';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Теодора Мудева', 'f', 22, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'Бургас';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Цветелин Гешов', 'm', 25, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';
INSERT INTO [dbo].[participant] ([name], [sex], [age], [seasonId], [cityId]) SELECT N'Цвети Станева', 'f', 22, 5, [id] FROM [dbo].[city] WHERE [dbo].[city].[name] = N'София';

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
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 28, 6, 'joins', 1;
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 29, 6, 'joins', 1;
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 30, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жътвари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 31, 6, 'joins', 1;
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 32, 6, 'joins', 1;
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 33, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жътвари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 34, 6, 'joins', 1;

INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 35, 6, 'joins', 1;
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 36, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жътвари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 37, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Ловци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 38, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жътвари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 39, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Ловци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 40, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Жътвари';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 41, 6, 'joins', 1;

INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 42, [id], 'joins', 1 FROM [dbo].[tribes] WHERE [dbo].[tribes].[name] = N'Ловци';
INSERT INTO [dbo].[eventTribe] ([participantId], [tribeId], [event], [episode]) SELECT 43, 6, 'joins', 1;
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

USE desafio;
GO

-- Create a new table called '[battleComponentSkills]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[battleComponentSkills]', 'U') IS NOT NULL
DROP TABLE [dbo].[battleComponentSkills]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[battleComponentSkills]
(
    [skillId] INT NOT NULL ,
    [battleComponentId] INT NOT NULL,
    -- CONSTRAINT PK_battleComponentSkills PRIMARY KEY (skillId, battleComponentId)
);
GO

INSERT    INTO [dbo].[battleComponentSkills] ([skillId], [battleComponentId])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[skills]
          WHERE     [name] = N'изометрия'
          ) AS skillId,
          [id]
FROM      [dbo].[battleComponent]
WHERE     [name] = N'Мелница';

GO

INSERT    INTO [dbo].[battleComponentSkills] ([skillId], [battleComponentId])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[skills]
          WHERE     [name] = N'издържливост'
          ) AS skillId,
          [id]
FROM      [dbo].[battleComponent]
WHERE     [name] = N'Мелница';

GO

INSERT    INTO [dbo].[battleComponentSkills] ([skillId], [battleComponentId])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[skills]
          WHERE     [name] = N'баланс'
          ) AS skillId,
          [id]
FROM      [dbo].[battleComponent]
WHERE     [name] = N'Колелото на смъртта';

GO

INSERT    INTO [dbo].[battleComponentSkills] ([skillId], [battleComponentId])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[skills]
          WHERE     [name] = N'баланс'
          ) AS skillId,
          [id]
FROM      [dbo].[battleComponent]
WHERE     [name] = N'Хималайски стълба';

GO

INSERT    INTO [dbo].[battleComponentSkills] ([skillId], [battleComponentId])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[skills]
          WHERE     [name] = N'ловкост'
          ) AS skillId,
          [id]
FROM      [dbo].[battleComponent]
WHERE     [name] = N'Рибна глава';

GO

INSERT    INTO [dbo].[battleComponentSkills] ([skillId], [battleComponentId])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[skills]
          WHERE     [name] = N'точност'
          ) AS skillId,
          [id]
FROM      [dbo].[battleComponent]
WHERE     [name] = N'Риболов';

GO

INSERT    INTO [dbo].[battleComponentSkills] ([skillId], [battleComponentId])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[skills]
          WHERE     [name] = N'късмет'
          ) AS skillId,
          [id]
FROM      [dbo].[battleComponent]
WHERE     [name] = N'Риболов';

GO

INSERT    INTO [dbo].[battleComponentSkills] ([skillId], [battleComponentId])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[skills]
          WHERE     [name] = N'точност'
          ) AS skillId,
          [id]
FROM      [dbo].[battleComponent]
WHERE     [name] = N'Котва';

GO

INSERT    INTO [dbo].[battleComponentSkills] ([skillId], [battleComponentId])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[skills]
          WHERE     [name] = N'късмет'
          ) AS skillId,
          [id]
FROM      [dbo].[battleComponent]
WHERE     [name] = N'Котва';

GO

INSERT    INTO [dbo].[battleComponentSkills] ([skillId], [battleComponentId])
SELECT    (
          SELECT    [id]
          FROM      [dbo].[skills]
          WHERE     [name] = N'късмет'
          ) AS skillId,
          [id]
FROM      [dbo].[battleComponent]
WHERE     [name] = N'Басейн с торбички';

GO

USE [desafio];
GO

-- Create a new table called '[battles]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[battles]', 'U') IS NOT NULL
DROP TABLE [dbo].[battles]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[battles]
(
    [Id] INT NOT NULL,
    [battleComponentId] INT
);
GO

INSERT INTO [desafio].[dbo].[battles] VALUES (1,1);

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
          18
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
          18
FROM      [dbo].[participant]
WHERE     [name] = N'Мартин Николов „Елвиса“';