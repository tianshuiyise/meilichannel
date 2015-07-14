USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_zy_Courseware]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_zy_Courseware]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_zy_Courseware](
	[CoursewareKey] [uniqueidentifier] NOT NULL,
	[CoursewareName] [varchar](100) NOT NULL,
	[TeachingCourseKey] [uniqueidentifier] NULL,
	[CourseKey] [uniqueidentifier] NOT NULL,
	[KnowledgePointCodes] [varchar](100) NULL,
	[ChapterCodes] [varchar](100) NULL,
	[Maker] [varchar](40) NULL,
	[MakeDate] [datetime] NULL,
	[CoursewareID] [varchar](20) NULL,
	[CWMakeModel] [varchar](10) NULL,
	[TotalHours] [decimal](18, 0) NULL,
	[FileName] [varchar](200) NULL,
	[FullPath] [varchar](200) NULL,
	[FileSize] [decimal](18, 0) NULL,
	[CWProductStatus] [varchar](10) NULL,
	[SourceCWKey] [uniqueidentifier] NULL,
	[OutsourceFrom] [varchar](100) NULL,
	[TimePointStart] [time](7) NULL,
	[TimePointEnd] [time](7) NULL,
	[Abstract] [varchar](200) NULL,
	[CheckResultFlgs] [int] NULL,
	[RejectRemark] [varchar](200) NULL,
	[Checker] [varchar](40) NULL,
	[CheckDate] [datetime] NULL,
	[ReleaseLevels] [int] NULL,
	[ReleaseModel] [int] NULL,
	[CoursewareFormat] [int] NULL,
	[ReleaseSites] [int] NULL,
	[Releaser] [varchar](40) NULL,
	[ReleaseDate] [datetime] NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_ZY_COURSEWARE] PRIMARY KEY CLUSTERED 
(
	[CoursewareKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
