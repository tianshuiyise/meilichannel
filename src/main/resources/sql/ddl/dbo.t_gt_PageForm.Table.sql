USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_gt_PageForm]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_gt_PageForm]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_gt_PageForm](
	[PageKey] [uniqueidentifier] NOT NULL,
	[PageName] [varchar](50) NOT NULL,
	[PageCode] [varchar](30) NOT NULL,
	[PageType] [varchar](10) NOT NULL,
	[PageURL] [varchar](500) NOT NULL,
	[Directory] [varchar](500) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_GT_PAGEFORM] PRIMARY KEY CLUSTERED 
(
	[PageKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
