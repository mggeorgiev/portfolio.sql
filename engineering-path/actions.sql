CREATE OR ALTER VIEW EngineeringPaths.V_AxisLevels AS
SELECT    EngineeringPaths.Levels.Id,
          EngineeringPaths.Axes.Name AS Axis,
          EngineeringPaths.Axes.Description AS AxisDescription,
          EngineeringPaths.Levels.Name As Level,
          EngineeringPaths.Levels.Description AS LevelDescription,
          EngineeringPaths.Levels.LevelId
FROM      EngineeringPaths.Levels
JOIN      EngineeringPaths.Axes ON EngineeringPaths.Axes.Id = EngineeringPaths.Levels.AxisId;

CREATE OR ALTER VIEW EngineeringPaths.V_JobLevels AS
SELECT    EngineeringPaths.Jobs.Company,
          EngineeringPaths.Jobs.Name AS Role,
          EngineeringPaths.Axes.Name as Axis,
          EngineeringPaths.Axes.Description as AxisDescription,
          EngineeringPaths.JobLevels.LevelId,
          EngineeringPaths.Levels.Name as Level,
          EngineeringPaths.Levels.Description as LevelDescription
FROM      EngineeringPaths.JobLevels
JOIN      EngineeringPaths.Jobs ON EngineeringPaths.Jobs.Id = EngineeringPaths.JobLevels.JobId
JOIN      EngineeringPaths.Axes ON EngineeringPaths.Axes.Id = EngineeringPaths.JobLevels.AxisId  
JOIN      EngineeringPaths.Levels ON EngineeringPaths.Levels.Id = EngineeringPaths.JobLevels.LevelId;