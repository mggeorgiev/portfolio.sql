SELECT TOP (1000) [Species]
      ,[Weight]
      ,[Length1]
      ,[Length2]
      ,[Length3]
      ,[Height]
      ,[Width]
  FROM [data_science].[linear_regression].[Fish]
  ORdER BY [Weight], [Species]
GO

SELECT TOP (1000) [Species]
      ,[AVG_Weight]
      ,[AVG_Height]
      ,[AVG_Width]
      ,[AVG_Length1]
      ,[AVG_Length2]
      ,[AVG_Length3]
  FROM [data_science].[linear_regression].[V_AVG]
  GO
/*
http://www.stat.yale.edu/Courses/1997-98/101/linreg.htm
A linear regression line has an equation of the form y = mx + b, where x is the explanatory variable and y is the dependent variable. The slope of the line is m, and b is the intercept (the value of y when x = 0).

Slope is the line of chnage of Y over the change in X. 

Slope formula m = (yi - avg(y))/(xi - avg(x))
Slope=m
correlation=r
Standard deviation=S

m=r(sy/xy)
*/
SELECT
    [Weight], AVG([Weight]) over (PARTITION BY Species) as Weight_AVG
    ,[Height], AVG([Height]) over(PARTITION BY Species) as Height_AVG
FROM [data_science].[linear_regression].[Fish]
GO

SELECT
     SUM((m.[Weight]-m.Weight_AVG)*(m.Height-Height_AVG))/SUM(([Weight]-[Weight_AVG])*([Weight]-[Weight_AVG])) as Slope
    ,MAX(Weight_AVG) as MAX_Weight_AVG
    ,MAX(Height_AVG) as MAX_Height_AVG
FROM 
    (
        SELECT
            [Weight], AVG([Weight]) over () as Weight_AVG
            ,[Height], AVG([Height]) over() as Height_AVG
        FROM [data_science].[linear_regression].[Fish]
    ) as m
GO

