USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_gt_OperateLog]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_gt_OperateLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_gt_OperateLog](
	[OperateLogKey] [uniqueidentifier] NOT NULL,
	[UserKey] [uniqueidentifier] NOT NULL,
	[OperateDate] [datetime] NOT NULL,
	[OperateContent] [varchar](200) NULL,
	[OperateModule] [varchar](50) NULL,
	[OperateType] [varchar](10) NULL,
 CONSTRAINT [PK_T_GT_OPERATELOG] PRIMARY KEY CLUSTERED 
(
	[OperateLogKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
