USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_zy_CWTakeover]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_zy_CWTakeover]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_zy_CWTakeover](
	[CWTakeoverKey] [uniqueidentifier] NOT NULL,
	[CoursewareKey] [uniqueidentifier] NOT NULL,
	[TeachingCourseKey] [uniqueidentifier] NULL,
	[CourseKey] [uniqueidentifier] NOT NULL,
	[BatchlID] [varchar](20) NULL,
	[TakeoverDate] [datetime] NULL,
	[Taker] [varchar](40) NULL,
	[Reciever] [varchar](40) NULL,
	[TakeoverItem] [char](10) NULL,
	[TakeoverModel] [char](10) NULL,
	[TakeoverClasshours] [decimal](18, 0) NULL,
	[LastSendTime] [char](10) NULL,
	[SendTime] [char](10) NULL,
	[AllSendFlg] [bit] NULL,
	[Remark] [varchar](200) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_ZY_CWTAKEOVER] PRIMARY KEY CLUSTERED 
(
	[CWTakeoverKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
