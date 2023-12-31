USE [desafio];
GO

-- Create a new table called '[battleParticipants]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[battleParticipants]', 'U') IS NOT NULL
DROP TABLE [dbo].[battleParticipants]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[battleParticipants]
(
    [id] INT NOT NULL PRIMARY KEY IDENTITY, -- Primary Key column
    [battleLogId] INT NOT NULL,
    [participantId] INT NOT NULL,
    [rank] INT
);
GO

BEGIN TRAN BATTLE1;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 1, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Васил Василев' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 1, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Красимир Дунев' AND [age] = 50;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 1, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Момчил Василев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 1, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Никол Дунев' AND [age] = 24;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 1, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Румен Радев' AND [age] = 26;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 1, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Теодора Мудева' AND [age] = 22;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 1, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Албена Ситнилска' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 1, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Виктория Йорданова' AND [age] = 27;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 1, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Ива Георгиева' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 1, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Мария Оряшкова' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 1, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Радосвета Симеонова' AND [age] = 29;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 1, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Цвети Станева' AND [age] = 22;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 1, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Даниел Димов' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 1, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Калоян Митов' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 1, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Крум Апостолов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 1, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Николай Костадинов' AND [age] = 32;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 1, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Пеньо Гатевски „Гатьо“' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 1, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Цветелин Гешов' AND [age] = 25;

COMMIT TRAN BATTLE1;

BEGIN TRAN BATTLE2;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Благомир Мастагарков' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Валентин Петров' AND [age] = 48;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Виолета Стайкова' AND [age] = 47;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Красимир Дунев' AND [age] = 50;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Мартин Николов „Елвиса“' AND [age] = 38;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Момчил Василев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Моника Николаева' AND [age] = 35;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Трифон Симеонов „Туньо“' AND [age] = 33;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Албена Ситнилска' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Виктория Йорданова' AND [age] = 27;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Ива Георгиева' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Мария Оряшкова' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Радосвета Симеонова' AND [age] = 29;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Теодора Мудева' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Теодора Маринова' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Цвети Станева' AND [age] = 22;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Даниел Димов' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Иван Рълев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Калоян Митов' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Крум Апостолов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Николай Костадинов' AND [age] = 32;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Пеньо Гатевски „Гатьо“' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Радостин Кръстев' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Цветелин Гешов' AND [age] = 25;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 4 FROM [dbo].[participant] WHERE [name] = N'Васил Василев' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 4 FROM [dbo].[participant] WHERE [name] = N'Веселина Маринова' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 4 FROM [dbo].[participant] WHERE [name] = N'Денислава Велкова' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 4 FROM [dbo].[participant] WHERE [name] = N'Елена Петрова' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 4 FROM [dbo].[participant] WHERE [name] = N'Михаил Кръстев' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Никол Дунев' AND [age] = 24;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 4 FROM [dbo].[participant] WHERE [name] = N'Николай Рълев' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 2, [id], 4 FROM [dbo].[participant] WHERE [name] = N'Румен Радев' AND [age] = 26;

COMMIT TRAN BATTLE2;

BEGIN TRAN BATTLE3;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Благомир Мастагарков' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Валентин Петров' AND [age] = 48;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Виолета Стайкова' AND [age] = 47;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Красимир Дунев' AND [age] = 50;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Мартин Николов „Елвиса“' AND [age] = 38;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Момчил Василев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Моника Николаева' AND [age] = 35;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Трифон Симеонов „Туньо“' AND [age] = 33;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Албена Ситнилска' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Виктория Йорданова' AND [age] = 27;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Ива Георгиева' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Мария Оряшкова' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Радосвета Симеонова' AND [age] = 29;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Теодора Мудева' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Теодора Маринова' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Цвети Станева' AND [age] = 22;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Даниел Димов' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Иван Рълев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Калоян Митов' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Крум Апостолов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Николай Костадинов' AND [age] = 32;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Пеньо Гатевски „Гатьо“' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Радостин Кръстев' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 3, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Цветелин Гешов' AND [age] = 25;

COMMIT TRAN BATTLE3;

BEGIN TRAN BATTLE4;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 4, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Красимир Дунев' AND [age] = 50;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 4, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Мария Оряшкова' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 4, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Пеньо Гатевски „Гатьо“' AND [age] = 41;

COMMIT TRAN BATTLE4;

BEGIN TRAN BATTLE5;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Благомир Мастагарков' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Валентин Петров' AND [age] = 48;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Виолета Стайкова' AND [age] = 47;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Красимир Дунев' AND [age] = 50;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Мартин Николов „Елвиса“' AND [age] = 38;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Момчил Василев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Моника Николаева' AND [age] = 35;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Трифон Симеонов „Туньо“' AND [age] = 33;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Албена Ситнилска' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Виктория Йорданова' AND [age] = 27;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Ива Георгиева' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Мария Оряшкова' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Радосвета Симеонова' AND [age] = 29;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Теодора Мудева' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Теодора Маринова' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Цвети Станева' AND [age] = 22;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Даниел Димов' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Иван Рълев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Калоян Митов' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Крум Апостолов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Николай Костадинов' AND [age] = 32;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Пеньо Гатевски „Гатьо“' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Радостин Кръстев' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Цветелин Гешов' AND [age] = 25;

COMMIT TRAN BATTLE5;

BEGIN TRAN BATTLE6;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 6, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Албена Ситнилска' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 6, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Виктория Йорданова' AND [age] = 27;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 6, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Ива Георгиева' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 6, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Мария Оряшкова' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 6, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Радосвета Симеонова' AND [age] = 29;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 6, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Теодора Мудева' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 6, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Теодора Маринова' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 6, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Цвети Станева' AND [age] = 22;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 6, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Даниел Димов' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 6, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Иван Рълев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 6, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Калоян Митов' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 6, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Крум Апостолов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 6, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Николай Костадинов' AND [age] = 32;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 6, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Пеньо Гатевски „Гатьо“' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 6, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Радостин Кръстев' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 6, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Цветелин Гешов' AND [age] = 25;

COMMIT TRAN BATTLE6;

BEGIN TRAN BATTLE7;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 7, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Васил Василев' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 7, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Веселина Маринова' AND [age] = 29;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 7, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Денислава Велкова' AND [age] = 24;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 7, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Елена Петрова' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 7, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Михаил Кръстев' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 7, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Никол Дунев' AND [age] = 24;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 7, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Николай Рълев' AND [age] = 19;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 7, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Румен Радев' AND [age] = 26;

COMMIT TRAN BATTLE7;

BEGIN TRAN BATTLE8;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 8, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Иван Рълев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 8, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Радостин Кръстев' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 8, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Момчил Василев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 8, [id], 4 FROM [dbo].[participant] WHERE [name] = N'Трифон Симеонов „Туньо“' AND [age] = 33;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 8, [id], 4 FROM [dbo].[participant] WHERE [name] = N'Благомир Мастагарков' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 5, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Валентин Петров' AND [age] = 48;

COMMIT TRAN BATTLE8;

BEGIN TRAN BATTLE9;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 9, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Момчил Василев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 9, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Трифон Симеонов „Туньо“' AND [age] = 33;

COMMIT TRAN BATTLE9;

BEGIN TRAN BATTLE10;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 10, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Филип Атанасов' AND [age] = 29;

COMMIT TRAN BATTLE10;

BEGIN TRAN BATTLE11;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Благомир Мастагарков' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Валентин Петров' AND [age] = 48;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Виолета Стайкова' AND [age] = 47;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Красимир Дунев' AND [age] = 50;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Мартин Николов „Елвиса“' AND [age] = 38;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Момчил Василев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Моника Николаева' AND [age] = 35;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Албена Ситнилска' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Виктория Йорданова' AND [age] = 27;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Ива Георгиева' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Мария Оряшкова' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Радосвета Симеонова' AND [age] = 29;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Теодора Мудева' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Теодора Маринова' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Цвети Станева' AND [age] = 22;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Даниел Димов' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Иван Рълев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Калоян Митов' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Крум Апостолов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Николай Костадинов' AND [age] = 32;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Пеньо Гатевски „Гатьо“' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Радостин Кръстев' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 11, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Цветелин Гешов' AND [age] = 25;

COMMIT TRAN BATTLE11;

BEGIN TRAN BATTLE12;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 12, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Албена Ситнилска' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 12, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Благомир Мастагарков' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 12, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Цветелин Гешов' AND [age] = 25;

COMMIT TRAN BATTLE12;

BEGIN TRAN BATTLE13;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 13, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Васил Василев' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 13, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Веселина Маринова' AND [age] = 29;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 13, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Денислава Велкова' AND [age] = 24;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 13, [id], 4 FROM [dbo].[participant] WHERE [name] = N'Елена Петрова' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 13, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Михаил Кръстев' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 13, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Никол Дунев' AND [age] = 24;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 13, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Николай Рълев' AND [age] = 19;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 13, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Румен Радев' AND [age] = 26;

COMMIT TRAN BATTLE13;

BEGIN TRAN BATTLE14;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Благомир Мастагарков' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Васил Василев' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Виолета Стайкова' AND [age] = 47;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Красимир Дунев' AND [age] = 50;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Мартин Николов „Елвиса“' AND [age] = 38;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Момчил Василев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Моника Николаева' AND [age] = 35;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Албена Ситнилска' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Виктория Йорданова' AND [age] = 27;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Ива Георгиева' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Мария Оряшкова' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Радосвета Симеонова' AND [age] = 29;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Теодора Мудева' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Теодора Маринова' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Цвети Станева' AND [age] = 22;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Даниел Димов' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Иван Рълев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Калоян Митов' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Крум Апостолов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Николай Костадинов' AND [age] = 32;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Пеньо Гатевски „Гатьо“' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Радостин Кръстев' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 14, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Цветелин Гешов' AND [age] = 25;

COMMIT TRAN BATTLE14;

BEGIN TRAN BATTLE15;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 15, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Благомир Мастагарков' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 15, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Васил Василев' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 15, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Виолета Стайкова' AND [age] = 47;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 15, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Красимир Дунев' AND [age] = 50;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 15, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Мартин Николов „Елвиса“' AND [age] = 38;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 15, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Момчил Василев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 15, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Моника Николаева' AND [age] = 35;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 15, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Даниел Димов' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 15, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Иван Рълев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 15, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Калоян Митов' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 15, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Крум Апостолов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 15, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Николай Костадинов' AND [age] = 32;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 15, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Пеньо Гатевски „Гатьо“' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 15, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Радостин Кръстев' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 15, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Цветелин Гешов' AND [age] = 25;

COMMIT TRAN BATTLE15;

BEGIN TRAN BATTLE16;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 16, [id] ,3 FROM [dbo].[participant] WHERE [name] = N'Виктория Йорданова' AND [age] = 27;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 16, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Виолета Стайкова' AND [age] = 47;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 16, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Моника Николаева' AND [age] = 35;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 16, [id], 4 FROM [dbo].[participant] WHERE [name] = N'Радосвета Симеонова' AND [age] = 29;

COMMIT TRAN BATTLE16;

BEGIN TRAN BATTLE17;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 17, [id] ,1 FROM [dbo].[participant] WHERE [name] = N'Виктория Йорданова' AND [age] = 27;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 17, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Радосвета Симеонова' AND [age] = 29;

COMMIT TRAN BATTLE17;

BEGIN TRAN BATTLE18;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Благомир Мастагарков' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Васил Василев' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Виолета Стайкова' AND [age] = 47;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Красимир Дунев' AND [age] = 50;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Мартин Николов „Елвиса“' AND [age] = 38;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Момчил Василев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Моника Николаева' AND [age] = 35;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Албена Ситнилска' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Виктория Йорданова' AND [age] = 27;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Ива Георгиева' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Мария Оряшкова' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Теодора Мудева' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Теодора Маринова' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Цветелин Гешов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Пеньо Гатевски „Гатьо“' AND [age] = 41;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Даниел Димов' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Иван Рълев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Калоян Митов' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Крум Апостолов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Николай Костадинов' AND [age] = 32;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Радостин Кръстев' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 18, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Цвети Станева' AND [age] = 22;

COMMIT TRAN BATTLE18;

BEGIN TRAN BATTLE19;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 19, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Момчил Василев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 19, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Ива Георгиева' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 19, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Крум Апостолов' AND [age] = 25;

COMMIT TRAN BATTLE19;

BEGIN TRAN BATTLE20;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 20, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Валентин Петров' AND [age] = 48;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 20, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Денислава Велкова' AND [age] = 24;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 20, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Елена Петрова' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 20, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Михаил Кръстев' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 20, [id], 4 FROM [dbo].[participant] WHERE [name] = N'Никол Дунев' AND [age] = 24;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 20, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Николай Рълев' AND [age] = 19;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 20, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Румен Радев' AND [age] = 26;

COMMIT TRAN BATTLE20;

BEGIN TRAN BATTLE21;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Благомир Мастагарков' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Васил Василев' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Виолета Стайкова' AND [age] = 47;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Красимир Дунев' AND [age] = 50;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Мартин Николов „Елвиса“' AND [age] = 38;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Моника Николаева' AND [age] = 35;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Виктория Йорданова' AND [age] = 27;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Албена Ситнилска' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Ива Георгиева' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Мария Оряшкова' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Теодора Мудева' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Теодора Маринова' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Пеньо Гатевски „Гатьо“' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Цветелин Гешов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Момчил Василев' AND [age] = 25;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Даниел Димов' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Иван Рълев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Калоян Митов' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Крум Апостолов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Николай Костадинов' AND [age] = 32;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Радостин Кръстев' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 21, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Цвети Станева' AND [age] = 22;

COMMIT TRAN BATTLE21;

BEGIN TRAN BATTLE22;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 22, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Албена Ситнилска' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 22, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Ива Георгиева' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 22, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Мария Оряшкова' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 22, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Теодора Мудева' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 22, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Теодора Маринова' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 22, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Пеньо Гатевски „Гатьо“' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 22, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Цветелин Гешов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 22, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Момчил Василев' AND [age] = 25;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 22, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Даниел Димов' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 22, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Иван Рълев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 22, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Калоян Митов' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 22, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Крум Апостолов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 22, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Николай Костадинов' AND [age] = 32;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 22, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Радостин Кръстев' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 22, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Цвети Станева' AND [age] = 22;

COMMIT TRAN BATTLE22;

BEGIN TRAN BATTLE23;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 23, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Васил Василев' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 23, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Даниел Димов' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 23, [id], 4 FROM [dbo].[participant] WHERE [name] = N'Мартин Николов „Елвиса“' AND [age] = 38;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 23, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Цвети Станева' AND [age] = 22;

COMMIT TRAN BATTLE23;

BEGIN TRAN BATTLE24;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 24, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Васил Василев' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 24, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Цвети Станева' AND [age] = 22;

COMMIT TRAN BATTLE24;

BEGIN TRAN BATTLE25;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Благомир Мастагарков' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Денислава Велкова' AND [age] = 24;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Виолета Стайкова' AND [age] = 47;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Красимир Дунев' AND [age] = 50;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Моника Николаева' AND [age] = 35;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Виктория Йорданова' AND [age] = 27;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Албена Ситнилска' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Ива Георгиева' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Мария Оряшкова' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Теодора Мудева' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Теодора Маринова' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Пеньо Гатевски „Гатьо“' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Цветелин Гешов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Момчил Василев' AND [age] = 25;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Даниел Димов' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Иван Рълев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Калоян Митов' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Крум Апостолов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Николай Костадинов' AND [age] = 32;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Радостин Кръстев' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 25, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Цвети Станева' AND [age] = 22;

COMMIT TRAN BATTLE25;

BEGIN TRAN BATTLE26;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 26, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Благомир Мастагарков' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 26, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Мария Оряшкова' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 26, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Николай Костадинов' AND [age] = 32;

COMMIT TRAN BATTLE26;

BEGIN TRAN BATTLE27;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 27, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Елена Петрова' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 27, [id], 4 FROM [dbo].[participant] WHERE [name] = N'Михаил Кръстев' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 27, [id], 5 FROM [dbo].[participant] WHERE [name] = N'Никол Дунев' AND [age] = 24;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 27, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Румен Радев' AND [age] = 26;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 27, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Мартин Николов „Елвиса“' AND [age] = 38;

COMMIT TRAN BATTLE27;

BEGIN TRAN BATTLE28;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Благомир Мастагарков' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Денислава Велкова' AND [age] = 24;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Красимир Дунев' AND [age] = 50;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Мартин Николов „Елвиса“' AND [age] = 38;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Моника Николаева' AND [age] = 35;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Виктория Йорданова' AND [age] = 27;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Даниел Димов' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Иван Рълев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Калоян Митов' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Крум Апостолов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Радостин Кръстев' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Цвети Станева' AND [age] = 22;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Албена Ситнилска' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Ива Георгиева' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Мария Оряшкова' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Теодора Мудева' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Теодора Маринова' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Пеньо Гатевски „Гатьо“' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 28, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Момчил Василев' AND [age] = 25;

COMMIT TRAN BATTLE28;

BEGIN TRAN BATTLE29;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 29, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Благомир Мастагарков' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 29, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Денислава Велкова' AND [age] = 24;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 29, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Красимир Дунев' AND [age] = 50;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 29, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Мартин Николов „Елвиса“' AND [age] = 38;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 29, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Моника Николаева' AND [age] = 35;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 29, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Виктория Йорданова' AND [age] = 27;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 29, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Даниел Димов' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 29, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Иван Рълев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 29, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Калоян Митов' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 29, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Крум Апостолов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 29, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Радостин Кръстев' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 29, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Цвети Станева' AND [age] = 22;

COMMIT TRAN BATTLE29;

BEGIN TRAN BATTLE30;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 30, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Виктория Йорданова' AND [age] = 27;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 30, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Момчил Василев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 30, [id], 4 FROM [dbo].[participant] WHERE [name] = N'Моника Николаева' AND [age] = 35;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 30, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Теодора Маринова' AND [age] = 22;

COMMIT TRAN BATTLE30;

BEGIN TRAN BATTLE31;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 31, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Благомир Мастагарков' AND [age] = 31;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 31, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Денислава Велкова' AND [age] = 24;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 31, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Красимир Дунев' AND [age] = 50;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 31, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Мартин Николов „Елвиса“' AND [age] = 38;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 31, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Виктория Пенелова' AND [age] = 0;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 31, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Даниел Димов' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 31, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Иван Рълев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 31, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Калоян Митов' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 13, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Крум Апостолов' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 31, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Радостин Кръстев' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 31, [id], 3 FROM [dbo].[participant] WHERE [name] = N'Цвети Станева' AND [age] = 22;

INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 31, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Албена Ситнилска' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 31, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Ива Георгиева' AND [age] = 20;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 31, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Мария Оряшкова' AND [age] = 34;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 31, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Теодора Мудева' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 31, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Теодора Маринова' AND [age] = 22;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 31, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Пеньо Гатевски „Гатьо“' AND [age] = 41;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 31, [id], 1 FROM [dbo].[participant] WHERE [name] = N'Момчил Василев' AND [age] = 25;
INSERT INTO [dbo].[battleParticipants] (battleLogId, participantId, [rank]) SELECT 27, [id], 2 FROM [dbo].[participant] WHERE [name] = N'Румен Радев' AND [age] = 26;

COMMIT TRAN BATTLE31;