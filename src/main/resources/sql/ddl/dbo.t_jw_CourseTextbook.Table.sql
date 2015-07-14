USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_jw_CourseTextbook]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_jw_CourseTextbook]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_jw_CourseTextbook](
	[CourseTextbookKey] [uniqueidentifier] NOT NULL,
	[TeachingCourseKey] [uniqueidentifier] NULL,
	[CourseKey] [uniqueidentifier] NOT NULL,
	[UpdateFlg] [bit] NOT NULL,
	[NameCh] [varchar](100) NOT NULL,
	[NameEn] [varchar](100) NULL,
	[ISBNCode] [varchar](40) NULL,
	[Publisher] [varchar](100) NULL,
	[Author] [varchar](40) NULL,
	[EditionNo] [varchar](10) NULL,
	[Price] [decimal](18, 0) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_COURSETEXTBOOK] PRIMARY KEY CLUSTERED 
(
	[CourseTextbookKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
