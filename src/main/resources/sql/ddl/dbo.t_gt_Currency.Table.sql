USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_gt_Currency]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_gt_Currency]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_gt_Currency](
	[CurrencyKey] [uniqueidentifier] NOT NULL,
	[CurrencyID] [varchar](10) NOT NULL,
	[CurrencyName] [varchar](50) NULL,
	[CountryKey] [uniqueidentifier] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_GT_CURRENCY] PRIMARY KEY CLUSTERED 
(
	[CurrencyKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
