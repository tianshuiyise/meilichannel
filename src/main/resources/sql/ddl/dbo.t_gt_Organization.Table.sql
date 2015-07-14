USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_gt_Organization]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_gt_Organization]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_gt_Organization](
	[OrganizationKey] [uniqueidentifier] NOT NULL,
	[OrgCode] [varchar](30) NOT NULL,
	[NameCh] [varchar](100) NOT NULL,
	[NameEN] [varchar](50) NULL,
	[HelpCode] [varchar](10) NULL,
	[ParentCode] [varchar](30) NOT NULL,
	[OrganizationType] [varchar](10) NULL,
	[OrganizationAddress] [varchar](100) NULL,
	[Tel] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[EMail] [varchar](50) NULL,
	[OrganizationDesc] [varchar](500) NULL,
	[TitleKey] [uniqueidentifier] NULL,
	[PositionFlag] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_GT_ORGANIZATION] PRIMARY KEY CLUSTERED 
(
	[OrganizationKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
