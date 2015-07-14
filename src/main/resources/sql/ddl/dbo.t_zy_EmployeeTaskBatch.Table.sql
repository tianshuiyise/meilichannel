USE [NankaiDB]
GO
/****** Object:  Table [dbo].[t_zy_EmployeeTaskBatch]    Script Date: 07/19/2013 14:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[t_zy_EmployeeTaskBatch]') AND type in (N'U'))
BEGIN
CREATE TABLE [t_zy_EmployeeTaskBatch](
	[EmployeeTaskBatchKey] [uniqueidentifier] NOT NULL,
	[EmployeeUserKey] [uniqueidentifier] NULL,
	[EmployeeName] [varchar](40) NOT NULL,
	[TaskTypeFlgs] [int] NULL,
	[MakeDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[MakerName] [varchar](40) NULL,
	[Descript] [varchar](200) NULL,
	[TaskStatus] [varchar](10) NULL,
	[ConfirmDate] [datetime] NULL,
 CONSTRAINT [PK_T_ZY_EMPLOYEETASKBATCH] PRIMARY KEY CLUSTERED 
(
	[EmployeeTaskBatchKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
