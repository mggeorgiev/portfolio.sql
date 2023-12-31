USE [desafio];
GO

-- Create a new table called '[battleLog]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[battleLog]', 'U') IS NOT NULL
DROP TABLE [dbo].[battleLog]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[battleLog]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY, -- Primary Key column
    [battleId] INT,
    [seasonId] INT NOT NULL,
    [name] NVARCHAR(50),
    [type] NVARCHAR(50),
    [sequenceNumber] INT,
    [episode] INT,

    -- Specify more columns here
);
GO

INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Териториална', N'Отборна',1, 1);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Елиминаионна', N'Отборна',2, 2);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Териториална', N'Отборна',3, 3);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Капитанска', N'Индивидуална',4, 4);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Номинационна', N'Отборна',5, 5);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Номинационна', N'Отборна',6, 6);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Ресурсна', N'Отборна',7, 7);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Спасение', N'Индивидуална',8, 8);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Елиминационна', N'Индивидуална',9, 8);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Кастинг', N'Индивидуална',10, 8);

INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Териториална', N'Отборна',11, 9);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Капитанска', N'Индивидуална',12, 10);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Влизане', N'Индивидуална',13, 10);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Номинационна', N'Отборна',14, 11);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Номинационна', N'Отборна',15, 12);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Спасение', N'Индивидуална',16, 13);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Елиминационна', N'Индивидуална',17, 13);

INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Териториална', N'Отборна', 18, 15);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Капитанска', N'Индивидуална', 19, 16);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Влизане', N'Индивидуална', 20, 17);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Номинационна', N'Отборна', 21, 17);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Номинационна', N'Отборна', 22, 18);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Спасение', N'Индивидуална', 23, 19);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Елиминационна', N'Индивидуална', 24, 20);

INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Териториална', N'Отборна', 25, 21);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Капитанска', N'Индивидуална', 26, 22);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Влизане', N'Индивидуална', 27, 22);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Номинационна', N'Отборна', 28, 23);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Номинационна', N'Отборна', 29, 24);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Елиминационна', N'Индивидуална', 30, 25);

INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Териториална', N'Отборна', 31, 26);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Капитанска', N'Индивидуална', 32, 27);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Влизане', N'Индивидуална', 33, 28);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Номинационна', N'Отборна', 34, 29);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Номинационна', N'Отборна', 35, 30);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Спасение', N'Индивидуална', 36, 31);
INSERT INTO [desafio].[dbo].[battleLog] ([battleId],[seasonId], [name], [type],[sequenceNumber], [episode] ) VALUES (1, 5, N'Елиминационна', N'Индивидуална', 37, 32);