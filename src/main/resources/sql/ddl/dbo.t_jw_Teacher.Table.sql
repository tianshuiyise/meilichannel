USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_jw_Teacher]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_jw_Teacher]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_jw_Teacher](
	[TeacherKey] [uniqueidentifier] NOT NULL,
	[UserKey] [uniqueidentifier] NULL,
	[TeacherTypeFlgs] [int] NULL,
	[OriginCode] [varchar](10) NULL,
	[Folk] [varchar](10) NULL,
	[Politics] [varchar](10) NULL,
	[Native] [varchar](40) NULL,
	[Education] [varchar](10) NULL,
	[Degree] [varchar](10) NULL,
	[PositionTitle] [varchar](10) NULL,
	[Specialty] [varchar](50) NULL,
	[GraduateSchool] [varchar](200) NULL,
	[ShortenName] [varchar](10) NULL,
	[WorkUnit] [varchar](200) NULL,
	[TeachingCourse] [varchar](100) NULL,
	[ResearchArea] [varchar](200) NULL,
	[PhotoFilePath] [varchar](200) NULL,
	[HomeAddress] [varchar](400) NULL,
	[WageCard] [varchar](20) NULL,
	[BankCard] [varchar](30) NULL,
	[BankName] [varchar](100) NULL,
	[RetireFlg] [bit] NOT NULL,
	[RetireCard] [varchar](30) NULL,
	[TeacherStatus] [varchar](10) NULL,
	[HireStatus] [varchar](10) NULL,
	[ThesisGuidFlg] [bit] NOT NULL,
	[Brief] [varchar](200) NULL,
	[FieldEx1] [varchar](100) NULL,
	[FieldEx2] [varchar](100) NULL,
	[FieldEx3] [varchar](100) NULL,
	[FieldEx4] [varchar](100) NULL,
	[FieldEx5] [varchar](100) NULL,
	[TeacherTypeEx] [varchar](10) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_TEACHER] PRIMARY KEY CLUSTERED 
(
	[TeacherKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
