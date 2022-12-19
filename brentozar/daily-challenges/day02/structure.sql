USE tempdb;
GO

-- Create a new table called '[day_two_single_row]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[day_two_single_row]', 'U') IS NOT NULL
DROP TABLE [dbo].[day_two_single_row]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[day_two_single_row]
(
    [Id] INT identity(1,1), -- Primary Key column
    [rounds] NVARCHAR(max)
)
GO

USE tempdb;
GO

-- Create a new table called '[day_two]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[day_two]', 'U') IS NOT NULL
DROP TABLE [dbo].[day_two]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[day_two]
(
    [Id] INT identity(1,1), -- Primary Key column
    [move_one] varchar(1),
    [move_two] varchar(1)
)
GO

USE tempdb;
GO

INSERT into [dbo].[day_two_single_row]([rounds])
VALUES(
'B Z
A X
C X
C X
C Z
C X
C X
A Z
C X
B Z
B Z
C X
A X
C X
C X
C X
C Y
C X
C Z
C X
C X
C X
C X
C X
C Z
C X
C X
A X
C X
B Y
A X
B X
A Z
C X
B Y
A X
C Z
C X
C Z
A X
A Y
B Z
A Z
C X
A Z
A Z
A Y
C Y
A Y
A Z
C X
A Y
B Y
A Z
B Y
C Z
A X
C X
C Z
B Z
C X
B Y
C X
A Z
C X
A X
C X
C X
A Z
B Z
C X
C X
C Z
C X
B X
C X
A Z
A X
A Y
A Y
A Z
C X
C Z
C X
B Y
C X
C X
A X
A X
C Z
C X
B X
C Z
C X
C X
C X
B Z
B Y
A Z
C X
A Z
C X
C Z
A Z
C X
A X
C X
C Z
C Z
C X
C Z
A Y
C X
A X
A Z
A X
C Y
B X
C X
A X
A Y
A X
B Y
A X
C X
B Y
A Z
C X
B X
C X
A Y
C Z
C X
C Z
C X
A Y
A Z
C X
A Z
B Y
C X
A Z
C X
C Z
B Z
C X
C Z
C X
C Z
C X
A Y
C X
C X
A Z
C Z
C X
A X
C X
C X
B Y
C X
C X
C X
C X
C X
A Y
C Z
C X
C X
C Z
B X
C X
C X
C Z
B Y
B Y
C X
C X
A Z
C Z
C X
C Z
C X
A Y
A X
A X
A Y
C X
C X
C X
A Z
B Z
C Z
A Y
A Y
C X
C X
B Y
C X
C X
C X
A Z
B Y
B Y
C X
C Y
C X
C Z
B Y
C X
C X
C Z
A X
B Y
C X
A Z
C X
A Z
C X
A Z
C X
C Z
C X
A Z
C X
A X
C Z
A Z
A Y
C X
C Z
B Y
A Z
C X
B Y
B X
A Z
C X
C Y
A X
C Z
A X
C Z
C Z
C Z
A Z
C X
C X
A Z
C X
A X
C X
B X
C X
C X
C Z
C X
C X
C Z
C X
A Y
C Z
C Z
A X
A Z
B X
C X
C X
B X
C Y
C X
A Y
C Z
A X
C X
A Y
A Z
C X
A Y
A Z
A Z
C Z
C X
A Y
C X
A X
C X
C X
C X
A Z
C X
C X
A Z
A X
C X
B Y
B X
C X
C X
A Y
A Z
B Z
C Z
A Z
A X
C Z
A X
C X
B X
C X
B X
C X
A X
C Z
C X
A Z
A Y
C X
C Z
C X
A X
C X
B Y
A Z
C X
C Z
A X
C X
A Z
C X
B Y
C X
C Y
C Y
B Z
C Z
A X
B Z
C X
C X
A Z
A X
C X
A X
B Z
A Z
B Y
B Y
C X
C X
A Z
A Z
B Z
A Z
A Z
A Z
B Y
C Z
A Y
A X
C X
C X
C X
C X
C Z
B Y
C X
A Z
B Y
B Y
C X
C X
A X
C X
C Z
C X
A X
A Z
C Z
C Z
B Z
B Y
C Z
C Z
A X
B Y
C X
C Z
B Y
C X
C X
C X
C X
B Z
C X
B X
C Y
C Z
A Z
C X
C X
C X
A Z
C X
B Z
C Z
C Z
C X
C Z
A Z
C X
C X
C X
C Z
C Z
C X
C X
C Z
C X
C Z
C X
A Z
C X
B Z
B X
B Z
A Z
A Z
B Y
C Y
C X
C X
C X
C X
A X
C X
A X
C X
C X
A Z
C X
C X
B Y
C Z
C X
C X
A Y
A X
C Z
C Z
C X
C X
C X
B X
C Z
C X
C X
C X
B X
A Y
B Z
C X
B Y
C X
C X
C X
B X
B Y
A Z
A Z
A Z
C X
A Z
C Z
B Z
C X
A Z
C X
C X
C X
A Y
B Y
C X
B Y
C Z
C X
B X
A Z
C X
A X
C X
C Z
C Z
B Y
C Z
C X
C X
B X
C X
C X
C X
C X
A Z
B Y
A X
C X
A Y
B X
A Z
A Z
C X
A Y
C Z
A Z
A X
A Y
C X
C Z
C Z
C Z
C X
B Y
C X
A Y
C X
A Z
C X
C Z
C X
B X
C Z
C Y
C X
B Z
A X
B X
C X
B Y
C Z
C Z
C Z
C X
A Z
C Z
C X
C X
C X
B Z
C X
C X
A Z
C X
A Z
C Z
A Z
A Z
A Z
C X
A X
C X
A Z
A Y
C X
A Z
C X
B Y
A X
C Z
A Z
C Z
A Y
C X
A Z
C Z
C X
C X
C X
C Y
C X
A Y
A Z
A X
C Z
C Z
A Y
C X
C X
B Y
B Z
C X
B Y
C Z
C Z
C X
C Z
B Y
C Z
B Y
C Z
B Y
C X
A X
A X
C X
A Z
A Z
C X
C X
B Y
A Z
C Z
A X
C Z
C X
C Y
A Z
A Z
C X
C X
A X
C X
C Z
C X
B Z
C X
A Z
A Z
C X
A Z
A X
A Z
C Y
B Y
C X
C X
C Z
C Z
C Z
C Z
C X
A X
C X
B Y
C X
B Y
B Y
B X
C X
C X
C X
C X
C X
C Z
A X
C X
C X
A Z
A Z
C X
A Z
C X
C Z
C X
B Z
A Z
C X
C X
C X
C Z
A Z
B Y
C X
C X
C Z
C X
C X
C X
A Z
B Z
A X
C Z
C X
C X
A X
C X
C X
C X
A Z
A Y
C Y
C Z
C X
C Z
C Z
A Z
C X
C X
B X
C Z
A Y
C X
C X
C X
C Z
C X
C Z
C X
C X
C X
B X
C X
A Z
B X
B Y
C X
A Z
A Z
C X
A Y
C X
C Z
A Z
B Z
A Z
B Y
A X
A Y
B X
C X
B Z
C Z
B Y
C X
A Z
C Z
C Z
C Z
B X
C X
A X
B Y
C X
C X
A X
B Z
B X
C X
C X
A X
C X
C X
C X
C X
C Z
C X
A Z
B Y
A Y
B Y
A X
C X
A Y
A Z
C X
C X
B Y
C X
B Y
C Z
C X
C X
B Y
C X
A Z
C Z
C X
C X
C Z
C X
C X
B Y
B Y
C X
C X
C X
C X
C X
A Z
C X
C X
B Z
B Y
A Z
C X
C X
C X
A Y
C X
A Y
A X
A Z
B X
C X
A X
B X
A Z
C Z
C X
A Z
A X
C X
C X
C X
C X
B Z
A X
A X
C Z
C X
C X
A Y
C Z
C X
B Y
C X
B Y
C X
C X
B X
C X
A Z
C Z
C X
C X
C X
C X
A Z
A Y
C Z
C X
B X
A Y
A X
A X
B X
C X
C X
A X
C X
C Z
A X
C Z
C X
B Y
C X
C X
C Z
C X
B Z
C X
C X
C Z
B Z
C X
C Z
A Z
C X
B X
C X
C X
C X
C X
C X
C X
A Z
A Z
B Z
A Y
A Z
B X
A Y
B Y
C X
C X
C Z
C X
C X
C X
A Y
C X
C X
B X
C Z
C X
C X
C X
C X
B Y
A Y
C X
A Z
C X
C X
C Z
C X
C Z
C X
C X
B Y
A Z
B X
A X
C X
C Z
C X
C X
C X
C X
C X
B Z
C X
C X
C Z
B Y
C X
B Y
C X
C X
C X
C X
C Z
C X
A Y
C X
C Z
A Y
A X
B Z
C Z
C X
A X
C X
A Y
C X
C X
B X
C X
B X
B Z
A Z
A X
C X
A Z
C X
C X
C X
C X
A Y
C Y
A X
C Z
A Y
C X
A Z
C X
C X
C X
A Y
C X
C X
C X
C X
A X
C X
A Z
A Z
A X
A Z
C Z
C X
B Y
A Y
C X
C X
C X
C X
A Z
C X
A Z
B X
B Y
C X
A Z
A X
C X
C Z
C X
C X
C Z
C X
C Z
B X
C X
C X
C X
A X
A Z
C Z
C Y
C X
A Y
B Y
C X
B Y
C X
C X
C X
A Z
C X
B Z
A Y
C X
C X
B Y
A X
C Z
C X
B Y
C Z
A Y
B Y
B Z
C X
C X
A Z
C X
C Z
C Y
A X
B Y
C Y
A X
C Z
C Y
C X
A Y
B Z
C X
A Z
C X
B Y
C X
C Y
C X
C Z
C X
A Z
C Z
C X
C X
C X
B X
A Z
C X
C X
C Z
C Y
C Z
C X
C X
C Z
A X
C Z
C Y
B Y
C X
B Y
C Z
C X
C X
C X
A X
B X
C X
B Z
A Y
C X
C Z
B Y
C X
C X
C X
C Z
C X
C X
C X
C X
A Y
C X
B X
C Y
A X
B Y
A Z
C X
C X
A Z
C Z
C X
C Z
A Y
A X
C Z
A Z
C Y
A Z
B Y
C X
A Z
C X
C Z
C X
C X
C X
C X
C X
C X
C X
C X
C X
C X
C X
C X
C Z
B X
A Y
C X
C X
C Z
A Y
A Z
A Z
B Y
C X
C Z
C X
C Z
C X
C X
C X
C X
A Z
A X
A Z
C X
A Y
B Y
C X
C Y
A Z
B X
C Z
A X
C X
C X
C X
C X
C X
A Y
A Z
C X
C X
A X
C Z
A Z
A X
C X
B Y
A X
C Z
B Y
C X
A Z
B Z
C X
C Z
C Z
B X
B Y
C Z
A X
C Z
C Z
A Y
A Y
C X
C X
C X
C X
A Y
C X
A Z
C X
C X
C X
C X
C X
B Y
C Z
C X
C X
C Z
C X
C X
B Z
C X
A Z
A Z
C X
A X
C X
C X
B Z
C X
A Z
C X
B X
C X
C Z
C X
A X
C X
B Y
A X
C Z
C Z
C X
C X
C Z
C X
C X
C X
A Z
A X
C X
B X
C Z
A Z
C Z
B Z
C X
A X
C X
C X
C Z
C X
A Y
A Y
C Z
C X
B Y
B Z
C X
B X
C X
C X
A Z
C Z
C Z
C X
B X
A Z
C X
C Z
A X
C Z
C Z
A Z
A Y
A Z
C X
C X
C X
A Z
A Y
C X
A Z
B Z
C X
B X
B X
C Z
C Z
C Z
C X
C X
C X
A Z
C X
C X
C X
C X
A Z
C X
C Y
A X
C X
C X
B Y
C X
C X
A X
C Z
C Z
C Z
A Z
C X
C X
C X
A Y
C Z
C X
C X
C X
C Y
C Z
C X
C X
C X
C X
A Z
C X
C X
A X
C X
A X
C X
C X
A Z
C X
C X
A Y
C Z
A X
A Y
C X
A Z
B Y
B Y
A X
C Z
C X
C X
C X
A X
A Z
B Y
C X
A Y
C X
C X
B Y
C X
C X
C X
B Y
C X
C Z
C X
C Z
A Y
B Y
C X
C Z
C X
B X
A Z
C Z
C Z
C Z
C X
B Z
C X
B X
C Y
C Z
C X
C X
C Z
A Z
B X
C X
C X
A Z
C X
A Z
C X
A Y
C X
C Z
A Z
A X
C X
B X
C X
C X
C X
C Y
B X
C X
B Y
C X
C Y
A Z
A Y
C X
A Z
C Z
A Y
B Y
C Z
A X
A X
B X
C X
C X
C Z
A X
B Y
A X
C Z
C X
C X
C X
A X
C X
C X
C X
C Y
C X
C X
C Z
C X
C X
C X
A Z
B X
A Z
C X
A X
C X
B Y
B Z
C X
C X
A Z
C X
A Y
B X
C X
C X
C Z
B Y
C X
A Y
C X
B Z
C X
A Z
C Z
C X
C X
C X
C Z
A X
B X
C Z
B Y
C Z
C X
B Y
A Z
C X
C X
C X
C X
C Z
A X
A Y
A Z
C X
C X
B Y
B Y
C X
A X
B Y
A Y
C X
C X
C X
A X
B X
B Y
A Z
C X
C X
C Z
A X
C X
A X
A Z
C X
A Z
C X
C Z
C Z
B Z
C X
B Y
C Z
C X
A Z
C X
C X
C X
C X
C X
C Y
C X
C X
A Z
C X
A X
A Y
B Y
C X
A Y
B X
C Z
C X
A Z
C X
C X
C X
A Z
B Z
C Z
B Z
C X
C X
C Y
C Z
C X
C Z
C X
C X
C X
B X
C X
C X
A Z
B Y
C Z
C Z
C X
A Z
B Y
A X
C X
A Z
C Z
C X
C X
A Z
A X
C Y
B Z
A X
C X
A Z
C X
C Z
A Z
C X
A Y
C X
C X
B Z
C X
C Z
A Z
A Z
C X
B Z
B X
A Z
A X
C X
C X
C X
C Z
C X
A X
C X
C X
B X
C Z
C X
C X
C Y
A Z
B Y
A Z
B Y
C X
A Z
C Z
C Y
B Z
A X
C X
C X
A Y
B Y
A X
C Z
A Z
C X
C X
B Y
B Y
C X
C X
C X
C X
C X
C Z
A X
A X
A X
C Z
C X
A X
C Z
B Z
C Z
C X
A X
A Y
C X
A Z
C X
C X
C Z
C Z
C X
A X
A X
C Y
A Y
C X
C Z
A X
A Y
A Z
B Y
C X
B Y
A Z
B X
C X
C Z
C X
B Z
A Z
A Z
C Z
C X
C X
C Y
C X
B X
C X
C Z
A X
C Y
A Z
C X
C X
A Z
A Z
A Z
C Z
A Z
C X
B X
B Y
C X
A Z
C Z
C X
C X
C X
A X
B Y
A Z
B Y
C X
B Z
A Z
C Z
C Z
C X
C X
C X
A Z
C X
A X
C Z
A Y
C X
A Y
C X
C Z
C X
C X
C X
B Y
C X
B Y
C Z
B Y
B Z
A Z
A X
C Z
C X
C X
B Y
B Y
A Z
C X
C Z
C Z
C Z
B Z
B Y
B X
C X
C X
C X
C Z
C X
C X
B Y
C X
C X
B Y
C X
C X
C X
C X
A Y
C X
C X
A Z
C Z
A Z
A Z
A Y
A Z
C Z
C X
C X
C X
C X
B Y
A Z
C X
C X
B Y
A Y
A Z
A Z
C Z
C X
C Y
C X
C X
B Y
C X
A X
B X
B Y
C Z
A X
C X
C X
A X
C X
A Y
A Y
C X
C X
B Y
C X
A Z
C Z
A X
C X
A Z
C X
C X
C X
C Z
A Z
B X
C X
A Z
C Z
B Y
C X
C X
B X
C X
C X
A Y
B Z
B Y
C X
C X
C X
C Z
C X
C X
C X
B Y
C X
C Z
C X
A Z
B Y
A X
B Y
A Z
C X
C X
A Z
B Y
C X
A Z
C X
A Z
A Z
B Z
A Y
A Z
C X
C Z
C X
A X
C X
B Y
B X
C Z
C X
B Y
C Z
C X
B Y
C X
C Y
C Z
A X
B Z
C X
C X
C Z
A Z
C X
C Z
A Z
C X
C X
C Z
C Z
B Y
A Z
C X
B X
B Y
C X
C X
C X
C X
B Z
A Z
C X
A Z
A X
A Z
C X
A X
C Z
A Z
C Z
B Z
B Y
C X
A X
C Z
C Z
A Y
B X
C X
C X
A X
C X
C X
C X
A Z
A Z
C X
A Z
C Z
C Z
C X
C Z
B Y
C X
C X
C X
A Z
A Z
C X
C X
C X
C Z
A Z
C X
A X
C Z
C X
B Y
C X
C Z
C X
C X
A X
A X
B Y
C Z
C X
C Z
A Z
C X
A X
A Z
C X
C X
C Y
C X
A Z
C X
A Z
B X
A X
A Z
A Z
A Z
A Y
A X
C X
C X
A Z
C Z
C X
C X
A Z
C Z
C X
C X
C X
C X
C X
C X
A Z
A Y
C Z
C X
A Z
A X
C X
C Z
A Z
C X
B Y
A Z
A Z
C X
A Z
C X
C X
A Z
C X
C Y
C X
C X
B Y
A Y
A Z
C X
C X
B Y
C X
C X
C Z
C Z
C X
B X
C X
C Z
A Y
C Z
B Y
C X
C X
B Y
A Z
B Y
C Z
A Y
A Z
B Y
A X
C X
C X
C Z
C X
A X
C X
C X
C Z
A Z
A Z
A Z
C Z
B X
A Z
A Z
C X
C X
C X
A Y
A Z
C Z
C X
C Z
C X
A Z
C Z
A Z
C X
B Y
C Z
C X
C X
A Z
C Z
C Z
B X
C Z
C Z
A Z
A Y
C X
C X
C Z
C X
A X
C X
C X
C X
C Z
B Y
B Y
C X
B Y
C X
C X
C X
A Z
B Z
C X
C X
C X
C X
C Z
C X
C X
C X
A Z
C X
B Y
C X
A Y
B Z
A Z
C X
B X
A Y
C Z
C X
C X
C X
C Z
A Y
C Y
C X
A Y
A Y
C X
C X
C X
C X
C Z
B X
C X
C X
C X
A Z
B X
C X
C X
B Y
C X
C X
C X
A Z
C X
C X
C X
B Y
C X
B Z
B X
C Z
C X
C Z
C X
B X
A Z
C X
C X
A Z
C Z
C X
A Z
B Z
C X
A X
A Z
C Z
C X
C X
B X
B X
C X
B X
C X
C Z
C X
C X
A Y
A X
A X
C Z
C Z
A Z
C Z
C X
C X
C X
C Z
A X
C Z
A X
C Z
C X
C X
A Y
C Z
A Z
A X
A Z
B Y
C X
C Z
C X
C X
A X
A X
C X
C X
C X
C X
A Z
C X
C Z
A X
C X
B Y
C Z
C X
A X
C X
C Z
C X
A X
A X
A X
C X
A Z
A X
C Z
C Z
C X
C Y
A Y
C X
C X
B X
C X
C X
C Z
B Y
A Z
C X
B Y
A Z
C Z
A Z
A Y
C Z
B Z
A X
B Z
C Z
A X
C Z
A Z
A Z
B Z
C X
C X
C X
C X
A X
C X
C X
C X
C X
C X
B Y
C X
C X
C X
B Z
A Y
A X
C Z
C X
A Y
B Y
C X
A Y
A Z
B X
A Z
C X
B Y
C X
A Z
A Z
C X
A Z
A Z
C X
A X
A Z
C Z
B Z
C X
A X
C Y
A Y
C X
A Z
C X
C X
C X
C Z
C X
C X
C X
A Y
B Z
A X
A Z
A Z
C X
A X
B X
C X
B X
C X
A Z
A X
C X
A X
A Y
A Y
A Z
A Z
C X
B X
C X
A Y
C Z
A Z
C X
C X
A Y
A Z
B Y
C X
C X
C X
C X
C X
A Z
C Z
C X
C X
C Z
C X
C Z
B Y
C X
A Z
B X
C Z
C X
C Z
C Z
C Z
C X
C X
C Z
C X
C Z
B Y
C X
C X
A Z
C X
C X
B Y
C X
C Z
C X
B X
C Z
A X
C X
C Z
C X
C Z
B Y
C X
A Z
A Y
C X
C Y
B Z
B X
C X
C X
C Z
C X
B Y
C X
A Z
A Y
C X
B Y
C X
C Z
B Y
C X
A Y
C X
C X
C X
A Z
C Z
C X
C X
A X
A Z
C X
C X
A Y
C X
B Y
C Z
C Z
C Z
B Y
C X
C X
C X
C X
A Y
A Z
A X
C Z
A Z
A Z
A Z
C X
A Y
B X
A Z
C X
C X
B X
C X
C X
C X
B Y
A Z
A X
A Z
C X
B X
A X
C X
C X
C X
C X
C X
C Z
A Z
C X
C X
C Z
C X
A Y
A Z
C X
A Z
C X
A Z
C Z
A Z
C X
C X
C X
C X
C X
C X
C X
C X
C X
C X
C X
C X
C X
C X
C X
C X
B Z
C X
A X
C Z
C X
A X
C Z
A X
B Y
A Y
C X
A Z
C X
C X
C X
C X
C X');

INSERT INTO [dbo].[day_two]([move_one], [move_two])
SELECT 
    SUBSTRING(value, 1, 1),
    SUBSTRING(value, 3, 1)
    FROM 
    (
        SELECT 
            * 
            FROM STRING_SPLIT(
                                (SELECT 
                                    [rounds]
                                    FROM [dbo].[day_two_single_row])
                                , CHAR(10) 
                            )        
    ) as t;