USE [flm3]
GO
/****** Object:  Table [dbo].[ActivityLog]    Script Date: 19/11/2021 9:19:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[Maker] [nvarchar](50) NOT NULL,
	[DetailSemesterPlanID] [int] NOT NULL,
	[Action] [nvarchar](255) NOT NULL,
	[Reason] [nvarchar](2000) NULL,
 CONSTRAINT [PK_ActivityLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Combo]    Script Date: 19/11/2021 9:19:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Combo](
	[ComboID] [int] IDENTITY(1,1) NOT NULL,
	[ComboName] [nvarchar](255) NOT NULL,
	[CurriculumID] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Combo] PRIMARY KEY CLUSTERED 
(
	[ComboID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboSubject]    Script Date: 19/11/2021 9:19:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboSubject](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ComboID] [int] NOT NULL,
	[SubjectID] [int] NULL,
	[Semester] [int] NOT NULL,
	[SyllabusID] [int] NULL,
 CONSTRAINT [PK_ComboSubject] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailSemesterPlan]    Script Date: 19/11/2021 9:19:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailSemesterPlan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CurriculumID] [int] NOT NULL,
	[IndustryCourse] [nvarchar](50) NOT NULL,
	[Semester] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[SemesterPlanID] [int] NOT NULL,
	[Creator] [nvarchar](50) NOT NULL,
	[Approval] [nvarchar](50) NULL,
	[Verifier] [nvarchar](50) NULL,
 CONSTRAINT [PK_DetailSemesterPlan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialToSemesterPlanDetail]    Script Date: 19/11/2021 9:19:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialToSemesterPlanDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[subjectID] [int] NOT NULL,
	[MaterialID] [int] NOT NULL,
	[Note] [nvarchar](50) NULL,
	[SubjectToSemesterPlanDetailID] [int] NOT NULL,
 CONSTRAINT [PK_MaterialToSemesterPlanDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SemesterPlan]    Script Date: 19/11/2021 9:19:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SemesterPlan](
	[SemesterPlanID] [int] IDENTITY(1,1) NOT NULL,
	[SemesterPlanName] [nchar](255) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Note] [nvarchar](2000) NULL,
 CONSTRAINT [PK_SemesterPlan] PRIMARY KEY CLUSTERED 
(
	[SemesterPlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubjectToSemesterPlanDetail]    Script Date: 19/11/2021 9:19:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectToSemesterPlanDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DetailSemesterPlanID] [int] NULL,
	[SubjectID] [int] NULL,
	[SlotOffline] [int] NULL,
	[SlotOnline] [int] NULL,
	[NoCredit] [int] NULL,
	[PreRequired] [nvarchar](50) NULL,
	[Recommend] [nvarchar](255) NULL,
	[Note] [nvarchar](2000) NULL,
 CONSTRAINT [PK_SubjectToSemesterPlanDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ActivityLog] ON 

INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (1, CAST(N'2021-11-17T18:47:32.860' AS DateTime), N'datnqhe130421', 1006, N'Approve', N'sao nào')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (2, CAST(N'2021-11-17T18:48:51.243' AS DateTime), N'datnqhe130421', 1005, N'Approve', N'')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (3, CAST(N'2021-11-17T19:01:47.203' AS DateTime), N'datnqhe130421', 44, N'Approve', N'')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (4, CAST(N'2021-11-17T19:42:30.750' AS DateTime), N'datnqhe130421', 44, N'Cancel', N'không đúng')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (5, CAST(N'2021-11-17T21:21:32.087' AS DateTime), N'datnqhe130421', 1006, N'Approve', N'')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (6, CAST(N'2021-11-17T21:21:44.527' AS DateTime), N'datnqhe130421', 1006, N'Cancel', N'không đúng')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (7, CAST(N'2021-11-17T22:29:14.587' AS DateTime), N'datnqhe130421', 44, N'Approve', N'')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (8, CAST(N'2021-11-17T19:01:47.203' AS DateTime), N'datnqhe130421', 1027, N'Approve', N'')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (9, CAST(N'2021-11-17T19:42:30.750' AS DateTime), N'datnqhe130421', 1027, N'Cancel', N'không đúng')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (10, CAST(N'2021-11-17T22:29:14.587' AS DateTime), N'datnqhe130421', 1027, N'Approve', N'')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (11, CAST(N'2021-11-17T18:48:51.243' AS DateTime), N'datnqhe130421', 1030, N'Approve', N'')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (12, CAST(N'2021-11-17T18:47:32.860' AS DateTime), N'datnqhe130421', 1031, N'Approve', N'sao nào')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (13, CAST(N'2021-11-17T21:21:32.087' AS DateTime), N'datnqhe130421', 1031, N'Approve', N'')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (14, CAST(N'2021-11-17T21:21:44.527' AS DateTime), N'datnqhe130421', 1031, N'Cancel', N'không đúng')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (15, CAST(N'2021-11-17T19:01:47.203' AS DateTime), N'datnqhe130421', 1034, N'Approve', N'')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (16, CAST(N'2021-11-17T19:42:30.750' AS DateTime), N'datnqhe130421', 1034, N'Cancel', N'không đúng')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (17, CAST(N'2021-11-17T22:29:14.587' AS DateTime), N'datnqhe130421', 1034, N'Approve', N'')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (18, CAST(N'2021-11-17T18:48:51.243' AS DateTime), N'datnqhe130421', 1037, N'Approve', N'')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (19, CAST(N'2021-11-17T18:47:32.860' AS DateTime), N'datnqhe130421', 1038, N'Approve', N'sao nào')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (20, CAST(N'2021-11-17T21:21:32.087' AS DateTime), N'datnqhe130421', 1038, N'Approve', N'')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (21, CAST(N'2021-11-17T21:21:44.527' AS DateTime), N'datnqhe130421', 1038, N'Cancel', N'không đúng')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (22, CAST(N'2021-11-18T23:15:17.787' AS DateTime), N'datnqhe130421', 1006, N'Approve', N'')
INSERT [dbo].[ActivityLog] ([ID], [UpdateTime], [Maker], [DetailSemesterPlanID], [Action], [Reason]) VALUES (23, CAST(N'2021-11-18T23:23:09.127' AS DateTime), N'datnqhe130421', 1004, N'Cancel', N'không đúng')
SET IDENTITY_INSERT [dbo].[ActivityLog] OFF
GO
SET IDENTITY_INSERT [dbo].[Combo] ON 

INSERT [dbo].[Combo] ([ComboID], [ComboName], [CurriculumID], [CreateDate]) VALUES (1, N'test', 2, CAST(N'2021-11-04T17:10:23.167' AS DateTime))
INSERT [dbo].[Combo] ([ComboID], [ComboName], [CurriculumID], [CreateDate]) VALUES (2, N'test1', 2, CAST(N'2021-11-04T21:29:25.613' AS DateTime))
INSERT [dbo].[Combo] ([ComboID], [ComboName], [CurriculumID], [CreateDate]) VALUES (3, N'Test9999', 2, CAST(N'2021-11-07T20:46:06.720' AS DateTime))
INSERT [dbo].[Combo] ([ComboID], [ComboName], [CurriculumID], [CreateDate]) VALUES (4, N'hyada', 2, CAST(N'2021-11-07T20:53:51.643' AS DateTime))
INSERT [dbo].[Combo] ([ComboID], [ComboName], [CurriculumID], [CreateDate]) VALUES (5, N'kakaka', 2, CAST(N'2021-11-07T20:57:18.427' AS DateTime))
INSERT [dbo].[Combo] ([ComboID], [ComboName], [CurriculumID], [CreateDate]) VALUES (6, N'hhhrth', 2, CAST(N'2021-11-07T21:07:40.213' AS DateTime))
INSERT [dbo].[Combo] ([ComboID], [ComboName], [CurriculumID], [CreateDate]) VALUES (7, N'kakaka', 2, CAST(N'2021-11-07T21:10:33.440' AS DateTime))
INSERT [dbo].[Combo] ([ComboID], [ComboName], [CurriculumID], [CreateDate]) VALUES (8, N'kakaka', 2, CAST(N'2021-11-07T21:21:17.290' AS DateTime))
INSERT [dbo].[Combo] ([ComboID], [ComboName], [CurriculumID], [CreateDate]) VALUES (9, N'1111111', 2, CAST(N'2021-11-07T21:25:09.120' AS DateTime))
INSERT [dbo].[Combo] ([ComboID], [ComboName], [CurriculumID], [CreateDate]) VALUES (1003, N'NotCocacola1', 2, CAST(N'2021-11-08T13:34:05.363' AS DateTime))
INSERT [dbo].[Combo] ([ComboID], [ComboName], [CurriculumID], [CreateDate]) VALUES (1004, N'hyy', 2, CAST(N'2021-11-08T21:04:23.257' AS DateTime))
INSERT [dbo].[Combo] ([ComboID], [ComboName], [CurriculumID], [CreateDate]) VALUES (1005, N'zhhhrrtrt', 2, CAST(N'2021-11-08T22:22:01.267' AS DateTime))
SET IDENTITY_INSERT [dbo].[Combo] OFF
GO
SET IDENTITY_INSERT [dbo].[ComboSubject] ON 

INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (2, 1, 1, 9, NULL)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (3, 1, 3, 3, NULL)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (4, 1, 4, 4, NULL)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (5, 2, 7, 1, NULL)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (6, 3, 6, 7, 866)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (7, 3, 8, 5, 1065)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (10, 4, 4, 4, 1107)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (12, 5, 10, 7, 2382)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (14, 6, 5, 4, 849)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (15, 6, 5, 4, 849)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (16, 7, 4, 4, 1107)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (17, 7, 6, 4, 866)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (18, 8, 10, 4, 2382)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (19, 9, 5, 4, 849)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (22, 4, 2, 4, 1105)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (1006, 1003, 3, 4, 1106)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (1007, 1003, 11, 3, 1020)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (1008, 1003, 16, 3, 998)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (1009, 1004, 4, 9, 1107)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (1010, 1004, 4, 3, 1107)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (1012, 1005, 5, 7, 849)
INSERT [dbo].[ComboSubject] ([ID], [ComboID], [SubjectID], [Semester], [SyllabusID]) VALUES (1013, 1005, 7, 5, 1119)
SET IDENTITY_INSERT [dbo].[ComboSubject] OFF
GO
SET IDENTITY_INSERT [dbo].[DetailSemesterPlan] ON 

INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (44, 1, N'17A', 3, 1, CAST(N'2012-09-11T00:00:00.000' AS DateTime), 1008, N'trang', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (46, 2, N'17B', 4, 1, CAST(N'2014-02-12T00:00:00.000' AS DateTime), 1008, N'dat', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1004, 3, N'16A', 5, 2, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 1008, N'he', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1005, 1, N'15B', 4, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 1008, N'hi', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1006, 1, N'14A', 3, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 1008, N'hi', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1008, 1, N'13A', 3, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 1008, N'haha', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1012, 5, N'15A', 5, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 1008, N'hhi', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1013, 1, N'17A', 3, 1, CAST(N'2012-09-11T00:00:00.000' AS DateTime), 2002, N'trang', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1014, 2, N'17B', 4, 1, CAST(N'2014-02-12T00:00:00.000' AS DateTime), 2002, N'dat', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1015, 3, N'16A', 5, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2002, N'he', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1016, 1, N'15B', 4, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2002, N'hi', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1017, 1, N'14A', 3, 2, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2002, N'hi', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1018, 1, N'13A', 3, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2002, N'haha', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1019, 5, N'15A', 5, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2002, N'hhi', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1020, 1, N'17A', 3, 1, CAST(N'2012-09-11T00:00:00.000' AS DateTime), 2003, N'trang', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1021, 2, N'17B', 4, 1, CAST(N'2014-02-12T00:00:00.000' AS DateTime), 2003, N'dat', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1022, 3, N'16A', 5, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2003, N'he', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1023, 1, N'15B', 4, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2003, N'hi', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1024, 1, N'14A', 3, 2, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2003, N'hi', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1025, 1, N'13A', 3, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2003, N'haha', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1026, 5, N'15A', 5, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2003, N'hhi', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1027, 1, N'17A', 3, 1, CAST(N'2012-09-11T00:00:00.000' AS DateTime), 2004, N'trang', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1028, 2, N'17B', 4, 1, CAST(N'2014-02-12T00:00:00.000' AS DateTime), 2004, N'dat', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1029, 3, N'16A', 5, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2004, N'he', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1030, 1, N'15B', 4, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2004, N'hi', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1031, 1, N'14A', 3, 2, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2004, N'hi', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1032, 1, N'13A', 3, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2004, N'haha', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1033, 5, N'15A', 5, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2004, N'hhi', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1034, 1, N'17A', 3, 1, CAST(N'2012-09-11T00:00:00.000' AS DateTime), 2005, N'trang', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1035, 2, N'17B', 4, 1, CAST(N'2014-02-12T00:00:00.000' AS DateTime), 2005, N'dat', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1036, 3, N'16A', 5, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2005, N'he', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1037, 1, N'15B', 4, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2005, N'hi', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1038, 1, N'14A', 3, 2, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2005, N'hi', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1039, 1, N'13A', 3, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2005, N'haha', N'datnqhe130421', NULL)
INSERT [dbo].[DetailSemesterPlan] ([ID], [CurriculumID], [IndustryCourse], [Semester], [Status], [CreateDate], [SemesterPlanID], [Creator], [Approval], [Verifier]) VALUES (1040, 5, N'15A', 5, 1, CAST(N'2021-10-09T13:58:21.873' AS DateTime), 2005, N'hhi', N'datnqhe130421', NULL)
SET IDENTITY_INSERT [dbo].[DetailSemesterPlan] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialToSemesterPlanDetail] ON 

INSERT [dbo].[MaterialToSemesterPlanDetail] ([ID], [subjectID], [MaterialID], [Note], [SubjectToSemesterPlanDetailID]) VALUES (46, 1, 3498, NULL, 45)
INSERT [dbo].[MaterialToSemesterPlanDetail] ([ID], [subjectID], [MaterialID], [Note], [SubjectToSemesterPlanDetailID]) VALUES (47, 2, 3499, NULL, 45)
INSERT [dbo].[MaterialToSemesterPlanDetail] ([ID], [subjectID], [MaterialID], [Note], [SubjectToSemesterPlanDetailID]) VALUES (50, 3, 3500, NULL, 45)
INSERT [dbo].[MaterialToSemesterPlanDetail] ([ID], [subjectID], [MaterialID], [Note], [SubjectToSemesterPlanDetailID]) VALUES (1002, 1, 3498, NULL, 1002)
INSERT [dbo].[MaterialToSemesterPlanDetail] ([ID], [subjectID], [MaterialID], [Note], [SubjectToSemesterPlanDetailID]) VALUES (1003, 2, 3499, NULL, 1002)
INSERT [dbo].[MaterialToSemesterPlanDetail] ([ID], [subjectID], [MaterialID], [Note], [SubjectToSemesterPlanDetailID]) VALUES (1004, 3, 3500, NULL, 1002)
INSERT [dbo].[MaterialToSemesterPlanDetail] ([ID], [subjectID], [MaterialID], [Note], [SubjectToSemesterPlanDetailID]) VALUES (1005, 1, 3498, NULL, 1004)
INSERT [dbo].[MaterialToSemesterPlanDetail] ([ID], [subjectID], [MaterialID], [Note], [SubjectToSemesterPlanDetailID]) VALUES (1006, 2, 3499, NULL, 1004)
INSERT [dbo].[MaterialToSemesterPlanDetail] ([ID], [subjectID], [MaterialID], [Note], [SubjectToSemesterPlanDetailID]) VALUES (1007, 3, 3500, NULL, 1004)
INSERT [dbo].[MaterialToSemesterPlanDetail] ([ID], [subjectID], [MaterialID], [Note], [SubjectToSemesterPlanDetailID]) VALUES (1008, 1, 3498, NULL, 1006)
INSERT [dbo].[MaterialToSemesterPlanDetail] ([ID], [subjectID], [MaterialID], [Note], [SubjectToSemesterPlanDetailID]) VALUES (1009, 2, 3499, NULL, 1006)
INSERT [dbo].[MaterialToSemesterPlanDetail] ([ID], [subjectID], [MaterialID], [Note], [SubjectToSemesterPlanDetailID]) VALUES (1010, 3, 3500, NULL, 1006)
INSERT [dbo].[MaterialToSemesterPlanDetail] ([ID], [subjectID], [MaterialID], [Note], [SubjectToSemesterPlanDetailID]) VALUES (1011, 1, 3498, NULL, 1008)
INSERT [dbo].[MaterialToSemesterPlanDetail] ([ID], [subjectID], [MaterialID], [Note], [SubjectToSemesterPlanDetailID]) VALUES (1012, 2, 3499, NULL, 1008)
INSERT [dbo].[MaterialToSemesterPlanDetail] ([ID], [subjectID], [MaterialID], [Note], [SubjectToSemesterPlanDetailID]) VALUES (1013, 3, 3500, NULL, 1008)
SET IDENTITY_INSERT [dbo].[MaterialToSemesterPlanDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[SemesterPlan] ON 

INSERT [dbo].[SemesterPlan] ([SemesterPlanID], [SemesterPlanName], [CreateDate], [Note]) VALUES (1008, N'haha                                                                                                                                                                                                                                                           ', CAST(N'2021-11-04T17:10:23.167' AS DateTime), N'123213')
INSERT [dbo].[SemesterPlan] ([SemesterPlanID], [SemesterPlanName], [CreateDate], [Note]) VALUES (2002, N'haha                                                                                                                                                                                                                                                           ', CAST(N'2021-11-04T17:10:23.167' AS DateTime), N'123213')
INSERT [dbo].[SemesterPlan] ([SemesterPlanID], [SemesterPlanName], [CreateDate], [Note]) VALUES (2003, N'testclone                                                                                                                                                                                                                                                      ', CAST(N'2021-11-04T17:10:23.167' AS DateTime), N'123213')
INSERT [dbo].[SemesterPlan] ([SemesterPlanID], [SemesterPlanName], [CreateDate], [Note]) VALUES (2004, N'testclone1                                                                                                                                                                                                                                                     ', CAST(N'2021-11-04T17:10:23.167' AS DateTime), N'123213')
INSERT [dbo].[SemesterPlan] ([SemesterPlanID], [SemesterPlanName], [CreateDate], [Note]) VALUES (2005, N'testclone2                                                                                                                                                                                                                                                     ', CAST(N'2021-11-04T17:10:23.167' AS DateTime), N'123213')
SET IDENTITY_INSERT [dbo].[SemesterPlan] OFF
GO
SET IDENTITY_INSERT [dbo].[SubjectToSemesterPlanDetail] ON 

INSERT [dbo].[SubjectToSemesterPlanDetail] ([ID], [DetailSemesterPlanID], [SubjectID], [SlotOffline], [SlotOnline], [NoCredit], [PreRequired], [Recommend], [Note]) VALUES (45, 44, 1, 30, 0, 3, NULL, NULL, NULL)
INSERT [dbo].[SubjectToSemesterPlanDetail] ([ID], [DetailSemesterPlanID], [SubjectID], [SlotOffline], [SlotOnline], [NoCredit], [PreRequired], [Recommend], [Note]) VALUES (46, 44, 2, 30, 0, 3, NULL, NULL, NULL)
INSERT [dbo].[SubjectToSemesterPlanDetail] ([ID], [DetailSemesterPlanID], [SubjectID], [SlotOffline], [SlotOnline], [NoCredit], [PreRequired], [Recommend], [Note]) VALUES (1002, 1013, 1, 30, 0, 3, NULL, NULL, NULL)
INSERT [dbo].[SubjectToSemesterPlanDetail] ([ID], [DetailSemesterPlanID], [SubjectID], [SlotOffline], [SlotOnline], [NoCredit], [PreRequired], [Recommend], [Note]) VALUES (1003, 1013, 2, 30, 0, 3, NULL, NULL, NULL)
INSERT [dbo].[SubjectToSemesterPlanDetail] ([ID], [DetailSemesterPlanID], [SubjectID], [SlotOffline], [SlotOnline], [NoCredit], [PreRequired], [Recommend], [Note]) VALUES (1004, 1020, 1, 30, 0, 3, NULL, NULL, NULL)
INSERT [dbo].[SubjectToSemesterPlanDetail] ([ID], [DetailSemesterPlanID], [SubjectID], [SlotOffline], [SlotOnline], [NoCredit], [PreRequired], [Recommend], [Note]) VALUES (1005, 1020, 2, 30, 0, 3, NULL, NULL, NULL)
INSERT [dbo].[SubjectToSemesterPlanDetail] ([ID], [DetailSemesterPlanID], [SubjectID], [SlotOffline], [SlotOnline], [NoCredit], [PreRequired], [Recommend], [Note]) VALUES (1006, 1027, 1, 30, 0, 3, NULL, NULL, NULL)
INSERT [dbo].[SubjectToSemesterPlanDetail] ([ID], [DetailSemesterPlanID], [SubjectID], [SlotOffline], [SlotOnline], [NoCredit], [PreRequired], [Recommend], [Note]) VALUES (1007, 1027, 2, 30, 0, 3, NULL, NULL, NULL)
INSERT [dbo].[SubjectToSemesterPlanDetail] ([ID], [DetailSemesterPlanID], [SubjectID], [SlotOffline], [SlotOnline], [NoCredit], [PreRequired], [Recommend], [Note]) VALUES (1008, 1034, 1, 30, 0, 3, NULL, NULL, NULL)
INSERT [dbo].[SubjectToSemesterPlanDetail] ([ID], [DetailSemesterPlanID], [SubjectID], [SlotOffline], [SlotOnline], [NoCredit], [PreRequired], [Recommend], [Note]) VALUES (1009, 1034, 2, 30, 0, 3, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SubjectToSemesterPlanDetail] OFF
GO
