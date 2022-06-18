INSERT INTO [warmathematics].[dbo].[howitzercharge] ([charge_bg]) VALUES
    (N'Пълен')
    ,(N'Намален')
    ,(N'Първи')
    ,(N'Втори')
    ,(N'Трети')
    ,(N'Четвърти');
GO

INSERT INTO [warmathematics].[dbo].[howitzer] ([charge],[trajectory_min_height],[range],[percent_range_max],[range_max]) VALUES
    (1,500,7900,52,15260)
    ,(1,750,9100,60,15260)
    ,(2,500,6900,53,12874)
    ,(2,750,9100,62,12874) 
    ,(3,500,6400,56,11521)
    ,(3,750,7500,65,11521)
    ,(4,500,5800,57,10043)
    ,(4,750,6950,69,10043)
    ,(5,500,5400,64,8355)
    ,(5,750,6400,76,8355)
    ,(6,500,4700,74,6356)
    ,(6,750,5420,85,6356);
GO