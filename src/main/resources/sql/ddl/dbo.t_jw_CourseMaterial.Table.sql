USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_jw_CourseMaterial]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_jw_CourseMaterial]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_jw_CourseMaterial](
	[CourseMaterialKey] [uniqueidentifier] NOT NULL,
	[MaterialName] [varchar](100) NOT NULL,
	[CourseKey] [uniqueidentifier] NOT NULL,
	[CourseName] [varchar](100) NULL,
	[MaterialType] [varchar](10) NOT NULL,
	[KnowledgePointCodes] [varchar](100) NULL,
	[ChapterCodes] [varchar](100) NULL,
	[Author] [varchar](20) NULL,
	[MakeDate] [datetime] NULL,
	[MaterialID] [varchar](20) NULL,
	[Origin] [varchar](100) NULL,
	[UseTermCode] [varchar](10) NULL,
	[ContentDesc] [varchar](200) NULL,
	[FileName] [varchar](200) NULL,
	[FullPath] [varchar](200) NULL,
	[AuditorUserKey] [uniqueidentifier] NULL,
	[AuditDate] [datetime] NULL,
	[AuditCode] [varchar](10) NULL,
	[AuditDesc] [varchar](200) NULL,
	[DownloadTimes] [int] NULL,
	[FileSize] [decimal](18, 0) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_COURSEMATERIAL] PRIMARY KEY CLUSTERED 
(
	[CourseMaterialKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
