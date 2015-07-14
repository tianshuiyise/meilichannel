USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_gt_MenuItm]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_gt_MenuItm]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_gt_MenuItm](
	[MenuItmKey] [uniqueidentifier] NOT NULL,
	[MenuName] [varchar](50) NULL,
	[MenuCode] [varchar](20) NULL,
	[ParentMenuCode] [varchar](20) NULL,
	[MenuURL] [varchar](200) NULL,
	[MenuSequence] [int] NULL,
	[LeafFlg] [bit] NULL,
	[PictureURL] [varchar](200) NULL,
	[PageCode] [varchar](30) NULL,
	[Depth] [int] NULL,
	[PageKey] [uniqueidentifier] NULL,
	[QueryParameter] [varchar](100) NULL,
	[MenuType] [varchar](10) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_GT_MENUITM] PRIMARY KEY CLUSTERED 
(
	[MenuItmKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
