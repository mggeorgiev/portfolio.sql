SELECT    Id,
          Axis,
          AxisDescription,
          [Level],
          LevelDescription,
          LevelId
FROM      EngineeringPaths.V_AxisLevels
ORDER BY  Axis,
          LevelId;

SELECT    *
FROM      EngineeringPaths.V_JobLevels
ORDER BY  Company,
          Role ,
          Axis;