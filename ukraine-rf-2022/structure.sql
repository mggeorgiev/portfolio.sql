-- Create a new table called '[organization]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[organization]', 'U') IS NOT NULL
DROP TABLE [dbo].[organization]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[organization]
(
    [Id] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [Country] NVARCHAR(50) NOT NULL,
    [Name] NVARCHAR(50) NOT NULL,
    [ParentId] int  
    -- Specify more columns here
);
GO

-- Create a new table called '[Element]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Element]', 'U') IS NOT NULL
DROP TABLE [dbo].[Element]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Element]
(
    [Id] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [Name] NVARCHAR(50) NOT NULL,
    [Number] INT NOT NULL,
    [Organization_id] int 
    -- Specify more columns here
);
GO

-- Create a new table called '[Arms]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Arms]', 'U') IS NOT NULL
DROP TABLE [dbo].[Arms]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Arms]
(
    [Id] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [Name] NVARCHAR(50), 
    [Type] NVARCHAR(50), 
    [Country] NVARCHAR(50)
    -- Specify more columns here
);
GO