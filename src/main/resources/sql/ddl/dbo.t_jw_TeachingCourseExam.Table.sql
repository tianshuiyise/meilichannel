USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_jw_TeachingCourseExam]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_jw_TeachingCourseExam]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_jw_TeachingCourseExam](
	[TeachingCourseExamKey] [uniqueidentifier] NOT NULL,
	[TeachingCourseKey] [uniqueidentifier] NOT NULL,
	[ExamModel] [varchar](10) NULL,
	[ExamCondition] [varchar](200) NULL,
	[UsualScoreWeight] [decimal](18, 0) NULL,
	[SelectTime] [datetime] NULL,
	[OrderExamTime] [datetime] NULL,
	[ExamTime] [datetime] NULL,
	[ReexamTimes] [int] NULL,
	[FreeReexamTimes] [int] NULL,
	[ReselectTimes] [int] NULL,
	[ReexamTimes2] [int] NULL,
	[CondOpenDays] [int] NULL,
	[CondCourseworkTimes] [int] NULL,
	[CondUsualScore] [decimal](18, 0) NULL,
	[CondTotalScore] [decimal](18, 0) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_TEACHINGCOURSEEXAM] PRIMARY KEY CLUSTERED 
(
	[TeachingCourseExamKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
