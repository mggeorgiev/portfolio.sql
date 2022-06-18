use warmathematics
GO

-- Create a new table called '[howitzer]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[howitzer]', 'U') IS NOT NULL
DROP TABLE [dbo].[howitzer]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[howitzer]
(
    [Id] INT IDENTITY(1,1) PRIMARY KEY, -- Primary Key column
    [howitzer_id] int,
    [charge] int,
    [trajectory_min_height] int,
    [range] int,
    [percent_range_max] int,
    [range_max] int
    -- Specify more columns here
);
GO

-- Create a new table called '[howitzers]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[howitzers]', 'U') IS NOT NULL
DROP TABLE [dbo].[howitzers]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[howitzers]
(
    [Id] INT IDENTITY(1,1) PRIMARY KEY, -- Primary Key column
    [Name] nVarchaR(50),
    [Abr] nVarchaR(50)
    -- Specify more columns here
);
GO


-- Create a new table called '[howitzercharge]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[howitzercharge]', 'U') IS NOT NULL
DROP TABLE [dbo].[howitzercharge]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[howitzercharge]
(
    [Id] INT IDENTITY(1,1) PRIMARY KEY, -- Primary Key column
    [charge] nvarchar(10),
    [charge_bg] nvarchar(10)
);
GO

-- Create a new table called '[howitzercharge]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[howitzercharge]', 'U') IS NOT NULL
DROP TABLE [dbo].[howitzercharge]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[howitzercharge]
(
    [Id] INT IDENTITY(1,1) PRIMARY KEY, -- Primary Key column
    [charge] nvarchar(10),
    [charge_bg] nvarchar(10)
);
GO