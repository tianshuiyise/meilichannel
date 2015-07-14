USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_jw_Term]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_jw_Term]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_jw_Term](
	[TermKey] [uniqueidentifier] NOT NULL,
	[Sequence] [int] NOT NULL,
	[TermID] [varchar](10) NOT NULL,
	[TermName] [varchar](40) NULL,
	[EduType] [varchar](10) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Remark] [varchar](100) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_TERM] PRIMARY KEY CLUSTERED 
(
	[TermKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
