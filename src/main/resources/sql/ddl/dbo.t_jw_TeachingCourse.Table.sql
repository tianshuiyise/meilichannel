USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_jw_TeachingCourse]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_jw_TeachingCourse]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_jw_TeachingCourse](
	[TeachingCourseKey] [uniqueidentifier] NOT NULL,
	[TeachingPlanKey] [uniqueidentifier] NOT NULL,
	[CourseKey] [uniqueidentifier] NOT NULL,
	[Score] [varchar](20) NULL,
	[ClassHour] [varchar](20) NULL,
	[Remark] [varchar](100) NULL,
	[TermID] [varchar](10) NULL,
	[CourseSelectType] [varchar](10) NULL,
	[CourseType] [varchar](10) NULL,
	[StartDate] [datetime] NULL,
	[PreCourses] [varchar](200) NULL,
	[DegreeFlgs] [int] NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_TEACHINGCOURSE] PRIMARY KEY CLUSTERED 
(
	[TeachingCourseKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
