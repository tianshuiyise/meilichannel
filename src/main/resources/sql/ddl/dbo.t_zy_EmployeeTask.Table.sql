USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_zy_EmployeeTask]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_zy_EmployeeTask]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_zy_EmployeeTask](
	[EmployeeTaskKey] [uniqueidentifier] NOT NULL,
	[EmployeeTaskBatchKey] [uniqueidentifier] NOT NULL,
	[TaskType] [varchar](10) NULL,
	[TaskName] [varchar](50) NULL,
	[TaskStatus] [varchar](10) NULL,
	[Remark] [varchar](100) NULL,
	[StatusDate] [datetime] NULL,
 CONSTRAINT [PK_T_ZY_EMPLOYEETASK] PRIMARY KEY CLUSTERED 
(
	[EmployeeTaskKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
