CREATE TABLE [linear_regression].[Fish](
	[Species] [nvarchar](50) NULL,
	[Weight] [float] NULL,
	[Length1] [float] NULL,
	[Length2] [float] NULL,
	[Length3] [float] NULL,
	[Height] [float] NULL,
	[Width] [float] NULL
) ON [PRIMARY]
GO

CREATE VIEW [linear_regression].[V_AVG] AS
SELECT
    [Species]
    ,AVG([Weight]) as AVG_Weight
    ,AVG([Height]) as AVG_Height
    ,AVG([Width]) as AVG_Width
    ,AVG([Length1]) as AVG_Length1
    ,AVG([Length2]) as AVG_Length2
    ,AVG([Length3]) as AVG_Length3
FROM [data_science].[linear_regression].[Fish]
GROUP BY [Species]
GO