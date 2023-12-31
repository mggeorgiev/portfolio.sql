USE desafio;
GO

-- Create a new table called '[teritory]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[teritory]', 'U') IS NOT NULL
DROP TABLE [dbo].[teritory]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[teritory]
(
    [id] INT NOT NULL PRIMARY KEY IDENTITY, -- Primary Key column
    [name] NVARCHAR(50) NOT NULL
);
GO

INSERT INTO [desafio].[dbo].[teritory] ([name]) VALUES (N'Резиденция');
INSERT INTO [desafio].[dbo].[teritory] ([name]) VALUES (N'Стопанството');
INSERT INTO [desafio].[dbo].[teritory] ([name]) VALUES (N'Дивата река');
INSERT INTO [desafio].[dbo].[teritory] ([name]) VALUES (N'Чистилище');
INSERT INTO [desafio].[dbo].[teritory] ([name]) VALUES (N'Плажа');

