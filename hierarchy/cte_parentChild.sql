USE [tempdb]
GO

SET NOCOUNT ON;

USE tempdb;
DROP TABLE IF EXISTS [dbo].[ParentOf];
GO

CREATE TABLE [dbo].[ParentOf](
	[Parent] [varchar](255) NOT NULL,
	[Child] [varchar](255) NOT NULL,
	[BirthYear] [int] NULL
) ON [PRIMARY]
GO

INSERT INTO [dbo].[ParentOf] (Parent,Child,BirthYear) VALUES
	 (N'Alice',N'Carol',1945),
	 (N'Bob',N'Carol',1945),
	 (N'Carol',N'Dave',1970),
	 (N'Carol',N'George',1972),
	 (N'Dave',N'Mary',2000),
	 (N'Eve',N'Mary',2000),
	 (N'Mary',N'Frank',2020);
GO

SELECT Parent, Child, BirthYear
FROM [dbo].[ParentOf]
GO

DECLARE @root AS INT = 1945;
DECLARE @maxlevel AS INT = 4;
 
WITH C AS
(
  SELECT [Parent]
      ,[Child]
      ,[BirthYear]
      ,0 as generations_below
  FROM [dbo].[ParentOf]
  WHERE BirthYear = (SELECT MAX(BirthYear) FROM [dbo].[ParentOf]) 

  UNION ALL

  SELECT S.[Parent]
      ,S.[Child]
      ,S.[BirthYear]
      ,M.generations_below + 1
  FROM C as M
  INNER JOIN [dbo].[ParentOf] AS S
  on S.Child = M.Parent
  AND M.generations_below < @maxlevel
)
SELECT Parent, Child, BirthYear, generations_below
FROM C
ORDER by BirthYear, generations_below
OPTION (MAXRECURSION 15);
GO