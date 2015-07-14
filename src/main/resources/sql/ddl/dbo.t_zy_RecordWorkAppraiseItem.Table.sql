USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_zy_RecordWorkAppraiseItem]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_zy_RecordWorkAppraiseItem]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_zy_RecordWorkAppraiseItem](
	[WorkAppraiseItemKey] [uniqueidentifier] NOT NULL,
	[AppraiseContent] [varchar](50) NOT NULL,
	[Score] [decimal](18, 0) NOT NULL,
	[Remark] [varchar](200) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_ZY_RECORDWORKAPPRAISEITEM] PRIMARY KEY CLUSTERED 
(
	[WorkAppraiseItemKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
