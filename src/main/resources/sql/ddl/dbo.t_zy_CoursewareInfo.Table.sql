USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_zy_CoursewareInfo]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_zy_CoursewareInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_zy_CoursewareInfo](
	[CoursewareInfoKey] [uniqueidentifier] NOT NULL,
	[TeachingCourseKey] [uniqueidentifier] NULL,
	[CourseKey] [uniqueidentifier] NOT NULL,
	[SpecialtyKey] [uniqueidentifier] NULL,
	[EdulevelID] [varchar](10) NULL,
	[PlanRecordDate] [datetime] NULL,
	[PlanUsedDate] [datetime] NULL,
	[PlanEndDate] [datetime] NULL,
	[CWUpdateType] [varchar](10) NULL,
	[CWUpdateDesc] [varchar](100) NULL,
	[DispatchCourseStatus] [varchar](10) NULL,
	[DispatchEndDate] [datetime] NULL,
	[FinishDate] [datetime] NULL,
	[CoursewareStatus] [varchar](10) NULL,
	[Editor] [varchar](40) NULL,
	[Maker] [varchar](40) NULL,
	[Auditor] [varchar](40) NULL,
	[Releaser] [varchar](40) NULL,
	[Deliverer] [varchar](40) NULL,
	[DeliveryDate] [varchar](40) NULL,
	[TotalHours] [decimal](18, 0) NULL,
	[ClassHoursRecord] [decimal](18, 0) NULL,
	[ClassHoursChecked] [decimal](18, 0) NULL,
	[ClassHoursStat] [decimal](18, 0) NULL,
	[HoursPerClassHours] [char](10) NULL,
	[SourceFileNum] [int] NULL,
	[ProductFileNum] [int] NULL,
	[ReleaseLevels] [int] NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_ZY_COURSEWAREINFO] PRIMARY KEY CLUSTERED 
(
	[CoursewareInfoKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
