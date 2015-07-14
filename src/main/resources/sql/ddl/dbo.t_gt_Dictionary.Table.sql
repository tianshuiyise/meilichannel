USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_gt_Dictionary]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_gt_Dictionary]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_gt_Dictionary](
	[DictionaryKey] [uniqueidentifier] NOT NULL,
	[GroupCode] [varchar](30) NOT NULL,
	[GroupLabel] [varchar](30) NOT NULL,
	[ItemCode] [varchar](10) NOT NULL,
	[ItemLabel] [varchar](30) NOT NULL,
	[ItemSequence] [int] NOT NULL,
	[DeleteFlg] [bit] NOT NULL,
	[Remark] [varchar](200) NULL,
 CONSTRAINT [PK_T_GT_DICTIONARY] PRIMARY KEY CLUSTERED 
(
	[DictionaryKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
