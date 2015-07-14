USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_gt_FieldInfo]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_gt_FieldInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_gt_FieldInfo](
	[FieldInfoKey] [uniqueidentifier] NOT NULL,
	[FieldCode] [varchar](20) NOT NULL,
	[FieldDesc] [varchar](200) NULL,
	[DisplayFlg] [bit] NOT NULL,
	[NoNullFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_GT_FIELDINFO] PRIMARY KEY CLUSTERED 
(
	[FieldInfoKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
