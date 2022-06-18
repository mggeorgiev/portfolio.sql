SELECT TOP (1000) s21.[Id]
      ,s21c.[charge_bg]
      ,[trajectory_min_height]
      ,[range]
      ,[percent_range_max]
      ,[range_max]
  FROM [warmathematics].[dbo].[howitzer] s21
  JOIN [warmathematics].[dbo].[howitzercharge] s21c on s21.charge = s21c.id
GO
