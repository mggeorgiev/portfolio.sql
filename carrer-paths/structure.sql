--CREATE SCHEMA EngineeringPaths AUTHORIZATION dbo;

DROP TABLE EngineeringPaths.CareerPaths;

CREATE TABLE EngineeringPaths.CareerPaths (
	Id int IDENTITY(1,1) NOT NULL,
	Name nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Description nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK_CareerPaths PRIMARY KEY (Id)
);

INSERT INTO EngineeringPaths.CareerPaths (Name,Description) VALUES
	 (N'Seniority',N'Senior individual contributor (IC) is a type of career destination that typically refers to a highly skilled engineer. These individuals are technical experts in their field and may even act as leaders for others, but they primarily focus on completing the work themselves rather than managing a team. They do not own their own company or work independently.'),
	 (N'Management',N'Engineering managers require a strong understanding of technical concepts and skills, but their primary responsibilities involve leading, overseeing, hiring, and mentoring other technical professionals. These management skills are also crucial and not commonly found in abundance.'),
	 (N'Independence',N'Consultant offers independent advice to the client, while a contractor follows the client''s instructions. In other words, a consultant makes decisions on their own, while a contractor is not autonomous.');

DROP TABLE EngineeringPaths.Axes;

CREATE TABLE EngineeringPaths.Axes (
	Id int IDENTITY(1,1) NOT NULL,
	Name nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Description nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	PRIMARY KEY (Id)
);

INSERT INTO EngineeringPaths.Axes (Name, [Description]) VALUES ('Technology', 'knowledge of the tech stack and tools');
INSERT INTO EngineeringPaths.Axes (Name, [Description]) VALUES ('System', 'level of ownership of the system(s)');
INSERT INTO EngineeringPaths.Axes (Name, [Description]) VALUES ('People', 'relationship with the team(s)');
INSERT INTO EngineeringPaths.Axes (Name, [Description]) VALUES ('Process', 'level of engagement with the development process');
INSERT INTO EngineeringPaths.Axes (Name, [Description]) VALUES ('Influence', 'scope of influence of the position');

DROP TABLE EngineeringPaths.Levels;

CREATE TABLE EngineeringPaths.Levels (
	Id int IDENTITY(1,1) NOT NULL,
	Name nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Description nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	AxisId int NOT NULL,
	LevelId int NOT NULL
	PRIMARY KEY (Id)
);

INSERT INTO EngineeringPaths.Levels (Name, [Description], [AxisId], [LevelId]) VALUES 
	('Adopts', 'actively learns and adopts the technology and tools defined by the team', (select Id from EngineeringPaths.Axes where Name = 'Technology'), 1),
	('Specializes', 'is the go-to person for one or more technologies and takes initiative to learn new ones', (select Id from EngineeringPaths.Axes where Name = 'Technology'), 2),
	('Evangelizes', 'researches, creates proofs of concept and introduces new technologies to the team', (select Id from EngineeringPaths.Axes where Name = 'Technology'), 3),
	('Masters', 'has very deep knowledge about the whole technology stack of the system', (select Id from EngineeringPaths.Axes where Name = 'Technology'), 4),
	('Creates', 'designs and creates new technologies that are widely used either by internal or external teams', (select Id from EngineeringPaths.Axes where Name = 'Technology'), 5);

INSERT INTO EngineeringPaths.Levels (Name, [Description], [AxisId], [LevelId]) VALUES 
	('Enhances', 'successfully pushes new features and bug fixes to improve and extend the system', (select Id from EngineeringPaths.Axes where Name = 'System'), 1),
	('Designs', 'designs and implements medium to large size features while reducing the system''s tech debt', (select Id from EngineeringPaths.Axes where Name = 'System'), 2),
	('Owns', 'owns the production operation and monitoring of the system and is aware of its SLAs', (select Id from EngineeringPaths.Axes where Name = 'System'), 3),
	('Evolves', 'evolves the architecture to support future requirements and defines its SLAs', (select Id from EngineeringPaths.Axes where Name = 'System'), 4),
	('Leads', 'leads the technical excellence of the system and creates plans to mitigate outages', (select Id from EngineeringPaths.Axes where Name = 'System'), 5);

INSERT INTO EngineeringPaths.Levels (Name, [Description], [AxisId], [LevelId]) VALUES 
	('Learns', 'quickly learns from others and consistently steps up when it is required', (select Id from EngineeringPaths.Axes where Name = 'People'), 1),
	('Supports', 'proactively supports other team members and helps them to be successful', (select Id from EngineeringPaths.Axes where Name = 'People'), 2),
	('Mentors', 'mentors others to accelerate their career-growth and encourages them to participate', (select Id from EngineeringPaths.Axes where Name = 'People'), 3),
	('Coordinates', 'coordinates team members providing effective feedback and moderating discussions', (select Id from EngineeringPaths.Axes where Name = 'People'), 4),
	('Manages', 'manages the team members'' career, expectations, performance and level of happiness', (select Id from EngineeringPaths.Axes where Name = 'People'), 5);

INSERT INTO EngineeringPaths.Levels (Name, [Description], [AxisId], [LevelId]) VALUES 
	('Follows', 'follows the team processes, delivering a consistent flow of features to production', (select Id from EngineeringPaths.Axes where Name = 'Process'), 1),
	('Enforces', 'enforces the team processes, making sure everybody understands the benefits and tradeoffs', (select Id from EngineeringPaths.Axes where Name = 'Process'), 2),
	('Challenges', 'challenges the team processes, looking for ways to improve them', (select Id from EngineeringPaths.Axes where Name = 'Process'), 3),
	('Adjusts', 'adjusts the team processes, listening to feedback and guiding the team through the changes', (select Id from EngineeringPaths.Axes where Name = 'Process'), 4),
	('Defines', 'defines the right processes for the team''s maturity level, balancing agility and discipline', (select Id from EngineeringPaths.Axes where Name = 'Process'), 5);

INSERT INTO EngineeringPaths.Levels (Name, [Description], [AxisId], [LevelId]) VALUES 
	('Subsystem', 'makes an impact on one or more subsystems', (select Id from EngineeringPaths.Axes where Name = 'Influence'), 2),
	('Team', 'makes an impact on the whole team, not just on specific parts of it', (select Id from EngineeringPaths.Axes where Name = 'Influence'), 1),
	('Multiple Teams', 'makes an impact not only his/her team but also on other teams', (select Id from EngineeringPaths.Axes where Name = 'Influence'), 3),
	('Company', 'makes an impact on the whole tech organization', (select Id from EngineeringPaths.Axes where Name = 'Influence'), 4),
	('Community', 'makes an impact on the tech community', (select Id from EngineeringPaths.Axes where Name = 'Influence'), 5);

DROP TABLE EngineeringPaths.Jobs;

CREATE TABLE EngineeringPaths.Jobs (
	Id int IDENTITY(1,1) NOT NULL,
	Name nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Company nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	PRIMARY KEY (Id)
);

INSERT INTO EngineeringPaths.Jobs ([Name], Company) VALUES
	('CHANGE MANAGER', 'HEWLETT-PACKARD'),
	('SALES SUPPORT SPECIALIST/DEAL DELIVERY ASSURANCE', 'HEWLETT-PACKARD'),
	('SOLUTION LEADER', 'DXC TECHNOLOGY'),
	('SOLUTION ARCHITECT', 'RAIFFEISENBANK BULGARIA EAD'),
	('SYSTEMS DESIGN EXPERT', 'FUJITSU TECHNOLOGY SOLUTIONS (LUXEMBOURG) S.A'),
	('SENIOR MANAGER', 'DELOITEE GLOBAL SERVICES SARL')
	;

DROP TABLE EngineeringPaths.JobLevels;

CREATE TABLE EngineeringPaths.JobLevels (
	Id int IDENTITY(1,1) NOT NULL,
	JobId  int NOT NULL,
	AxisId int NOT NULL,
	LevelId int NOT NULL
	PRIMARY KEY (Id)
);

Insert into EngineeringPaths.JobLevels (JobId, AxisId, LevelId) VALUES
((select Id from EngineeringPaths.Jobs where Name = 'SENIOR MANAGER' and Company = 'DELOITEE GLOBAL SERVICES SARL' ), (select Id from EngineeringPaths.Axes where Name = 'Technology'), (SELECT Id from EngineeringPaths.Levels where Name = 'Creates')),
((select Id from EngineeringPaths.Jobs where Name = 'SENIOR MANAGER' and Company = 'DELOITEE GLOBAL SERVICES SARL' ), (select Id from EngineeringPaths.Axes where Name = 'System'), (SELECT Id from EngineeringPaths.Levels where Name = 'Leads')),
((select Id from EngineeringPaths.Jobs where Name = 'SENIOR MANAGER' and Company = 'DELOITEE GLOBAL SERVICES SARL' ), (select Id from EngineeringPaths.Axes where Name = 'Influence'), (SELECT Id from EngineeringPaths.Levels where Name = 'Multiple Teams')),
((select Id from EngineeringPaths.Jobs where Name = 'SENIOR MANAGER' and Company = 'DELOITEE GLOBAL SERVICES SARL' ), (select Id from EngineeringPaths.Axes where Name = 'Process'), (SELECT Id from EngineeringPaths.Levels where Name = 'Defines')),
((select Id from EngineeringPaths.Jobs where Name = 'SENIOR MANAGER' and Company = 'DELOITEE GLOBAL SERVICES SARL' ), (select Id from EngineeringPaths.Axes where Name = 'People'), (SELECT Id from EngineeringPaths.Levels where Name = 'Manages')),
((select Id from EngineeringPaths.Jobs where Name = 'SYSTEMS DESIGN EXPERT' and Company = 'FUJITSU TECHNOLOGY SOLUTIONS (LUXEMBOURG) S.A' ), (select Id from EngineeringPaths.Axes where Name = 'Technology'), (SELECT Id from EngineeringPaths.Levels where Name = 'Creates')),
((select Id from EngineeringPaths.Jobs where Name = 'SYSTEMS DESIGN EXPERT' and Company = 'FUJITSU TECHNOLOGY SOLUTIONS (LUXEMBOURG) S.A' ), (select Id from EngineeringPaths.Axes where Name = 'System'), (SELECT Id from EngineeringPaths.Levels where Name = 'Designs')),
((select Id from EngineeringPaths.Jobs where Name = 'SYSTEMS DESIGN EXPERT' and Company = 'FUJITSU TECHNOLOGY SOLUTIONS (LUXEMBOURG) S.A' ), (select Id from EngineeringPaths.Axes where Name = 'Influence'), (SELECT Id from EngineeringPaths.Levels where Name = 'Multiple Teams')),
((select Id from EngineeringPaths.Jobs where Name = 'SYSTEMS DESIGN EXPERT' and Company = 'FUJITSU TECHNOLOGY SOLUTIONS (LUXEMBOURG) S.A' ), (select Id from EngineeringPaths.Axes where Name = 'Process'), (SELECT Id from EngineeringPaths.Levels where Name = 'Challenges')),
((select Id from EngineeringPaths.Jobs where Name = 'SYSTEMS DESIGN EXPERT' and Company = 'FUJITSU TECHNOLOGY SOLUTIONS (LUXEMBOURG) S.A' ), (select Id from EngineeringPaths.Axes where Name = 'People'), (SELECT Id from EngineeringPaths.Levels where Name = 'Mentors')),
((select Id from EngineeringPaths.Jobs where Name = 'SOLUTION ARCHITECT' and Company = 'RAIFFEISENBANK BULGARIA EAD' ), (select Id from EngineeringPaths.Axes where Name = 'Technology'), (SELECT Id from EngineeringPaths.Levels where Name = 'Specializes')),
((select Id from EngineeringPaths.Jobs where Name = 'SOLUTION ARCHITECT' and Company = 'RAIFFEISENBANK BULGARIA EAD' ), (select Id from EngineeringPaths.Axes where Name = 'System'), (SELECT Id from EngineeringPaths.Levels where Name = 'Designs')),
((select Id from EngineeringPaths.Jobs where Name = 'SOLUTION ARCHITECT' and Company = 'RAIFFEISENBANK BULGARIA EAD' ), (select Id from EngineeringPaths.Axes where Name = 'Influence'), (SELECT Id from EngineeringPaths.Levels where Name = 'Multiple Teams')),
((select Id from EngineeringPaths.Jobs where Name = 'SOLUTION ARCHITECT' and Company = 'RAIFFEISENBANK BULGARIA EAD' ), (select Id from EngineeringPaths.Axes where Name = 'Process'), (SELECT Id from EngineeringPaths.Levels where Name = 'Follows')),
((select Id from EngineeringPaths.Jobs where Name = 'SOLUTION ARCHITECT' and Company = 'RAIFFEISENBANK BULGARIA EAD' ), (select Id from EngineeringPaths.Axes where Name = 'People'), (SELECT Id from EngineeringPaths.Levels where Name = 'Supports')),
((select Id from EngineeringPaths.Jobs where Name = 'SOLUTION LEADER' and Company = 'DXC TECHNOLOGY' ), (select Id from EngineeringPaths.Axes where Name = 'Technology'), (SELECT Id from EngineeringPaths.Levels where Name = 'Specializes')),
((select Id from EngineeringPaths.Jobs where Name = 'SOLUTION LEADER' and Company = 'DXC TECHNOLOGY' ), (select Id from EngineeringPaths.Axes where Name = 'System'), (SELECT Id from EngineeringPaths.Levels where Name = 'Designs')),
((select Id from EngineeringPaths.Jobs where Name = 'SOLUTION LEADER' and Company = 'DXC TECHNOLOGY' ), (select Id from EngineeringPaths.Axes where Name = 'Influence'), (SELECT Id from EngineeringPaths.Levels where Name = 'Multiple Teams')),
((select Id from EngineeringPaths.Jobs where Name = 'SOLUTION LEADER' and Company = 'DXC TECHNOLOGY' ), (select Id from EngineeringPaths.Axes where Name = 'Process'), (SELECT Id from EngineeringPaths.Levels where Name = 'Challenges')),
((select Id from EngineeringPaths.Jobs where Name = 'SOLUTION LEADER' and Company = 'DXC TECHNOLOGY' ), (select Id from EngineeringPaths.Axes where Name = 'People'), (SELECT Id from EngineeringPaths.Levels where Name = 'Supports')),
((select Id from EngineeringPaths.Jobs where Name = 'SALES SUPPORT SPECIALIST/DEAL DELIVERY ASSURANCE' and Company = 'HEWLETT-PACKARD' ), (select Id from EngineeringPaths.Axes where Name = 'Technology'), (SELECT Id from EngineeringPaths.Levels where Name = 'Specializes')),
((select Id from EngineeringPaths.Jobs where Name = 'SALES SUPPORT SPECIALIST/DEAL DELIVERY ASSURANCE' and Company = 'HEWLETT-PACKARD' ), (select Id from EngineeringPaths.Axes where Name = 'System'), (SELECT Id from EngineeringPaths.Levels where Name = 'Owns')),
((select Id from EngineeringPaths.Jobs where Name = 'SALES SUPPORT SPECIALIST/DEAL DELIVERY ASSURANCE' and Company = 'HEWLETT-PACKARD' ), (select Id from EngineeringPaths.Axes where Name = 'Influence'), (SELECT Id from EngineeringPaths.Levels where Name = 'Multiple Teams')),
((select Id from EngineeringPaths.Jobs where Name = 'SALES SUPPORT SPECIALIST/DEAL DELIVERY ASSURANCE' and Company = 'HEWLETT-PACKARD' ), (select Id from EngineeringPaths.Axes where Name = 'Process'), (SELECT Id from EngineeringPaths.Levels where Name = 'Challenges')),
((select Id from EngineeringPaths.Jobs where Name = 'SALES SUPPORT SPECIALIST/DEAL DELIVERY ASSURANCE' and Company = 'HEWLETT-PACKARD' ), (select Id from EngineeringPaths.Axes where Name = 'People'), (SELECT Id from EngineeringPaths.Levels where Name = 'Supports')),
((select Id from EngineeringPaths.Jobs where Name = 'CHANGE MANAGER' and Company = 'HEWLETT-PACKARD' ), (select Id from EngineeringPaths.Axes where Name = 'Technology'), (SELECT Id from EngineeringPaths.Levels where Name = 'Evangelizes')),
((select Id from EngineeringPaths.Jobs where Name = 'CHANGE MANAGER' and Company = 'HEWLETT-PACKARD' ), (select Id from EngineeringPaths.Axes where Name = 'System'), (SELECT Id from EngineeringPaths.Levels where Name = 'Owns')),
((select Id from EngineeringPaths.Jobs where Name = 'CHANGE MANAGER' and Company = 'HEWLETT-PACKARD' ), (select Id from EngineeringPaths.Axes where Name = 'Influence'), (SELECT Id from EngineeringPaths.Levels where Name = 'Multiple Teams')),
((select Id from EngineeringPaths.Jobs where Name = 'CHANGE MANAGER' and Company = 'HEWLETT-PACKARD' ), (select Id from EngineeringPaths.Axes where Name = 'Process'), (SELECT Id from EngineeringPaths.Levels where Name = 'Adjusts')),
((select Id from EngineeringPaths.Jobs where Name = 'CHANGE MANAGER' and Company = 'HEWLETT-PACKARD' ), (select Id from EngineeringPaths.Axes where Name = 'People'), (SELECT Id from EngineeringPaths.Levels where Name = 'Mentors'));


-- ((select Id from EngineeringPaths.Jobs where Name = '' and Company = '' ), (select Id from EngineeringPaths.Axes where Name = 'Technology'), (SELECT Id from EngineeringPaths.Levels where Name = '')),
-- ((select Id from EngineeringPaths.Jobs where Name = '' and Company = '' ), (select Id from EngineeringPaths.Axes where Name = 'System'), (SELECT Id from EngineeringPaths.Levels where Name = '')),
-- ((select Id from EngineeringPaths.Jobs where Name = '' and Company = '' ), (select Id from EngineeringPaths.Axes where Name = 'Influence'), (SELECT Id from EngineeringPaths.Levels where Name = '')),
-- ((select Id from EngineeringPaths.Jobs where Name = '' and Company = '' ), (select Id from EngineeringPaths.Axes where Name = 'Process'), (SELECT Id from EngineeringPaths.Levels where Name = '')),
-- ((select Id from EngineeringPaths.Jobs where Name = '' and Company = '' ), (select Id from EngineeringPaths.Axes where Name = 'People'), (SELECT Id from EngineeringPaths.Levels where Name = ''))
-- ;

-- INSERT    INTO EngineeringPaths.JobLevels (JobId, AxisId, LevelId)
-- VALUES    (
--           (
--           SELECT    Id
--           FROM      EngineeringPaths.Jobs
--           WHERE     Name = 'SENIOR MANAGER'
--           AND       Company = 'DELOITEE GLOBAL SERVICES SARL'
--           ),
--           (
--           SELECT    Id
--           FROM      EngineeringPaths.Axes
--           WHERE     Name = 'Technology'
--           ),
--           (
--           SELECT    Id
--           FROM      EngineeringPaths.Levels
--           WHERE     Name = ''
--           )
--           ),
--           (
--           (
--           SELECT    Id
--           FROM      EngineeringPaths.Jobs
--           WHERE     Name = 'SENIOR MANAGER'
--           AND       Company = 'DELOITEE GLOBAL SERVICES SARL'
--           ),
--           (
--           SELECT    Id
--           FROM      EngineeringPaths.Axes
--           WHERE     Name = 'System'
--           ),
--           5
--           ),
--           (
--           (
--           SELECT    Id
--           FROM      EngineeringPaths.Jobs
--           WHERE     Name = 'SENIOR MANAGER'
--           AND       Company = 'DELOITEE GLOBAL SERVICES SARL'
--           ),
--           (
--           SELECT    Id
--           FROM      EngineeringPaths.Axes
--           WHERE     Name = 'Influence'
--           ),
--           3
--           ),
--           (
--           (
--           SELECT    Id
--           FROM      EngineeringPaths.Jobs
--           WHERE     Name = 'SENIOR MANAGER'
--           AND       Company = 'DELOITEE GLOBAL SERVICES SARL'
--           ),
--           (
--           SELECT    Id
--           FROM      EngineeringPaths.Axes
--           WHERE     Name = 'Process'
--           ),
--           5
--           ),
--           (
--           (
--           SELECT    Id
--           FROM      EngineeringPaths.Jobs
--           WHERE     Name = 'SENIOR MANAGER'
--           AND       Company = 'DELOITEE GLOBAL SERVICES SARL'
--           ),
--           (
--           SELECT    Id
--           FROM      EngineeringPaths.Axes
--           WHERE     Name = 'People'
--           ),
--           3
--           )