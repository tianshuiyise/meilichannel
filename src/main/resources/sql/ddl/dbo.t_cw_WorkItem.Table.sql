USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_cw_WorkItem]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_cw_WorkItem]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_cw_WorkItem](
	[WorkItemKey] [uniqueidentifier] NOT NULL,
	[WorkItemName] [varchar](50) NOT NULL,
	[WorkItemType] [varchar](30) NULL,
	[SubTypeCode] [varchar](30) NULL,
	[Unit] [varchar](20) NULL,
	[ClassHours] [decimal](18, 0) NULL,
	[Remark] [varchar](200) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_CW_WORKITEM] PRIMARY KEY CLUSTERED 
(
	[WorkItemKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
