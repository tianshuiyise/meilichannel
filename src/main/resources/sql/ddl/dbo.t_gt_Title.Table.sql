USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_gt_Title]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_gt_Title]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_gt_Title](
	[TitleKey] [uniqueidentifier] NOT NULL,
	[TitleID] [varchar](10) NOT NULL,
	[TitleName] [varchar](30) NOT NULL,
	[TitleNameEn] [varchar](30) NULL,
	[TitleDescription] [varchar](500) NULL,
	[TitleType] [varchar](10) NULL,
 CONSTRAINT [PK_T_GT_TITLE] PRIMARY KEY CLUSTERED 
(
	[TitleKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
