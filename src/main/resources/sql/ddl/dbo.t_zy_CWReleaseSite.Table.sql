USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_zy_CWReleaseSite]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_zy_CWReleaseSite]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_zy_CWReleaseSite](
	[CWReleaseSiteKey] [uniqueidentifier] NOT NULL,
	[SiteName] [varchar](50) NOT NULL,
	[SiteUrl] [varchar](200) NULL,
	[Sequence] [int] NULL,
	[Remark] [varchar](200) NULL,
	[SiteType] [varchar](10) NULL,
	[SiteStatus] [varchar](10) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_ZY_CWRELEASESITE] PRIMARY KEY CLUSTERED 
(
	[CWReleaseSiteKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
