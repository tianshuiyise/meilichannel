USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_gt_SystemParam]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_gt_SystemParam]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_gt_SystemParam](
	[SystemParamKey] [uniqueidentifier] NOT NULL,
	[ParamName] [varchar](30) NOT NULL,
	[ParamDescription] [varchar](200) NULL,
	[IntValue] [int] NULL,
	[DecimalValue] [decimal](15, 3) NULL,
	[DateValue] [datetime] NULL,
	[StringValue] [varchar](500) NULL,
	[BinaryValue] [varbinary](20) NULL,
 CONSTRAINT [PK_T_GT_SYSTEMPARAM] PRIMARY KEY CLUSTERED 
(
	[SystemParamKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
