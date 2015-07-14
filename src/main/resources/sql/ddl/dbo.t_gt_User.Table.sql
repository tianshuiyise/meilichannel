USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_gt_User]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_gt_User]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_gt_User](
	[UserKey] [uniqueidentifier] NOT NULL,
	[OrginizationKey] [uniqueidentifier] NULL,
	[UserName] [varchar](30) NOT NULL,
	[Password] [varchar](40) NULL,
	[UserID] [varchar](30) NOT NULL,
	[IDCard] [varchar](30) NULL,
	[NameCh] [varchar](40) NOT NULL,
	[NameEn] [varchar](40) NOT NULL,
	[GenderCode] [varchar](10) NOT NULL,
	[Birthday] [datetime] NULL,
	[HomeTel] [varchar](30) NULL,
	[OfficeTel] [varchar](30) NULL,
	[Mobile] [varchar](30) NULL,
	[Fax] [varchar](30) NULL,
	[Email] [varchar](50) NULL,
	[Remark] [varchar](200) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[PermissionCode] [varchar](30) NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_GT_USER] PRIMARY KEY CLUSTERED 
(
	[UserKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
