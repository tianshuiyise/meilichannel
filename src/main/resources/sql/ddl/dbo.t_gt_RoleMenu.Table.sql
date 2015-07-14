USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_gt_RoleMenu]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_gt_RoleMenu]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_gt_RoleMenu](
	[RoleMenuKey] [uniqueidentifier] NOT NULL,
	[RoleKey] [uniqueidentifier] NOT NULL,
	[MenuItmKey] [uniqueidentifier] NOT NULL,
	[DefaultFlg] [bit] NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_GT_ROLEMENU] PRIMARY KEY CLUSTERED 
(
	[RoleMenuKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
