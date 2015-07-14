USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_jw_TeachingPlan]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_jw_TeachingPlan]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_jw_TeachingPlan](
	[TeachingPlanKey] [uniqueidentifier] NOT NULL,
	[TeachingPlanName] [varchar](200) NULL,
	[EduType] [varchar](10) NULL,
	[EnrollBatchID] [varchar](10) NULL,
	[SpecialtyKey] [uniqueidentifier] NULL,
	[SpecialtyNameCh] [varchar](100) NULL,
	[EdulevelID] [varchar](10) NULL,
	[EduModel] [varchar](10) NULL,
	[DegreeFlg] [bit] NOT NULL,
	[Terms] [int] NULL,
	[TemplateFlg] [bit] NOT NULL,
	[TemplateKey] [uniqueidentifier] NULL,
	[Remark] [varchar](100) NULL,
	[TeachingPlanStatus] [varchar](10) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_TEACHINGPLAN] PRIMARY KEY CLUSTERED 
(
	[TeachingPlanKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
