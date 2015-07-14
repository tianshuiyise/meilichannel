USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_jw_Course]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_jw_Course]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_jw_Course](
	[CourseKey] [uniqueidentifier] NOT NULL,
	[CourseID] [varchar](20) NOT NULL,
	[NameCh] [varchar](100) NOT NULL,
	[NameEn] [varchar](100) NULL,
	[Language] [varchar](20) NULL,
	[Keyword] [varchar](100) NULL,
	[SpecialtiesCode] [varchar](100) NULL,
	[SpecialtiesName] [varchar](200) NULL,
	[SpecialtiesLevel] [varchar](100) NULL,
	[Subjects] [varchar](200) NULL,
	[CommendScore] [varchar](20) NULL,
	[CommendHours] [varchar](20) NULL,
	[AttributeFlgs] [int] NULL,
	[Version] [varchar](10) NULL,
	[UnifiedExamSubject] [varchar](40) NULL,
	[Brief] [varchar](200) NULL,
	[Remark] [varchar](100) NULL,
	[FieldEx1] [varchar](100) NULL,
	[FieldEx2] [varchar](100) NULL,
	[FieldEx3] [varchar](100) NULL,
	[FieldEx4] [varchar](100) NULL,
	[FieldEx5] [varchar](100) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_COURSE] PRIMARY KEY CLUSTERED 
(
	[CourseKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
