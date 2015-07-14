USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_jw_CourseChapter]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_jw_CourseChapter]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_jw_CourseChapter](
	[CourseChapterKey] [uniqueidentifier] NOT NULL,
	[CourseKey] [uniqueidentifier] NOT NULL,
	[ChapterName] [varchar](50) NOT NULL,
	[ChapterCode] [varchar](10) NULL,
	[ParentChapterCode] [varchar](10) NULL,
	[Sequence] [int] NULL,
	[LeafFlg] [bit] NULL,
	[Depth] [int] NULL,
	[ContentDesc] [varchar](200) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_COURSECHAPTER] PRIMARY KEY CLUSTERED 
(
	[CourseChapterKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
