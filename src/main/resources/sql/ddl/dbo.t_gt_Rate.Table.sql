USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_gt_Rate]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_gt_Rate]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_gt_Rate](
	[RateKey] [uniqueidentifier] NOT NULL,
	[InCurrencyID] [varchar](10) NOT NULL,
	[OutCurrencyID] [varchar](10) NOT NULL,
	[CurrentRate] [decimal](12, 4) NULL,
	[Memo] [varchar](500) NULL,
 CONSTRAINT [PK_T_GT_RATE] PRIMARY KEY CLUSTERED 
(
	[RateKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
