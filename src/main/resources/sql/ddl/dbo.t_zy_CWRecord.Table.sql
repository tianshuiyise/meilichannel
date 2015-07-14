USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_zy_CWRecord]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_zy_CWRecord]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_zy_CWRecord](
	[CWRecordKey] [uniqueidentifier] NOT NULL,
	[TeachingCourseKey] [uniqueidentifier] NULL,
	[CourseKey] [uniqueidentifier] NOT NULL,
	[CWRecordName] [varchar](100) NOT NULL,
	[KnowledgePointCodes] [varchar](100) NULL,
	[ChapterCodes] [varchar](100) NULL,
	[Recorder] [varchar](40) NULL,
	[RecordDate] [datetime] NULL,
	[RecordID] [varchar](20) NULL,
	[CWRecordType] [varchar](10) NULL,
	[TotalHours] [decimal](18, 0) NULL,
	[CheckpointNum] [int] NULL,
	[CheckResultFlgs] [int] NULL,
	[Checker] [varchar](40) NULL,
	[CheckDesc] [varchar](400) NULL,
	[FileName] [varchar](200) NULL,
	[FullPath] [varchar](200) NULL,
	[FileSize] [decimal](18, 0) NULL,
	[CWRecordStatus] [varchar](10) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_ZY_CWRECORD] PRIMARY KEY CLUSTERED 
(
	[CWRecordKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
