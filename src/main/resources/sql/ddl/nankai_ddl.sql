USE [nankai]
GO
/****** Object:  Table [dbo].[t_zy_TrainingRecord]    Script Date: 07/19/2013 10:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_zy_TrainingRecord]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_zy_TrainingRecord](
	[TrainingRecordKey] [uniqueidentifier] NOT NULL,
	[TraineeUserKey] [uniqueidentifier] NOT NULL,
	[TrainingItemKey] [varchar](50) NOT NULL,
	[Classhours] [decimal](18, 0) NULL,
	[TrainingDate] [datetime] NULL,
	[TestResult] [varchar](10) NULL,
	[TrainingModel] [varchar](50) NULL,
	[Remark] [varchar](200) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_ZY_TRAININGRECORD] PRIMARY KEY CLUSTERED 
(
	[TrainingRecordKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingRecord', N'COLUMN',N'TrainingRecordKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录制培训记录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingRecord', @level2type=N'COLUMN',@level2name=N'TrainingRecordKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingRecord', N'COLUMN',N'TraineeUserKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'培训人员(教师)标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingRecord', @level2type=N'COLUMN',@level2name=N'TraineeUserKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingRecord', N'COLUMN',N'TrainingItemKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'培训项目标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingRecord', @level2type=N'COLUMN',@level2name=N'TrainingItemKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingRecord', N'COLUMN',N'Classhours'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'培训课时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingRecord', @level2type=N'COLUMN',@level2name=N'Classhours'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingRecord', N'COLUMN',N'TrainingDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'培训日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingRecord', @level2type=N'COLUMN',@level2name=N'TrainingDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingRecord', N'COLUMN',N'TestResult'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'培训考核结果，1=好，2=中，3=差' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingRecord', @level2type=N'COLUMN',@level2name=N'TestResult'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingRecord', N'COLUMN',N'TrainingModel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'培训方式/途径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingRecord', @level2type=N'COLUMN',@level2name=N'TrainingModel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingRecord', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingRecord', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingRecord', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingRecord', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingRecord', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingRecord', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingRecord', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingRecord', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingRecord', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingRecord', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingRecord', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingRecord', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingRecord', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师录制培训记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingRecord'
GO
/****** Object:  Table [dbo].[t_zy_TrainingItem]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_zy_TrainingItem]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_zy_TrainingItem](
	[TrainingItemKey] [uniqueidentifier] NOT NULL,
	[Topic] [varchar](50) NOT NULL,
	[Classhours] [decimal](18, 0) NOT NULL,
	[ContentDesc] [varchar](200) NULL,
	[PlanDate] [datetime] NULL,
	[TrainingModel] [varchar](50) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_ZY_TRAININGITEM] PRIMARY KEY CLUSTERED 
(
	[TrainingItemKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingItem', N'COLUMN',N'TrainingItemKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录制培训项目标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingItem', @level2type=N'COLUMN',@level2name=N'TrainingItemKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingItem', N'COLUMN',N'Topic'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'培训主题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingItem', @level2type=N'COLUMN',@level2name=N'Topic'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingItem', N'COLUMN',N'Classhours'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'培训课时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingItem', @level2type=N'COLUMN',@level2name=N'Classhours'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingItem', N'COLUMN',N'ContentDesc'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'培训内容说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingItem', @level2type=N'COLUMN',@level2name=N'ContentDesc'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingItem', N'COLUMN',N'PlanDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划培训日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingItem', @level2type=N'COLUMN',@level2name=N'PlanDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingItem', N'COLUMN',N'TrainingModel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'培训方式/途径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingItem', @level2type=N'COLUMN',@level2name=N'TrainingModel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingItem', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingItem', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingItem', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingItem', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingItem', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingItem', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingItem', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingItem', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingItem', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingItem', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_TrainingItem', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程资源录制培训内容定义，如：
   1) 与课件录制特性相关的：预约方式、教室环境、课件基本要求；
   2) 与主讲教师本人相关的：时间安排、个性设备要求；
   3) 与远程教学特点相关的：受众情况、备课进度安排、讲稿准备；
   4) 与课程内容个性相关的：课程特点、讲授特点。' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_TrainingItem'
GO
/****** Object:  Table [dbo].[t_zy_StorageDevice]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_zy_StorageDevice]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_zy_StorageDevice](
	[StorageDeviceKey] [uniqueidentifier] NOT NULL,
	[DeviceName] [varchar](50) NOT NULL,
	[AccessUrl] [varchar](200) NULL,
	[MaxMemory] [decimal](18, 0) NULL,
	[UsedMemory] [decimal](18, 0) NULL,
	[Remark] [varchar](200) NULL,
	[StorageType] [varchar](10) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_ZY_STORAGEDEVICE] PRIMARY KEY CLUSTERED 
(
	[StorageDeviceKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_StorageDevice', N'COLUMN',N'StorageDeviceKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存储设备标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_StorageDevice', @level2type=N'COLUMN',@level2name=N'StorageDeviceKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_StorageDevice', N'COLUMN',N'DeviceName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存储设备名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_StorageDevice', @level2type=N'COLUMN',@level2name=N'DeviceName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_StorageDevice', N'COLUMN',N'AccessUrl'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_StorageDevice', @level2type=N'COLUMN',@level2name=N'AccessUrl'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_StorageDevice', N'COLUMN',N'MaxMemory'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大容量/M' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_StorageDevice', @level2type=N'COLUMN',@level2name=N'MaxMemory'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_StorageDevice', N'COLUMN',N'UsedMemory'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内存状况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_StorageDevice', @level2type=N'COLUMN',@level2name=N'UsedMemory'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_StorageDevice', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_StorageDevice', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_StorageDevice', N'COLUMN',N'StorageType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存储设备类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_StorageDevice', @level2type=N'COLUMN',@level2name=N'StorageType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_StorageDevice', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_StorageDevice', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_StorageDevice', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_StorageDevice', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_StorageDevice', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_StorageDevice', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_StorageDevice', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_StorageDevice', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_StorageDevice', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_StorageDevice', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_StorageDevice', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存储设备信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_StorageDevice'
GO
/****** Object:  Table [dbo].[t_zy_RecordWorkAppraiseItem]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_zy_RecordWorkAppraiseItem]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_zy_RecordWorkAppraiseItem](
	[WorkAppraiseItemKey] [uniqueidentifier] NOT NULL,
	[AppraiseContent] [varchar](50) NOT NULL,
	[Score] [decimal](18, 0) NOT NULL,
	[Remark] [varchar](200) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_ZY_RECORDWORKAPPRAISEITEM] PRIMARY KEY CLUSTERED 
(
	[WorkAppraiseItemKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraiseItem', N'COLUMN',N'WorkAppraiseItemKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录制工作评价项标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraiseItem', @level2type=N'COLUMN',@level2name=N'WorkAppraiseItemKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraiseItem', N'COLUMN',N'AppraiseContent'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraiseItem', @level2type=N'COLUMN',@level2name=N'AppraiseContent'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraiseItem', N'COLUMN',N'Score'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraiseItem', @level2type=N'COLUMN',@level2name=N'Score'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraiseItem', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraiseItem', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraiseItem', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraiseItem', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraiseItem', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraiseItem', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraiseItem', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraiseItem', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraiseItem', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraiseItem', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraiseItem', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraiseItem', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraiseItem', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程资源录制工作评价项目，如：
   培训接受情况
   远程教学适应度
   电子讲稿准备
   录制进度
   预约达成情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraiseItem'
GO
/****** Object:  Table [dbo].[t_zy_RecordWorkAppraise]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_zy_RecordWorkAppraise]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_zy_RecordWorkAppraise](
	[RecordWorkAppraiseKey] [uniqueidentifier] NOT NULL,
	[AppraiseItemKey] [uniqueidentifier] NOT NULL,
	[WorkorUserKey] [uniqueidentifier] NOT NULL,
	[Score] [decimal](18, 0) NULL,
	[Remark] [varchar](200) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_ZY_RECORDWORKAPPRAISE] PRIMARY KEY CLUSTERED 
(
	[RecordWorkAppraiseKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraise', N'COLUMN',N'RecordWorkAppraiseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录制工作评价标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraise', @level2type=N'COLUMN',@level2name=N'RecordWorkAppraiseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraise', N'COLUMN',N'AppraiseItemKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录制工作评价项标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraise', @level2type=N'COLUMN',@level2name=N'AppraiseItemKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraise', N'COLUMN',N'WorkorUserKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录制工作人员(教师)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraise', @level2type=N'COLUMN',@level2name=N'WorkorUserKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraise', N'COLUMN',N'Score'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价分数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraise', @level2type=N'COLUMN',@level2name=N'Score'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraise', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraise', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraise', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraise', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraise', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraise', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraise', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraise', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraise', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraise', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraise', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraise', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordWorkAppraise', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程资源录制工作评价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordWorkAppraise'
GO
/****** Object:  Table [dbo].[t_zy_RecordAppraiseItem]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_zy_RecordAppraiseItem]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_zy_RecordAppraiseItem](
	[RecordAppraiseItemKey] [uniqueidentifier] NOT NULL,
	[AppraiseContent] [varchar](50) NOT NULL,
	[Score] [decimal](18, 0) NOT NULL,
	[Remark] [varchar](200) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_ZY_RECORDAPPRAISEITEM] PRIMARY KEY CLUSTERED 
(
	[RecordAppraiseItemKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraiseItem', N'COLUMN',N'RecordAppraiseItemKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录制工作评价项标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraiseItem', @level2type=N'COLUMN',@level2name=N'RecordAppraiseItemKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraiseItem', N'COLUMN',N'AppraiseContent'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraiseItem', @level2type=N'COLUMN',@level2name=N'AppraiseContent'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraiseItem', N'COLUMN',N'Score'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraiseItem', @level2type=N'COLUMN',@level2name=N'Score'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraiseItem', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraiseItem', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraiseItem', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraiseItem', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraiseItem', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraiseItem', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraiseItem', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraiseItem', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraiseItem', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraiseItem', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraiseItem', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraiseItem', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraiseItem', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程资源录制工作评价项目，如：
   培训接受情况
   远程教学适应度
   电子讲稿准备
   录制进度
   预约达成情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraiseItem'
GO
/****** Object:  Table [dbo].[t_zy_RecordAppraise]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_zy_RecordAppraise]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_zy_RecordAppraise](
	[RecordAppraiseKey] [uniqueidentifier] NOT NULL,
	[RecordAppraiseItemKey] [uniqueidentifier] NOT NULL,
	[WorkorUserKey] [uniqueidentifier] NOT NULL,
	[Score] [decimal](18, 0) NULL,
	[Remark] [varchar](200) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_ZY_RECORDAPPRAISE] PRIMARY KEY CLUSTERED 
(
	[RecordAppraiseKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraise', N'COLUMN',N'RecordAppraiseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录制工作评价标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraise', @level2type=N'COLUMN',@level2name=N'RecordAppraiseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraise', N'COLUMN',N'RecordAppraiseItemKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录制工作评价项标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraise', @level2type=N'COLUMN',@level2name=N'RecordAppraiseItemKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraise', N'COLUMN',N'WorkorUserKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录制工作人员(教师)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraise', @level2type=N'COLUMN',@level2name=N'WorkorUserKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraise', N'COLUMN',N'Score'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价分数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraise', @level2type=N'COLUMN',@level2name=N'Score'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraise', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraise', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraise', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraise', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraise', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraise', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraise', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraise', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraise', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraise', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraise', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraise', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_RecordAppraise', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程资源录制工作评价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_RecordAppraise'
GO
/****** Object:  Table [dbo].[t_zy_EmployeeTaskBatch]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_zy_EmployeeTaskBatch]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_zy_EmployeeTaskBatch](
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
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTaskBatch', N'COLUMN',N'EmployeeTaskBatchKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'员工任务标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTaskBatch', @level2type=N'COLUMN',@level2name=N'EmployeeTaskBatchKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTaskBatch', N'COLUMN',N'EmployeeUserKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'员工标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTaskBatch', @level2type=N'COLUMN',@level2name=N'EmployeeUserKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTaskBatch', N'COLUMN',N'EmployeeName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'员工名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTaskBatch', @level2type=N'COLUMN',@level2name=N'EmployeeName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTaskBatch', N'COLUMN',N'TaskTypeFlgs'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务类型标志，16位标识，每一位bit表示相应的任务类型标志(0,1).1位=课件录制,2位=课件编辑,3位=课件审核,4位=课件部署,5位=课件发布,6位=运行监控,7位=教师管理，8位=设备维护，9位=其它' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTaskBatch', @level2type=N'COLUMN',@level2name=N'TaskTypeFlgs'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTaskBatch', N'COLUMN',N'MakeDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务下达时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTaskBatch', @level2type=N'COLUMN',@level2name=N'MakeDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTaskBatch', N'COLUMN',N'EndDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务截止时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTaskBatch', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTaskBatch', N'COLUMN',N'MakerName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务下达人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTaskBatch', @level2type=N'COLUMN',@level2name=N'MakerName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTaskBatch', N'COLUMN',N'Descript'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务内容描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTaskBatch', @level2type=N'COLUMN',@level2name=N'Descript'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTaskBatch', N'COLUMN',N'TaskStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTaskBatch', @level2type=N'COLUMN',@level2name=N'TaskStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTaskBatch', N'COLUMN',N'ConfirmDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTaskBatch', @level2type=N'COLUMN',@level2name=N'ConfirmDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTaskBatch', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源部员工任务表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTaskBatch'
GO
/****** Object:  Table [dbo].[t_zy_EmployeeTask]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_zy_EmployeeTask]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_zy_EmployeeTask](
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
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTask', N'COLUMN',N'EmployeeTaskKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'员工任务明细标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTask', @level2type=N'COLUMN',@level2name=N'EmployeeTaskKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTask', N'COLUMN',N'EmployeeTaskBatchKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'员工任务标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTask', @level2type=N'COLUMN',@level2name=N'EmployeeTaskBatchKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTask', N'COLUMN',N'TaskType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTask', @level2type=N'COLUMN',@level2name=N'TaskType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTask', N'COLUMN',N'TaskName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTask', @level2type=N'COLUMN',@level2name=N'TaskName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTask', N'COLUMN',N'TaskStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTask', @level2type=N'COLUMN',@level2name=N'TaskStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTask', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTask', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTask', N'COLUMN',N'StatusDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态标记时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTask', @level2type=N'COLUMN',@level2name=N'StatusDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_EmployeeTask', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源部员工任务明细' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_EmployeeTask'
GO
/****** Object:  Table [dbo].[t_zy_CWTakeover]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_zy_CWTakeover]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_zy_CWTakeover](
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
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'CWTakeoverKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程资源外部交接标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'CWTakeoverKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'CoursewareKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成品课程资源标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'CoursewareKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'TeachingCourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学课程信息标识，来自于Courseware表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'TeachingCourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'CourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程，来自于Courseware表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'CourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'BatchlID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批号，交付日期+四位编号，如：201301010001' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'BatchlID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'TakeoverDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交付时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'TakeoverDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'Taker'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交付人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'Taker'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'Reciever'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'Reciever'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'TakeoverItem'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'TakeoverItem'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'TakeoverModel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提供方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'TakeoverModel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'TakeoverClasshours'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传送课时数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'TakeoverClasshours'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'LastSendTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次传送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'LastSendTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'SendTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'本次传送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'SendTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'AllSendFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否全部传送' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'AllSendFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWTakeover', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程资源外部交接记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWTakeover'
GO
/****** Object:  Table [dbo].[t_zy_CWReleaseSite]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_zy_CWReleaseSite]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_zy_CWReleaseSite](
	[CWReleaseSiteKey] [uniqueidentifier] NOT NULL,
	[SiteName] [varchar](50) NOT NULL,
	[SiteUrl] [varchar](200) NULL,
	[Sequence] [int] NULL,
	[Remark] [varchar](200) NULL,
	[SiteType] [varchar](10) NULL,
	[SiteStatus] [varchar](10) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_ZY_CWRELEASESITE] PRIMARY KEY CLUSTERED 
(
	[CWReleaseSiteKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWReleaseSite', N'COLUMN',N'CWReleaseSiteKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源发布站点标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWReleaseSite', @level2type=N'COLUMN',@level2name=N'CWReleaseSiteKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWReleaseSite', N'COLUMN',N'SiteName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWReleaseSite', @level2type=N'COLUMN',@level2name=N'SiteName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWReleaseSite', N'COLUMN',N'SiteUrl'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWReleaseSite', @level2type=N'COLUMN',@level2name=N'SiteUrl'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWReleaseSite', N'COLUMN',N'Sequence'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWReleaseSite', @level2type=N'COLUMN',@level2name=N'Sequence'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWReleaseSite', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWReleaseSite', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWReleaseSite', N'COLUMN',N'SiteType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWReleaseSite', @level2type=N'COLUMN',@level2name=N'SiteType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWReleaseSite', N'COLUMN',N'SiteStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWReleaseSite', @level2type=N'COLUMN',@level2name=N'SiteStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWReleaseSite', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWReleaseSite', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWReleaseSite', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWReleaseSite', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWReleaseSite', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWReleaseSite', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWReleaseSite', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWReleaseSite', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWReleaseSite', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWReleaseSite', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWReleaseSite', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源发布站点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWReleaseSite'
GO
/****** Object:  Table [dbo].[t_zy_CWRecord]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_zy_CWRecord]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_zy_CWRecord](
	[CWRecordKey] [uniqueidentifier] NOT NULL,
	[TeachingCourseKey] [uniqueidentifier] NULL,
	[CourseKey] [uniqueidentifier] NOT NULL,
	[CWRecordName] [varchar](100) NOT NULL,
	[KnowledgePointCodes] [varchar](100) NULL,
	[ChapterCodes] [varchar](100) NULL,
	[Recorder] [varchar](40) NULL,
	[RecordDate] [datetime] NULL,
	[RecordID] [varchar](20) NULL,
	[CWRecordType] [varchar](10) NULL,
	[TotalHours] [decimal](18, 0) NULL,
	[CheckpointNum] [int] NULL,
	[CheckResultFlgs] [int] NULL,
	[Checker] [varchar](40) NULL,
	[CheckDesc] [varchar](400) NULL,
	[FileName] [varchar](200) NULL,
	[FullPath] [varchar](200) NULL,
	[FileSize] [decimal](18, 0) NULL,
	[CWRecordStatus] [varchar](10) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_ZY_CWRECORD] PRIMARY KEY CLUSTERED 
(
	[CWRecordKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'CWRecordKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录制课程资源标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'CWRecordKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'TeachingCourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学课程信息标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'TeachingCourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'CourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'CourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'CWRecordName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'CWRecordName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'KnowledgePointCodes'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'知识点编号集，英文分号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'KnowledgePointCodes'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'ChapterCodes'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'章节编号集，英文分号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'ChapterCodes'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'Recorder'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录制人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'Recorder'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'RecordDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录制日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'RecordDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'RecordID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'CWRecordType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录制资源类别。1=内部，2=外部' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'CWRecordType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'TotalHours'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总时长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'TotalHours'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'CheckpointNum'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'检测点数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'CheckpointNum'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'CheckResultFlgs'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'检测结果，最多32位。第i为=检测点i检测结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'CheckResultFlgs'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'Checker'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'检测人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'Checker'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'CheckDesc'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抽检结果描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'CheckDesc'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'FileName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'FileName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'FullPath'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'FullPath'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'FileSize'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件大小，单位M' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'FileSize'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'CWRecordStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录制资源状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'CWRecordStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CWRecord', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录制课程资源信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CWRecord'
GO
/****** Object:  Table [dbo].[t_zy_CoursewareInfo]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_zy_CoursewareInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_zy_CoursewareInfo](
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
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'CoursewareInfoKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程资源信息标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'CoursewareInfoKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'TeachingCourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学课程信息标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'TeachingCourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'CourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'CourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'SpecialtyKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'SpecialtyKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'EdulevelID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'EdulevelID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'PlanRecordDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划录制时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'PlanRecordDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'PlanUsedDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划使用时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'PlanUsedDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'PlanEndDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划截止时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'PlanEndDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'CWUpdateType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程资源更新类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'CWUpdateType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'CWUpdateDesc'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程资源更新说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'CWUpdateDesc'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'DispatchCourseStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'派课状态。0=未派课，1=派课中，2=已确认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'DispatchCourseStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'DispatchEndDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'派课截止时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'DispatchEndDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'FinishDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'制作完成日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'FinishDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'CoursewareStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程资源状态。0=待录制，1=录制中，2=使用中，3=已交付' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'CoursewareStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'Editor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'Editor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'Maker'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'制作人，指录制人/购买人/组合人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'Maker'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'Auditor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'Releaser'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'Releaser'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'Deliverer'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交付人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'Deliverer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'DeliveryDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交付时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'DeliveryDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'TotalHours'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总时长/分钟' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'TotalHours'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'ClassHoursRecord'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录制课时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'ClassHoursRecord'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'ClassHoursChecked'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已核算课时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'ClassHoursChecked'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'ClassHoursStat'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'统计课时数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'ClassHoursStat'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'HoursPerClassHours'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每课时录制时长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'HoursPerClassHours'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'SourceFileNum'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原始资源文件数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'SourceFileNum'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'ProductFileNum'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成品资源文件数，平台链接数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'ProductFileNum'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'ReleaseLevels'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布层次，第1位=专科，第2位=专升本，第3位=高起本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'ReleaseLevels'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_CoursewareInfo', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程资源信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_CoursewareInfo'
GO
/****** Object:  Table [dbo].[t_zy_Courseware]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_zy_Courseware]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_zy_Courseware](
	[CoursewareKey] [uniqueidentifier] NOT NULL,
	[CoursewareName] [varchar](100) NOT NULL,
	[TeachingCourseKey] [uniqueidentifier] NULL,
	[CourseKey] [uniqueidentifier] NOT NULL,
	[KnowledgePointCodes] [varchar](100) NULL,
	[ChapterCodes] [varchar](100) NULL,
	[Maker] [varchar](40) NULL,
	[MakeDate] [datetime] NULL,
	[CoursewareID] [varchar](20) NULL,
	[CWMakeModel] [varchar](10) NULL,
	[TotalHours] [decimal](18, 0) NULL,
	[FileName] [varchar](200) NULL,
	[FullPath] [varchar](200) NULL,
	[FileSize] [decimal](18, 0) NULL,
	[CWProductStatus] [varchar](10) NULL,
	[SourceCWKey] [uniqueidentifier] NULL,
	[OutsourceFrom] [varchar](100) NULL,
	[TimePointStart] [time](7) NULL,
	[TimePointEnd] [time](7) NULL,
	[Abstract] [varchar](200) NULL,
	[CheckResultFlgs] [int] NULL,
	[RejectRemark] [varchar](200) NULL,
	[Checker] [varchar](40) NULL,
	[CheckDate] [datetime] NULL,
	[ReleaseLevels] [int] NULL,
	[ReleaseModel] [int] NULL,
	[CoursewareFormat] [int] NULL,
	[ReleaseSites] [int] NULL,
	[Releaser] [varchar](40) NULL,
	[ReleaseDate] [datetime] NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_ZY_COURSEWARE] PRIMARY KEY CLUSTERED 
(
	[CoursewareKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'CoursewareKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成品课程资源标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'CoursewareKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'CoursewareName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'CoursewareName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'TeachingCourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学课程信息标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'TeachingCourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'CourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'CourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'KnowledgePointCodes'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'知识点编号集，英文分号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'KnowledgePointCodes'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'ChapterCodes'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'章节编号集，英文分号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'ChapterCodes'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'Maker'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'制作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'Maker'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'MakeDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'制作日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'MakeDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'CoursewareID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号，或者顺序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'CoursewareID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'CWMakeModel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源制作方式，1=录制，2=外购，3=组合' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'CWMakeModel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'TotalHours'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总时长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'TotalHours'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'FileName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'FileName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'FullPath'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'FullPath'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'FileSize'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件大小，单位M' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'FileSize'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'CWProductStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成品资源状态，1=新建，2=已审核，3=已发布' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'CWProductStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'SourceCWKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源课程资源标识(编辑资源的源录制资源，或者组合资源的源资源)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'SourceCWKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'OutsourceFrom'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外购来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'OutsourceFrom'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'TimePointStart'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑资源的起始时间点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'TimePointStart'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'TimePointEnd'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑资源的结束时间点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'TimePointEnd'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'Abstract'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'Abstract'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'CheckResultFlgs'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核结果。第1位=内容审核结果，第2位=链接地址审核结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'CheckResultFlgs'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'RejectRemark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'不合格品处理说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'RejectRemark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'Checker'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'Checker'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'CheckDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'CheckDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'ReleaseLevels'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布层次，第1位=专科，第2位=专升本，第3位=高起本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'ReleaseLevels'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'ReleaseModel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布方式，第1位=网络课程，第2位=课件链接，第3位=其他' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'ReleaseModel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'CoursewareFormat'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成品资源格式，第1位=网络课程，第2位=网梯课件，第3位=其他' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'CoursewareFormat'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'ReleaseSites'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布站点，32位，第i位表示第i个站点是否发布' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'ReleaseSites'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'Releaser'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部署发布责任人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'Releaser'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'ReleaseDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'ReleaseDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_zy_Courseware', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成品课程资源信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_zy_Courseware'
GO
/****** Object:  Table [dbo].[t_jw_Term]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_jw_Term]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_jw_Term](
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
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Term', N'COLUMN',N'TermKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Term', @level2type=N'COLUMN',@level2name=N'TermKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Term', N'COLUMN',N'Sequence'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Term', @level2type=N'COLUMN',@level2name=N'Sequence'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Term', N'COLUMN',N'TermID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Term', @level2type=N'COLUMN',@level2name=N'TermID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Term', N'COLUMN',N'TermName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Term', @level2type=N'COLUMN',@level2name=N'TermName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Term', N'COLUMN',N'EduType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育类型，默认1（学历教育）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Term', @level2type=N'COLUMN',@level2name=N'EduType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Term', N'COLUMN',N'StartDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'起始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Term', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Term', N'COLUMN',N'EndDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Term', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Term', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Term', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Term', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Term', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Term', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Term', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Term', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Term', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Term', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Term', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Term', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Term', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Term', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Term'
GO
/****** Object:  Table [dbo].[t_jw_TeachingPlan]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_jw_TeachingPlan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_jw_TeachingPlan](
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
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'TeachingPlanKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学计划标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'TeachingPlanKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'TeachingPlanName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学计划名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'TeachingPlanName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'EduType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育类型，默认1（学历教育）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'EduType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'EnrollBatchID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'EnrollBatchID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'SpecialtyKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'SpecialtyKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'SpecialtyNameCh'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'SpecialtyNameCh'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'EdulevelID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'EdulevelID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'EduModel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学服务模式，数据字典中的Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'EduModel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'DegreeFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有无学位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'DegreeFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'Terms'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'Terms'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'TemplateFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'TemplateFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'TemplateKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学计划模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'TemplateKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'TeachingPlanStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'TeachingPlanStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingPlan', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学计划基本信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingPlan'
GO
/****** Object:  Table [dbo].[t_jw_TeachingCourseExam]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_jw_TeachingCourseExam]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_jw_TeachingCourseExam](
	[TeachingCourseExamKey] [uniqueidentifier] NOT NULL,
	[TeachingCourseKey] [uniqueidentifier] NOT NULL,
	[ExamModel] [varchar](10) NULL,
	[ExamCondition] [varchar](200) NULL,
	[UsualScoreWeight] [decimal](18, 0) NULL,
	[SelectTime] [datetime] NULL,
	[OrderExamTime] [datetime] NULL,
	[ExamTime] [datetime] NULL,
	[ReexamTimes] [int] NULL,
	[FreeReexamTimes] [int] NULL,
	[ReselectTimes] [int] NULL,
	[ReexamTimes2] [int] NULL,
	[CondOpenDays] [int] NULL,
	[CondCourseworkTimes] [int] NULL,
	[CondUsualScore] [decimal](18, 0) NULL,
	[CondTotalScore] [decimal](18, 0) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_TEACHINGCOURSEEXAM] PRIMARY KEY CLUSTERED 
(
	[TeachingCourseExamKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'TeachingCourseExamKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学课程考试信息标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'TeachingCourseExamKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'TeachingCourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学课程标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'TeachingCourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'ExamModel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'ExamModel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'ExamCondition'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试条件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'ExamCondition'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'UsualScoreWeight'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'平时成绩比重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'UsualScoreWeight'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'SelectTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缴费选课时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'SelectTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'OrderExamTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试预约时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'OrderExamTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'ExamTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'ExamTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'ReexamTimes'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许考试次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'ReexamTimes'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'FreeReexamTimes'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'免费考试次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'FreeReexamTimes'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'ReselectTimes'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最多重修次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'ReselectTimes'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'ReexamTimes2'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'重修考试次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'ReexamTimes2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'CondOpenDays'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试预约条件-课程开通时间>=' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'CondOpenDays'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'CondCourseworkTimes'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试预约条件-作业通过次数>=' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'CondCourseworkTimes'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'CondUsualScore'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试预约条件-平时成绩>=' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'CondUsualScore'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'CondTotalScore'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分获取条件-总评成绩>=' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'CondTotalScore'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourseExam', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学计划课程考试信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourseExam'
GO
/****** Object:  Table [dbo].[t_jw_TeachingCourse]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_jw_TeachingCourse]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_jw_TeachingCourse](
	[TeachingCourseKey] [uniqueidentifier] NOT NULL,
	[TeachingPlanKey] [uniqueidentifier] NOT NULL,
	[CourseKey] [uniqueidentifier] NOT NULL,
	[Score] [varchar](20) NULL,
	[ClassHour] [varchar](20) NULL,
	[Remark] [varchar](100) NULL,
	[TermID] [varchar](10) NULL,
	[CourseSelectType] [varchar](10) NULL,
	[CourseType] [varchar](10) NULL,
	[StartDate] [datetime] NULL,
	[PreCourses] [varchar](200) NULL,
	[DegreeFlgs] [int] NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_TEACHINGCOURSE] PRIMARY KEY CLUSTERED 
(
	[TeachingCourseKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourse', N'COLUMN',N'TeachingCourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学计划课程标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourse', @level2type=N'COLUMN',@level2name=N'TeachingCourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourse', N'COLUMN',N'TeachingPlanKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学计划标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourse', @level2type=N'COLUMN',@level2name=N'TeachingPlanKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourse', N'COLUMN',N'CourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourse', @level2type=N'COLUMN',@level2name=N'CourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourse', N'COLUMN',N'Score'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourse', @level2type=N'COLUMN',@level2name=N'Score'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourse', N'COLUMN',N'ClassHour'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourse', @level2type=N'COLUMN',@level2name=N'ClassHour'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourse', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourse', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourse', N'COLUMN',N'TermID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选课学期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourse', @level2type=N'COLUMN',@level2name=N'TermID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourse', N'COLUMN',N'CourseSelectType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选课类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourse', @level2type=N'COLUMN',@level2name=N'CourseSelectType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourse', N'COLUMN',N'CourseType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourse', @level2type=N'COLUMN',@level2name=N'CourseType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourse', N'COLUMN',N'StartDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始学习时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourse', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourse', N'COLUMN',N'PreCourses'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'先修课程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourse', @level2type=N'COLUMN',@level2name=N'PreCourses'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourse', N'COLUMN',N'DegreeFlgs'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学位属性标识，第1位=是否学位课程，第2位=是否学位外语，第3位=是否计算平均成绩，第4位=是否需要补考审核' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourse', @level2type=N'COLUMN',@level2name=N'DegreeFlgs'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourse', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourse', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourse', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourse', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourse', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourse', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourse', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourse', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourse', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourse', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_TeachingCourse', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学计划课程信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_TeachingCourse'
GO
/****** Object:  Table [dbo].[t_jw_Teacher]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_jw_Teacher]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_jw_Teacher](
	[TeacherKey] [uniqueidentifier] NOT NULL,
	[UserKey] [uniqueidentifier] NULL,
	[TeacherTypeFlgs] [int] NULL,
	[OriginCode] [varchar](10) NULL,
	[Folk] [varchar](10) NULL,
	[Politics] [varchar](10) NULL,
	[Native] [varchar](40) NULL,
	[Education] [varchar](10) NULL,
	[Degree] [varchar](10) NULL,
	[PositionTitle] [varchar](10) NULL,
	[Specialty] [varchar](50) NULL,
	[GraduateSchool] [varchar](200) NULL,
	[ShortenName] [varchar](10) NULL,
	[WorkUnit] [varchar](200) NULL,
	[TeachingCourse] [varchar](100) NULL,
	[ResearchArea] [varchar](200) NULL,
	[PhotoFilePath] [varchar](200) NULL,
	[HomeAddress] [varchar](400) NULL,
	[WageCard] [varchar](20) NULL,
	[BankCard] [varchar](30) NULL,
	[BankName] [varchar](100) NULL,
	[RetireFlg] [bit] NOT NULL,
	[RetireCard] [varchar](30) NULL,
	[TeacherStatus] [varchar](10) NULL,
	[HireStatus] [varchar](10) NULL,
	[ThesisGuidFlg] [bit] NOT NULL,
	[Brief] [varchar](200) NULL,
	[FieldEx1] [varchar](100) NULL,
	[FieldEx2] [varchar](100) NULL,
	[FieldEx3] [varchar](100) NULL,
	[FieldEx4] [varchar](100) NULL,
	[FieldEx5] [varchar](100) NULL,
	[TeacherTypeEx] [varchar](10) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_TEACHER] PRIMARY KEY CLUSTERED 
(
	[TeacherKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'TeacherKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'TeacherKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'UserKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'UserKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'TeacherTypeFlgs'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师类型，1位-责任教师，2位-主讲教师，3位-.辅导教师，4位-论文指导老师，5位-.其他（注明）。一个教师可能多个类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'TeacherTypeFlgs'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'OriginCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源，A-校内，B-校外' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'OriginCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'Folk'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'民族' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'Folk'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'Politics'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'政治面貌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'Politics'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'Native'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'籍贯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'Native'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'Education'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'Education'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'Degree'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'Degree'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'PositionTitle'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职称: A.正高级（包括教授、研究员、教授级高级工程师等）；B.副专业技术职务: A.正高级（包括教授、研究员、教授级高级工程师等）；B.副高级（包括副教授、副研究员、高级工程师、高级研究员等）；C.中级（包括讲师、助理研究员、工程师、实验师、馆员等）；D.初级（包括助教、实习研究员、助理工程师、助理实验师、技术员、助理馆员、管理员、实验员等）；E.无' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'PositionTitle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'Specialty'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'Specialty'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'GraduateSchool'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毕业学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'GraduateSchool'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'ShortenName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拼音简写，不超过10个字符' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'ShortenName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'WorkUnit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'WorkUnit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'TeachingCourse'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所授课程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'TeachingCourse'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'ResearchArea'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'研究方向' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'ResearchArea'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'PhotoFilePath'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传照片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'PhotoFilePath'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'HomeAddress'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'HomeAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'WageCard'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工资号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'WageCard'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'BankCard'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行(交行)卡号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'BankCard'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'BankName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'BankName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'RetireFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否退休' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'RetireFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'RetireCard'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退休证编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'RetireCard'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'TeacherStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'TeacherStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'HireStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师聘用状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'HireStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'ThesisGuidFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否论文指导老师' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'ThesisGuidFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'Brief'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人介绍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'Brief'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'FieldEx1'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'FieldEx1'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'FieldEx2'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'FieldEx2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'FieldEx3'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'FieldEx3'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'FieldEx4'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'FieldEx4'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'FieldEx5'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'FieldEx5'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'TeacherTypeEx'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'TeacherTypeEx'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Teacher', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Teacher'
GO
/****** Object:  Table [dbo].[t_jw_Specialty]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_jw_Specialty]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_jw_Specialty](
	[SpecialtyKey] [uniqueidentifier] NOT NULL,
	[SpecialtyID] [varchar](10) NULL,
	[NameCh] [varchar](100) NULL,
	[NameEn] [varchar](100) NULL,
	[EduType] [varchar](10) NULL,
	[DegreeType] [varchar](100) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_SPECIALTY] PRIMARY KEY CLUSTERED 
(
	[SpecialtyKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Specialty', N'COLUMN',N'SpecialtyKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Specialty', @level2type=N'COLUMN',@level2name=N'SpecialtyKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Specialty', N'COLUMN',N'SpecialtyID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Specialty', @level2type=N'COLUMN',@level2name=N'SpecialtyID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Specialty', N'COLUMN',N'NameCh'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Specialty', @level2type=N'COLUMN',@level2name=N'NameCh'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Specialty', N'COLUMN',N'NameEn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业英文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Specialty', @level2type=N'COLUMN',@level2name=N'NameEn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Specialty', N'COLUMN',N'EduType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育类型，默认1（学历教育）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Specialty', @level2type=N'COLUMN',@level2name=N'EduType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Specialty', N'COLUMN',N'DegreeType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学位类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Specialty', @level2type=N'COLUMN',@level2name=N'DegreeType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Specialty', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Specialty', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Specialty', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Specialty', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Specialty', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Specialty', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Specialty', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Specialty', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Specialty', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Specialty', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Specialty', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Specialty'
GO
/****** Object:  Table [dbo].[t_jw_EnrollBatch]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_jw_EnrollBatch]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_jw_EnrollBatch](
	[EnrollBatchKey] [uniqueidentifier] NOT NULL,
	[BatchID] [varchar](10) NOT NULL,
	[BatchName] [varchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EduType] [varchar](10) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_ENROLLBATCH] PRIMARY KEY CLUSTERED 
(
	[EnrollBatchKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_EnrollBatch', N'COLUMN',N'EnrollBatchKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学籍批次标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_EnrollBatch', @level2type=N'COLUMN',@level2name=N'EnrollBatchKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_EnrollBatch', N'COLUMN',N'BatchID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_EnrollBatch', @level2type=N'COLUMN',@level2name=N'BatchID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_EnrollBatch', N'COLUMN',N'BatchName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_EnrollBatch', @level2type=N'COLUMN',@level2name=N'BatchName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_EnrollBatch', N'COLUMN',N'StartDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_EnrollBatch', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_EnrollBatch', N'COLUMN',N'EduType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育类型，默认1（学历教育）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_EnrollBatch', @level2type=N'COLUMN',@level2name=N'EduType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_EnrollBatch', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_EnrollBatch', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_EnrollBatch', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_EnrollBatch', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_EnrollBatch', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_EnrollBatch', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_EnrollBatch', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_EnrollBatch', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_EnrollBatch', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_EnrollBatch', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_EnrollBatch', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招生批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_EnrollBatch'
GO
/****** Object:  Table [dbo].[t_jw_Edulevel]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_jw_Edulevel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_jw_Edulevel](
	[EdulevelKey] [uniqueidentifier] NOT NULL,
	[EdulevelID] [varchar](10) NULL,
	[NameCh] [varchar](40) NULL,
	[EduType] [varchar](10) NULL,
	[SchoolingLength] [int] NULL,
	[LevelAttr] [varchar](40) NULL,
	[DegreeFlg] [bit] NOT NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_EDULEVEL] PRIMARY KEY CLUSTERED 
(
	[EdulevelKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Edulevel', N'COLUMN',N'EdulevelKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Edulevel', @level2type=N'COLUMN',@level2name=N'EdulevelKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Edulevel', N'COLUMN',N'EdulevelID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Edulevel', @level2type=N'COLUMN',@level2name=N'EdulevelID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Edulevel', N'COLUMN',N'NameCh'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Edulevel', @level2type=N'COLUMN',@level2name=N'NameCh'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Edulevel', N'COLUMN',N'EduType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育类型，默认1（学历教育）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Edulevel', @level2type=N'COLUMN',@level2name=N'EduType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Edulevel', N'COLUMN',N'SchoolingLength'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Edulevel', @level2type=N'COLUMN',@level2name=N'SchoolingLength'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Edulevel', N'COLUMN',N'LevelAttr'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次属性，暂同名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Edulevel', @level2type=N'COLUMN',@level2name=N'LevelAttr'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Edulevel', N'COLUMN',N'DegreeFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有无学位标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Edulevel', @level2type=N'COLUMN',@level2name=N'DegreeFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Edulevel', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Edulevel', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Edulevel', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Edulevel', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Edulevel', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Edulevel', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Edulevel', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Edulevel', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Edulevel', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Edulevel', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Edulevel', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Edulevel'
GO
/****** Object:  Table [dbo].[t_jw_CourseTextbook]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_jw_CourseTextbook]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_jw_CourseTextbook](
	[CourseTextbookKey] [uniqueidentifier] NOT NULL,
	[TeachingCourseKey] [uniqueidentifier] NULL,
	[CourseKey] [uniqueidentifier] NOT NULL,
	[UpdateFlg] [bit] NOT NULL,
	[NameCh] [varchar](100) NOT NULL,
	[NameEn] [varchar](100) NULL,
	[ISBNCode] [varchar](40) NULL,
	[Publisher] [varchar](100) NULL,
	[Author] [varchar](40) NULL,
	[EditionNo] [varchar](10) NULL,
	[Price] [decimal](18, 0) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_COURSETEXTBOOK] PRIMARY KEY CLUSTERED 
(
	[CourseTextbookKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTextbook', N'COLUMN',N'CourseTextbookKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程教材信息标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTextbook', @level2type=N'COLUMN',@level2name=N'CourseTextbookKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTextbook', N'COLUMN',N'TeachingCourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学课程信息标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTextbook', @level2type=N'COLUMN',@level2name=N'TeachingCourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTextbook', N'COLUMN',N'CourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTextbook', @level2type=N'COLUMN',@level2name=N'CourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTextbook', N'COLUMN',N'UpdateFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否更新教材' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTextbook', @level2type=N'COLUMN',@level2name=N'UpdateFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTextbook', N'COLUMN',N'NameCh'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教材中文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTextbook', @level2type=N'COLUMN',@level2name=N'NameCh'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTextbook', N'COLUMN',N'NameEn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教材英文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTextbook', @level2type=N'COLUMN',@level2name=N'NameEn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTextbook', N'COLUMN',N'ISBNCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ISBN编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTextbook', @level2type=N'COLUMN',@level2name=N'ISBNCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTextbook', N'COLUMN',N'Publisher'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出版社' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTextbook', @level2type=N'COLUMN',@level2name=N'Publisher'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTextbook', N'COLUMN',N'Author'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTextbook', @level2type=N'COLUMN',@level2name=N'Author'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTextbook', N'COLUMN',N'EditionNo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTextbook', @level2type=N'COLUMN',@level2name=N'EditionNo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTextbook', N'COLUMN',N'Price'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'定价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTextbook', @level2type=N'COLUMN',@level2name=N'Price'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTextbook', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTextbook', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTextbook', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTextbook', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTextbook', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTextbook', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTextbook', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTextbook', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTextbook', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTextbook', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTextbook', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学课程教材信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTextbook'
GO
/****** Object:  Table [dbo].[t_jw_CourseTeacher]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_jw_CourseTeacher]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_jw_CourseTeacher](
	[CourseTeacherKey] [uniqueidentifier] NOT NULL,
	[TeachingCourseKey] [uniqueidentifier] NULL,
	[CourseKey] [uniqueidentifier] NOT NULL,
	[TeacherKey] [uniqueidentifier] NOT NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_COURSETEACHER] PRIMARY KEY CLUSTERED 
(
	[CourseTeacherKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTeacher', N'COLUMN',N'CourseTeacherKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程主讲教师标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTeacher', @level2type=N'COLUMN',@level2name=N'CourseTeacherKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTeacher', N'COLUMN',N'TeachingCourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学课程标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTeacher', @level2type=N'COLUMN',@level2name=N'TeachingCourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTeacher', N'COLUMN',N'CourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTeacher', @level2type=N'COLUMN',@level2name=N'CourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTeacher', N'COLUMN',N'TeacherKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTeacher', @level2type=N'COLUMN',@level2name=N'TeacherKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTeacher', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTeacher', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTeacher', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTeacher', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTeacher', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTeacher', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTeacher', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTeacher', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTeacher', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTeacher', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseTeacher', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学计划课程主讲教师' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseTeacher'
GO
/****** Object:  Table [dbo].[t_jw_CourseMaterialType]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_jw_CourseMaterialType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_jw_CourseMaterialType](
	[CourseMaterialTypeKey] [uniqueidentifier] NOT NULL,
	[TypeName] [varchar](50) NULL,
	[TypeCode] [varchar](10) NULL,
	[TypeDesc] [varchar](200) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_COURSEMATERIALTYPE] PRIMARY KEY CLUSTERED 
(
	[CourseMaterialTypeKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterialType', N'COLUMN',N'CourseMaterialTypeKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程资料类别标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterialType', @level2type=N'COLUMN',@level2name=N'CourseMaterialTypeKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterialType', N'COLUMN',N'TypeName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterialType', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterialType', N'COLUMN',N'TypeCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterialType', @level2type=N'COLUMN',@level2name=N'TypeCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterialType', N'COLUMN',N'TypeDesc'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterialType', @level2type=N'COLUMN',@level2name=N'TypeDesc'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterialType', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterialType', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterialType', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterialType', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterialType', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterialType', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterialType', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterialType', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterialType', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterialType', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterialType', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程资料类别定义。考试辅导资料，教学相关文档，学术报告资料，活动影音资料' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterialType'
GO
/****** Object:  Table [dbo].[t_jw_CourseMaterial]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_jw_CourseMaterial]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_jw_CourseMaterial](
	[CourseMaterialKey] [uniqueidentifier] NOT NULL,
	[MaterialName] [varchar](100) NOT NULL,
	[CourseKey] [uniqueidentifier] NOT NULL,
	[CourseName] [varchar](100) NULL,
	[MaterialType] [varchar](10) NOT NULL,
	[KnowledgePointCodes] [varchar](100) NULL,
	[ChapterCodes] [varchar](100) NULL,
	[Author] [varchar](20) NULL,
	[MakeDate] [datetime] NULL,
	[MaterialID] [varchar](20) NULL,
	[Origin] [varchar](100) NULL,
	[UseTermCode] [varchar](10) NULL,
	[ContentDesc] [varchar](200) NULL,
	[FileName] [varchar](200) NULL,
	[FullPath] [varchar](200) NULL,
	[AuditorUserKey] [uniqueidentifier] NULL,
	[AuditDate] [datetime] NULL,
	[AuditCode] [varchar](10) NULL,
	[AuditDesc] [varchar](200) NULL,
	[DownloadTimes] [int] NULL,
	[FileSize] [decimal](18, 0) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_COURSEMATERIAL] PRIMARY KEY CLUSTERED 
(
	[CourseMaterialKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'CourseMaterialKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程资料标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'CourseMaterialKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'MaterialName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资料名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'MaterialName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'CourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'CourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'CourseName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称，=Course.NameCh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'CourseName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'MaterialType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资料类别编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'MaterialType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'KnowledgePointCodes'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'知识点编号集，英文分号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'KnowledgePointCodes'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'ChapterCodes'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'章节编号集，英文分号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'ChapterCodes'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'Author'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'Author'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'MakeDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'制作日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'MakeDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'MaterialID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'MaterialID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'Origin'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'Origin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'UseTermCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用学期（编号）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'UseTermCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'ContentDesc'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'ContentDesc'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'FileName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'FileName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'FullPath'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'FullPath'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'AuditorUserKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'AuditorUserKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'AuditDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'AuditDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'AuditCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核结果，1=通过，0=没通过' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'AuditCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'AuditDesc'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核问题描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'AuditDesc'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'DownloadTimes'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'DownloadTimes'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'FileSize'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件大小，单位M' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'FileSize'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseMaterial', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程资料信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseMaterial'
GO
/****** Object:  Table [dbo].[t_jw_CourseKnowledgePoint]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_jw_CourseKnowledgePoint]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_jw_CourseKnowledgePoint](
	[CourseKnowledgePointKey] [uniqueidentifier] NOT NULL,
	[CourseKey] [uniqueidentifier] NULL,
	[KnowledgePointName] [varchar](50) NOT NULL,
	[KnowledgePointCode] [varchar](10) NULL,
	[Sequence] [int] NULL,
	[ContentDesc] [varchar](200) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_COURSEKNOWPOINT] PRIMARY KEY CLUSTERED 
(
	[CourseKnowledgePointKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseKnowledgePoint', N'COLUMN',N'CourseKnowledgePointKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程知识点标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseKnowledgePoint', @level2type=N'COLUMN',@level2name=N'CourseKnowledgePointKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseKnowledgePoint', N'COLUMN',N'CourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseKnowledgePoint', @level2type=N'COLUMN',@level2name=N'CourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseKnowledgePoint', N'COLUMN',N'KnowledgePointName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'知识点标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseKnowledgePoint', @level2type=N'COLUMN',@level2name=N'KnowledgePointName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseKnowledgePoint', N'COLUMN',N'KnowledgePointCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'知识点编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseKnowledgePoint', @level2type=N'COLUMN',@level2name=N'KnowledgePointCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseKnowledgePoint', N'COLUMN',N'Sequence'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseKnowledgePoint', @level2type=N'COLUMN',@level2name=N'Sequence'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseKnowledgePoint', N'COLUMN',N'ContentDesc'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'知识点内容说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseKnowledgePoint', @level2type=N'COLUMN',@level2name=N'ContentDesc'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseKnowledgePoint', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseKnowledgePoint', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseKnowledgePoint', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseKnowledgePoint', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseKnowledgePoint', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseKnowledgePoint', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseKnowledgePoint', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseKnowledgePoint', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseKnowledgePoint', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseKnowledgePoint', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseKnowledgePoint', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程知识点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseKnowledgePoint'
GO
/****** Object:  Table [dbo].[t_jw_CourseChapter]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_jw_CourseChapter]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_jw_CourseChapter](
	[CourseChapterKey] [uniqueidentifier] NOT NULL,
	[CourseKey] [uniqueidentifier] NOT NULL,
	[ChapterName] [varchar](50) NOT NULL,
	[ChapterCode] [varchar](10) NULL,
	[ParentChapterCode] [varchar](10) NULL,
	[Sequence] [int] NULL,
	[LeafFlg] [bit] NULL,
	[Depth] [int] NULL,
	[ContentDesc] [varchar](200) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_COURSECHAPTER] PRIMARY KEY CLUSTERED 
(
	[CourseChapterKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseChapter', N'COLUMN',N'CourseChapterKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程章节标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseChapter', @level2type=N'COLUMN',@level2name=N'CourseChapterKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseChapter', N'COLUMN',N'CourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseChapter', @level2type=N'COLUMN',@level2name=N'CourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseChapter', N'COLUMN',N'ChapterName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'章节标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseChapter', @level2type=N'COLUMN',@level2name=N'ChapterName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseChapter', N'COLUMN',N'ChapterCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'章节编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseChapter', @level2type=N'COLUMN',@level2name=N'ChapterCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseChapter', N'COLUMN',N'ParentChapterCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父章节编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseChapter', @level2type=N'COLUMN',@level2name=N'ParentChapterCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseChapter', N'COLUMN',N'Sequence'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseChapter', @level2type=N'COLUMN',@level2name=N'Sequence'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseChapter', N'COLUMN',N'LeafFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'叶子章节标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseChapter', @level2type=N'COLUMN',@level2name=N'LeafFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseChapter', N'COLUMN',N'Depth'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'深度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseChapter', @level2type=N'COLUMN',@level2name=N'Depth'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseChapter', N'COLUMN',N'ContentDesc'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'章节主要内容说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseChapter', @level2type=N'COLUMN',@level2name=N'ContentDesc'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseChapter', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseChapter', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseChapter', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseChapter', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseChapter', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseChapter', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseChapter', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseChapter', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseChapter', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseChapter', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_CourseChapter', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程章节信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_CourseChapter'
GO
/****** Object:  Table [dbo].[t_jw_Course]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_jw_Course]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_jw_Course](
	[CourseKey] [uniqueidentifier] NOT NULL,
	[CourseID] [varchar](20) NOT NULL,
	[NameCh] [varchar](100) NOT NULL,
	[NameEn] [varchar](100) NULL,
	[Language] [varchar](20) NULL,
	[Keyword] [varchar](100) NULL,
	[SpecialtiesCode] [varchar](100) NULL,
	[SpecialtiesName] [varchar](200) NULL,
	[SpecialtiesLevel] [varchar](100) NULL,
	[Subjects] [varchar](200) NULL,
	[CommendScore] [varchar](20) NULL,
	[CommendHours] [varchar](20) NULL,
	[AttributeFlgs] [int] NULL,
	[Version] [varchar](10) NULL,
	[UnifiedExamSubject] [varchar](40) NULL,
	[Brief] [varchar](200) NULL,
	[Remark] [varchar](100) NULL,
	[FieldEx1] [varchar](100) NULL,
	[FieldEx2] [varchar](100) NULL,
	[FieldEx3] [varchar](100) NULL,
	[FieldEx4] [varchar](100) NULL,
	[FieldEx5] [varchar](100) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_JW_COURSE] PRIMARY KEY CLUSTERED 
(
	[CourseKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'CourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'CourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'CourseID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'CourseID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'NameCh'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程中文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'NameCh'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'NameEn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程英文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'NameEn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'Language'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'语言' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'Language'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'Keyword'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'Keyword'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'SpecialtiesCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'适用专业代码，可多填，英文分号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'SpecialtiesCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'SpecialtiesName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'适用专业名称，可多填，英文分号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'SpecialtiesName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'SpecialtiesLevel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'适用专业层次，可多填，英文分号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'SpecialtiesLevel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'Subjects'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属学科，可多填，英文分号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'Subjects'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'CommendScore'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推荐学分，可多填，英文分号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'CommendScore'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'CommendHours'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推荐学时数，可多填，英文分号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'CommendHours'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'AttributeFlgs'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'属性标识，16位，1=是否统考，2=是否提供给本校其他类型的学生使用，3=是否提供给其他学校使用，4=是否参与校内学分互认，5=是否参与校际学分互认
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'AttributeFlgs'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'Version'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程版本号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'Version'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'UnifiedExamSubject'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对应统考科目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'UnifiedExamSubject'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'Brief'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'Brief'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'FieldEx1'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'FieldEx1'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'FieldEx2'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'FieldEx2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'FieldEx3'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'FieldEx3'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'FieldEx4'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'FieldEx4'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'FieldEx5'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'FieldEx5'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_jw_Course', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_jw_Course'
GO
/****** Object:  Table [dbo].[t_gt_UserRole]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_gt_UserRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_gt_UserRole](
	[UserRoleKey] [uniqueidentifier] NOT NULL,
	[UserKey] [uniqueidentifier] NOT NULL,
	[RoleKey] [uniqueidentifier] NOT NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_GT_USERROLE] PRIMARY KEY CLUSTERED 
(
	[UserRoleKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_UserRole', N'COLUMN',N'UserRoleKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户角色标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_UserRole', @level2type=N'COLUMN',@level2name=N'UserRoleKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_UserRole', N'COLUMN',N'UserKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_UserRole', @level2type=N'COLUMN',@level2name=N'UserKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_UserRole', N'COLUMN',N'RoleKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_UserRole', @level2type=N'COLUMN',@level2name=N'RoleKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_UserRole', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_UserRole', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_UserRole', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_UserRole', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_UserRole', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_UserRole', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_UserRole', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_UserRole', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_UserRole', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_UserRole', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_UserRole', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_UserRole'
GO
/****** Object:  Table [dbo].[t_gt_User]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_gt_User]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_gt_User](
	[UserKey] [uniqueidentifier] NOT NULL,
	[OrginizationKey] [uniqueidentifier] NULL,
	[UserName] [varchar](30) NOT NULL,
	[Password] [varchar](40) NULL,
	[UserID] [varchar](30) NOT NULL,
	[IDCard] [varchar](30) NULL,
	[NameCh] [varchar](40) NOT NULL,
	[NameEn] [varchar](40) NOT NULL,
	[GenderCode] [varchar](10) NOT NULL,
	[Birthday] [datetime] NULL,
	[HomeTel] [varchar](30) NULL,
	[OfficeTel] [varchar](30) NULL,
	[Mobile] [varchar](30) NULL,
	[Fax] [varchar](30) NULL,
	[Email] [varchar](50) NULL,
	[Remark] [varchar](200) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[PermissionCode] [varchar](30) NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_GT_USER] PRIMARY KEY CLUSTERED 
(
	[UserKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'UserKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'UserKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'OrginizationKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'OrginizationKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'UserName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'UserName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID,暂定等于UserName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'IDCard'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'IDCard'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'NameCh'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户中文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'NameCh'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'NameEn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户英文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'NameEn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'GenderCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'GenderCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'Birthday'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'Birthday'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'HomeTel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'HomeTel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'OfficeTel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'办公电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'OfficeTel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'Mobile'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'Mobile'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'Fax'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'Fax'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'Email'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'Email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'PermissionCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'PermissionCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_User', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户基本信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_User'
GO
/****** Object:  Table [dbo].[t_gt_Title]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_gt_Title]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_gt_Title](
	[TitleKey] [uniqueidentifier] NOT NULL,
	[TitleID] [varchar](10) NOT NULL,
	[TitleName] [varchar](30) NOT NULL,
	[TitleNameEn] [varchar](30) NULL,
	[TitleDescription] [varchar](500) NULL,
	[TitleType] [varchar](10) NULL,
 CONSTRAINT [PK_T_GT_TITLE] PRIMARY KEY CLUSTERED 
(
	[TitleKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Title', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职务类别表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Title'
GO
/****** Object:  Table [dbo].[t_gt_SystemParam]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_gt_SystemParam]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_gt_SystemParam](
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
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_SystemParam', N'COLUMN',N'SystemParamKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统参数标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_SystemParam', @level2type=N'COLUMN',@level2name=N'SystemParamKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_SystemParam', N'COLUMN',N'ParamName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_SystemParam', @level2type=N'COLUMN',@level2name=N'ParamName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_SystemParam', N'COLUMN',N'ParamDescription'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_SystemParam', @level2type=N'COLUMN',@level2name=N'ParamDescription'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_SystemParam', N'COLUMN',N'IntValue'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'整型参数值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_SystemParam', @level2type=N'COLUMN',@level2name=N'IntValue'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_SystemParam', N'COLUMN',N'DecimalValue'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浮点参数值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_SystemParam', @level2type=N'COLUMN',@level2name=N'DecimalValue'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_SystemParam', N'COLUMN',N'DateValue'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期参数值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_SystemParam', @level2type=N'COLUMN',@level2name=N'DateValue'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_SystemParam', N'COLUMN',N'StringValue'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字符参数值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_SystemParam', @level2type=N'COLUMN',@level2name=N'StringValue'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_SystemParam', N'COLUMN',N'BinaryValue'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字节参数值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_SystemParam', @level2type=N'COLUMN',@level2name=N'BinaryValue'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_SystemParam', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统参数设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_SystemParam'
GO
/****** Object:  Table [dbo].[t_gt_RoleMenu]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_gt_RoleMenu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_gt_RoleMenu](
	[RoleMenuKey] [uniqueidentifier] NOT NULL,
	[RoleKey] [uniqueidentifier] NOT NULL,
	[MenuItmKey] [uniqueidentifier] NOT NULL,
	[DefaultFlg] [bit] NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_GT_ROLEMENU] PRIMARY KEY CLUSTERED 
(
	[RoleMenuKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_RoleMenu', N'COLUMN',N'RoleMenuKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色菜单标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_RoleMenu', @level2type=N'COLUMN',@level2name=N'RoleMenuKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_RoleMenu', N'COLUMN',N'RoleKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_RoleMenu', @level2type=N'COLUMN',@level2name=N'RoleKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_RoleMenu', N'COLUMN',N'MenuItmKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_RoleMenu', @level2type=N'COLUMN',@level2name=N'MenuItmKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_RoleMenu', N'COLUMN',N'DefaultFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_RoleMenu', @level2type=N'COLUMN',@level2name=N'DefaultFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_RoleMenu', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_RoleMenu', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_RoleMenu', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_RoleMenu', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_RoleMenu', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_RoleMenu', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_RoleMenu', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_RoleMenu', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_RoleMenu', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_RoleMenu', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_RoleMenu', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色菜单权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_RoleMenu'
GO
/****** Object:  Table [dbo].[t_gt_Role]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_gt_Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_gt_Role](
	[RoleKey] [uniqueidentifier] NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
	[RoleDescript] [varchar](200) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_GT_ROLE] PRIMARY KEY CLUSTERED 
(
	[RoleKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Role', N'COLUMN',N'RoleKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Role', @level2type=N'COLUMN',@level2name=N'RoleKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Role', N'COLUMN',N'RoleName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Role', @level2type=N'COLUMN',@level2name=N'RoleName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Role', N'COLUMN',N'RoleDescript'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Role', @level2type=N'COLUMN',@level2name=N'RoleDescript'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Role', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Role', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Role', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Role', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Role', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Role', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Role', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Role', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Role', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Role', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Role', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Role'
GO
/****** Object:  Table [dbo].[t_gt_Rate]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_gt_Rate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_gt_Rate](
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
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Rate', N'COLUMN',N'RateKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'汇率标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Rate', @level2type=N'COLUMN',@level2name=N'RateKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Rate', N'COLUMN',N'InCurrencyID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Rate', @level2type=N'COLUMN',@level2name=N'InCurrencyID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Rate', N'COLUMN',N'OutCurrencyID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'换算币种' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Rate', @level2type=N'COLUMN',@level2name=N'OutCurrencyID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Rate', N'COLUMN',N'CurrentRate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前汇率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Rate', @level2type=N'COLUMN',@level2name=N'CurrentRate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Rate', N'COLUMN',N'Memo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改历史' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Rate', @level2type=N'COLUMN',@level2name=N'Memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Rate', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'汇率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Rate'
GO
/****** Object:  Table [dbo].[t_gt_PageForm]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_gt_PageForm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_gt_PageForm](
	[PageKey] [uniqueidentifier] NOT NULL,
	[PageName] [varchar](50) NOT NULL,
	[PageCode] [varchar](30) NOT NULL,
	[PageType] [varchar](10) NOT NULL,
	[PageURL] [varchar](500) NOT NULL,
	[Directory] [varchar](500) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_GT_PAGEFORM] PRIMARY KEY CLUSTERED 
(
	[PageKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_PageForm', N'COLUMN',N'PageKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页面标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_PageForm', @level2type=N'COLUMN',@level2name=N'PageKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_PageForm', N'COLUMN',N'PageName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页面名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_PageForm', @level2type=N'COLUMN',@level2name=N'PageName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_PageForm', N'COLUMN',N'PageCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页面编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_PageForm', @level2type=N'COLUMN',@level2name=N'PageCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_PageForm', N'COLUMN',N'PageType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页面类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_PageForm', @level2type=N'COLUMN',@level2name=N'PageType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_PageForm', N'COLUMN',N'PageURL'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页面地址/类名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_PageForm', @level2type=N'COLUMN',@level2name=N'PageURL'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_PageForm', N'COLUMN',N'Directory'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页面所在目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_PageForm', @level2type=N'COLUMN',@level2name=N'Directory'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_PageForm', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_PageForm', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_PageForm', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_PageForm', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_PageForm', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_PageForm', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_PageForm', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_PageForm', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_PageForm', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_PageForm', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_PageForm', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页面' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_PageForm'
GO
/****** Object:  Table [dbo].[t_gt_Organization]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_gt_Organization]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_gt_Organization](
	[OrganizationKey] [uniqueidentifier] NOT NULL,
	[OrgCode] [varchar](30) NOT NULL,
	[NameCh] [varchar](100) NOT NULL,
	[NameEN] [varchar](50) NULL,
	[HelpCode] [varchar](10) NULL,
	[ParentCode] [varchar](30) NOT NULL,
	[OrganizationType] [varchar](10) NULL,
	[OrganizationAddress] [varchar](100) NULL,
	[Tel] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[EMail] [varchar](50) NULL,
	[OrganizationDesc] [varchar](500) NULL,
	[TitleKey] [uniqueidentifier] NULL,
	[PositionFlag] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_GT_ORGANIZATION] PRIMARY KEY CLUSTERED 
(
	[OrganizationKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Organization', N'COLUMN',N'OrganizationType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1-总公司；2-分公司；3-部门；4-岗位；5-其他' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Organization', @level2type=N'COLUMN',@level2name=N'OrganizationType'
GO
/****** Object:  Table [dbo].[t_gt_OperateLog]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_gt_OperateLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_gt_OperateLog](
	[OperateLogKey] [uniqueidentifier] NOT NULL,
	[UserKey] [uniqueidentifier] NOT NULL,
	[OperateDate] [datetime] NOT NULL,
	[OperateContent] [varchar](200) NULL,
	[OperateModule] [varchar](50) NULL,
	[OperateType] [varchar](10) NULL,
 CONSTRAINT [PK_T_GT_OPERATELOG] PRIMARY KEY CLUSTERED 
(
	[OperateLogKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_OperateLog', N'COLUMN',N'OperateLogKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作日志标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_OperateLog', @level2type=N'COLUMN',@level2name=N'OperateLogKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_OperateLog', N'COLUMN',N'UserKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_OperateLog', @level2type=N'COLUMN',@level2name=N'UserKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_OperateLog', N'COLUMN',N'OperateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_OperateLog', @level2type=N'COLUMN',@level2name=N'OperateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_OperateLog', N'COLUMN',N'OperateContent'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_OperateLog', @level2type=N'COLUMN',@level2name=N'OperateContent'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_OperateLog', N'COLUMN',N'OperateModule'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作模块' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_OperateLog', @level2type=N'COLUMN',@level2name=N'OperateModule'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_OperateLog', N'COLUMN',N'OperateType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类别：1-添加，2-修改，3-删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_OperateLog', @level2type=N'COLUMN',@level2name=N'OperateType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_OperateLog', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统操作日志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_OperateLog'
GO
/****** Object:  Table [dbo].[t_gt_MenuItm]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_gt_MenuItm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_gt_MenuItm](
	[MenuItmKey] [uniqueidentifier] NOT NULL,
	[MenuName] [varchar](50) NULL,
	[MenuCode] [varchar](20) NULL,
	[ParentMenuCode] [varchar](20) NULL,
	[MenuURL] [varchar](200) NULL,
	[MenuSequence] [int] NULL,
	[LeafFlg] [bit] NULL,
	[PictureURL] [varchar](200) NULL,
	[PageCode] [varchar](30) NULL,
	[Depth] [int] NULL,
	[PageKey] [uniqueidentifier] NULL,
	[QueryParameter] [varchar](100) NULL,
	[MenuType] [varchar](10) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_GT_MENUITM] PRIMARY KEY CLUSTERED 
(
	[MenuItmKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', N'COLUMN',N'MenuItmKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm', @level2type=N'COLUMN',@level2name=N'MenuItmKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', N'COLUMN',N'MenuName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm', @level2type=N'COLUMN',@level2name=N'MenuName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', N'COLUMN',N'MenuCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm', @level2type=N'COLUMN',@level2name=N'MenuCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', N'COLUMN',N'ParentMenuCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父菜单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm', @level2type=N'COLUMN',@level2name=N'ParentMenuCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', N'COLUMN',N'MenuURL'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单URL(B/S)或类名(C/S)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm', @level2type=N'COLUMN',@level2name=N'MenuURL'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', N'COLUMN',N'MenuSequence'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm', @level2type=N'COLUMN',@level2name=N'MenuSequence'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', N'COLUMN',N'LeafFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'叶子菜单标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm', @level2type=N'COLUMN',@level2name=N'LeafFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', N'COLUMN',N'PictureURL'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示图片URL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm', @level2type=N'COLUMN',@level2name=N'PictureURL'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', N'COLUMN',N'PageCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页面编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm', @level2type=N'COLUMN',@level2name=N'PageCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', N'COLUMN',N'Depth'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'深度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm', @level2type=N'COLUMN',@level2name=N'Depth'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', N'COLUMN',N'PageKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页面标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm', @level2type=N'COLUMN',@level2name=N'PageKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', N'COLUMN',N'QueryParameter'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问参数, 如：status=1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm', @level2type=N'COLUMN',@level2name=N'QueryParameter'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', N'COLUMN',N'MenuType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单类别，0=B/S菜单，1=C/S菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm', @level2type=N'COLUMN',@level2name=N'MenuType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_MenuItm', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_MenuItm'
GO
/****** Object:  Table [dbo].[t_gt_FieldInfo]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_gt_FieldInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_gt_FieldInfo](
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
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_FieldInfo', N'COLUMN',N'FieldInfoKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'属性信息标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_FieldInfo', @level2type=N'COLUMN',@level2name=N'FieldInfoKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_FieldInfo', N'COLUMN',N'FieldCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'属性DB表中的Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_FieldInfo', @level2type=N'COLUMN',@level2name=N'FieldCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_FieldInfo', N'COLUMN',N'FieldDesc'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'属性说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_FieldInfo', @level2type=N'COLUMN',@level2name=N'FieldDesc'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_FieldInfo', N'COLUMN',N'DisplayFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列表是否显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_FieldInfo', @level2type=N'COLUMN',@level2name=N'DisplayFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_FieldInfo', N'COLUMN',N'NoNullFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'属性值是否非空' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_FieldInfo', @level2type=N'COLUMN',@level2name=N'NoNullFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_FieldInfo', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'【课程】、【教师】等数据表的属性说明、属性必填、属性列表显示等信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_FieldInfo'
GO
/****** Object:  Table [dbo].[t_gt_Dictionary]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_gt_Dictionary]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_gt_Dictionary](
	[DictionaryKey] [uniqueidentifier] NOT NULL,
	[GroupCode] [varchar](30) NOT NULL,
	[GroupLabel] [varchar](30) NOT NULL,
	[ItemCode] [varchar](10) NOT NULL,
	[ItemLabel] [varchar](30) NOT NULL,
	[ItemSequence] [int] NOT NULL,
	[DeleteFlg] [bit] NOT NULL,
	[Remark] [varchar](200) NULL,
 CONSTRAINT [PK_T_GT_DICTIONARY] PRIMARY KEY CLUSTERED 
(
	[DictionaryKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Dictionary', N'COLUMN',N'DictionaryKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据字典标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Dictionary', @level2type=N'COLUMN',@level2name=N'DictionaryKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Dictionary', N'COLUMN',N'GroupCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Dictionary', @level2type=N'COLUMN',@level2name=N'GroupCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Dictionary', N'COLUMN',N'GroupLabel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Dictionary', @level2type=N'COLUMN',@level2name=N'GroupLabel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Dictionary', N'COLUMN',N'ItemCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条目编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Dictionary', @level2type=N'COLUMN',@level2name=N'ItemCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Dictionary', N'COLUMN',N'ItemLabel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Dictionary', @level2type=N'COLUMN',@level2name=N'ItemLabel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Dictionary', N'COLUMN',N'ItemSequence'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Dictionary', @level2type=N'COLUMN',@level2name=N'ItemSequence'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Dictionary', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Dictionary', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Dictionary', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据字典' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Dictionary'
GO
/****** Object:  Table [dbo].[t_gt_Currency]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_gt_Currency]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_gt_Currency](
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
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Currency', N'COLUMN',N'CurrencyKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Currency', @level2type=N'COLUMN',@level2name=N'CurrencyKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Currency', N'COLUMN',N'CurrencyID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Currency', @level2type=N'COLUMN',@level2name=N'CurrencyID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Currency', N'COLUMN',N'CurrencyName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Currency', @level2type=N'COLUMN',@level2name=N'CurrencyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Currency', N'COLUMN',N'CountryKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国家' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Currency', @level2type=N'COLUMN',@level2name=N'CountryKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Currency', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Currency', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_gt_Currency', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_gt_Currency'
GO
/****** Object:  Table [dbo].[t_cw_WorkItem]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_cw_WorkItem]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_cw_WorkItem](
	[WorkItemKey] [uniqueidentifier] NOT NULL,
	[WorkItemName] [varchar](50) NOT NULL,
	[WorkItemType] [varchar](30) NULL,
	[SubTypeCode] [varchar](30) NULL,
	[Unit] [varchar](20) NULL,
	[ClassHours] [decimal](18, 0) NULL,
	[Remark] [varchar](200) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[DeleteFlg] [bit] NOT NULL,
 CONSTRAINT [PK_T_CW_WORKITEM] PRIMARY KEY CLUSTERED 
(
	[WorkItemKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_WorkItem', N'COLUMN',N'WorkItemKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作项目标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_WorkItem', @level2type=N'COLUMN',@level2name=N'WorkItemKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_WorkItem', N'COLUMN',N'WorkItemName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_WorkItem', @level2type=N'COLUMN',@level2name=N'WorkItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_WorkItem', N'COLUMN',N'WorkItemType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作量类别，1=课程资料，2=课程资源，3=课程辅导' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_WorkItem', @level2type=N'COLUMN',@level2name=N'WorkItemType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_WorkItem', N'COLUMN',N'SubTypeCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子类编号，如：课程资料类别中的考试辅导资料SubTypeCode=1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_WorkItem', @level2type=N'COLUMN',@level2name=N'SubTypeCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_WorkItem', N'COLUMN',N'Unit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_WorkItem', @level2type=N'COLUMN',@level2name=N'Unit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_WorkItem', N'COLUMN',N'ClassHours'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位相当课时数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_WorkItem', @level2type=N'COLUMN',@level2name=N'ClassHours'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_WorkItem', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_WorkItem', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_WorkItem', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_WorkItem', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_WorkItem', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_WorkItem', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_WorkItem', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_WorkItem', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_WorkItem', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_WorkItem', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_WorkItem', N'COLUMN',N'DeleteFlg'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_WorkItem', @level2type=N'COLUMN',@level2name=N'DeleteFlg'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_WorkItem', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师工作项目及其工作量课时数标准定义' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_WorkItem'
GO
/****** Object:  Table [dbo].[t_cw_TeacherWorkload]    Script Date: 07/19/2013 10:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_cw_TeacherWorkload]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[t_cw_TeacherWorkload](
	[TeacherWorkloadKey] [uniqueidentifier] NOT NULL,
	[WorkItemKey] [uniqueidentifier] NULL,
	[WorkItemName] [varchar](50) NOT NULL,
	[TeachingCourseKey] [uniqueidentifier] NULL,
	[WorkloadStat] [decimal](18, 0) NULL,
	[WorkloadCheck] [decimal](18, 0) NULL,
	[ClassHours] [decimal](18, 0) NULL,
	[Remark] [varchar](200) NULL,
	[CreatorKey] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifierKey] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_CW_TEACHERWORKLOAD] PRIMARY KEY CLUSTERED 
(
	[TeacherWorkloadKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_TeacherWorkload', N'COLUMN',N'TeacherWorkloadKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师工作量标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_TeacherWorkload', @level2type=N'COLUMN',@level2name=N'TeacherWorkloadKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_TeacherWorkload', N'COLUMN',N'WorkItemKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作项目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_TeacherWorkload', @level2type=N'COLUMN',@level2name=N'WorkItemKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_TeacherWorkload', N'COLUMN',N'WorkItemName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作项目名称，冗余字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_TeacherWorkload', @level2type=N'COLUMN',@level2name=N'WorkItemName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_TeacherWorkload', N'COLUMN',N'TeachingCourseKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学课程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_TeacherWorkload', @level2type=N'COLUMN',@level2name=N'TeachingCourseKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_TeacherWorkload', N'COLUMN',N'WorkloadStat'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'统计工作量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_TeacherWorkload', @level2type=N'COLUMN',@level2name=N'WorkloadStat'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_TeacherWorkload', N'COLUMN',N'WorkloadCheck'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核算工作量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_TeacherWorkload', @level2type=N'COLUMN',@level2name=N'WorkloadCheck'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_TeacherWorkload', N'COLUMN',N'ClassHours'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'相当课时数，核算后保存时，按照定义的标准计算并保存' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_TeacherWorkload', @level2type=N'COLUMN',@level2name=N'ClassHours'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_TeacherWorkload', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_TeacherWorkload', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_TeacherWorkload', N'COLUMN',N'CreatorKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_TeacherWorkload', @level2type=N'COLUMN',@level2name=N'CreatorKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_TeacherWorkload', N'COLUMN',N'CreateDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_TeacherWorkload', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_TeacherWorkload', N'COLUMN',N'ModifierKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_TeacherWorkload', @level2type=N'COLUMN',@level2name=N'ModifierKey'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_TeacherWorkload', N'COLUMN',N'ModifyDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_TeacherWorkload', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N't_cw_TeacherWorkload', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师工作量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_cw_TeacherWorkload'
GO
/****** Object:  Default [DF__t_cw_Work__Delet__17236851]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_cw_Work__Delet__17236851]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_cw_WorkItem]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_cw_Work__Delet__17236851]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_cw_WorkItem] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_cw_Curr__Delet__6166761E]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_cw_Curr__Delet__6166761E]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_Currency]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_cw_Curr__Delet__6166761E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_Currency] ADD  CONSTRAINT [DF__t_cw_Curr__Delet__6166761E]  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF_t_gt_Dictionary_DictionaryKey]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_t_gt_Dictionary_DictionaryKey]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_Dictionary]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_t_gt_Dictionary_DictionaryKey]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_Dictionary] ADD  CONSTRAINT [DF_t_gt_Dictionary_DictionaryKey]  DEFAULT (newid()) FOR [DictionaryKey]
END


End
GO
/****** Object:  Default [DF__t_gt_Dict__Delet__1AF3F935]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_gt_Dict__Delet__1AF3F935]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_Dictionary]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_gt_Dict__Delet__1AF3F935]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_Dictionary] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_gt_Fiel__Displ__1DD065E0]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_gt_Fiel__Displ__1DD065E0]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_FieldInfo]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_gt_Fiel__Displ__1DD065E0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_FieldInfo] ADD  DEFAULT ((1)) FOR [DisplayFlg]
END


End
GO
/****** Object:  Default [DF__t_gt_Fiel__NoNul__1EC48A19]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_gt_Fiel__NoNul__1EC48A19]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_FieldInfo]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_gt_Fiel__NoNul__1EC48A19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_FieldInfo] ADD  DEFAULT ((0)) FOR [NoNullFlg]
END


End
GO
/****** Object:  Default [DF__t_gt_Menu__Creat__21A0F6C4]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_gt_Menu__Creat__21A0F6C4]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_MenuItm]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_gt_Menu__Creat__21A0F6C4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_MenuItm] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_gt_Menu__Delet__22951AFD]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_gt_Menu__Delet__22951AFD]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_MenuItm]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_gt_Menu__Delet__22951AFD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_MenuItm] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_gt_Orga__Posit__2759D01A]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_gt_Orga__Posit__2759D01A]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_Organization]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_gt_Orga__Posit__2759D01A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_Organization] ADD  DEFAULT ((0)) FOR [PositionFlag]
END


End
GO
/****** Object:  Default [DF__t_gt_Orga__Creat__284DF453]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_gt_Orga__Creat__284DF453]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_Organization]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_gt_Orga__Creat__284DF453]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_Organization] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_gt_Orga__Delet__2942188C]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_gt_Orga__Delet__2942188C]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_Organization]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_gt_Orga__Delet__2942188C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_Organization] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_gt_Page__Delet__2C1E8537]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_gt_Page__Delet__2C1E8537]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_PageForm]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_gt_Page__Delet__2C1E8537]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_PageForm] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_gt_Role__Creat__2EFAF1E2]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_gt_Role__Creat__2EFAF1E2]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_Role]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_gt_Role__Creat__2EFAF1E2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_Role] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_gt_Role__Delet__2FEF161B]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_gt_Role__Delet__2FEF161B]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_Role]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_gt_Role__Delet__2FEF161B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_Role] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_gt_Role__Defau__32CB82C6]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_gt_Role__Defau__32CB82C6]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_RoleMenu]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_gt_Role__Defau__32CB82C6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_RoleMenu] ADD  DEFAULT ((0)) FOR [DefaultFlg]
END


End
GO
/****** Object:  Default [DF__t_gt_Role__Creat__33BFA6FF]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_gt_Role__Creat__33BFA6FF]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_RoleMenu]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_gt_Role__Creat__33BFA6FF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_RoleMenu] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_gt_Role__Delet__34B3CB38]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_gt_Role__Delet__34B3CB38]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_RoleMenu]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_gt_Role__Delet__34B3CB38]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_RoleMenu] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_gt_User__Creat__3B60C8C7]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_gt_User__Creat__3B60C8C7]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_User]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_gt_User__Creat__3B60C8C7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_User] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_gt_User__Delet__3C54ED00]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_gt_User__Delet__3C54ED00]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_User]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_gt_User__Delet__3C54ED00]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_User] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_gt_User__Creat__3F3159AB]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_gt_User__Creat__3F3159AB]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_UserRole]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_gt_User__Creat__3F3159AB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_UserRole] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_gt_User__Delet__40257DE4]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_gt_User__Delet__40257DE4]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_gt_UserRole]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_gt_User__Delet__40257DE4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_gt_UserRole] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Cour__Creat__4301EA8F]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Cour__Creat__4301EA8F]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_Course]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Cour__Creat__4301EA8F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_Course] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_jw_Cour__Delet__43F60EC8]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Cour__Delet__43F60EC8]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_Course]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Cour__Delet__43F60EC8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_Course] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Cour__Creat__46D27B73]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Cour__Creat__46D27B73]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_CourseChapter]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Cour__Creat__46D27B73]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_CourseChapter] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_jw_Cour__Delet__47C69FAC]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Cour__Delet__47C69FAC]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_CourseChapter]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Cour__Delet__47C69FAC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_CourseChapter] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Cour__Creat__4AA30C57]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Cour__Creat__4AA30C57]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_CourseKnowledgePoint]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Cour__Creat__4AA30C57]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_CourseKnowledgePoint] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_jw_Cour__Delet__4B973090]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Cour__Delet__4B973090]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_CourseKnowledgePoint]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Cour__Delet__4B973090]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_CourseKnowledgePoint] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Cour__Creat__4E739D3B]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Cour__Creat__4E739D3B]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_CourseMaterial]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Cour__Creat__4E739D3B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_CourseMaterial] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_jw_Cour__Delet__4F67C174]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Cour__Delet__4F67C174]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_CourseMaterial]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Cour__Delet__4F67C174]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_CourseMaterial] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Cour__Creat__52442E1F]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Cour__Creat__52442E1F]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_CourseMaterialType]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Cour__Creat__52442E1F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_CourseMaterialType] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_jw_Cour__Delet__53385258]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Cour__Delet__53385258]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_CourseMaterialType]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Cour__Delet__53385258]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_CourseMaterialType] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Cour__Creat__5614BF03]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Cour__Creat__5614BF03]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_CourseTeacher]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Cour__Creat__5614BF03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_CourseTeacher] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_jw_Cour__Delet__5708E33C]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Cour__Delet__5708E33C]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_CourseTeacher]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Cour__Delet__5708E33C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_CourseTeacher] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Cour__Updat__59E54FE7]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Cour__Updat__59E54FE7]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_CourseTextbook]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Cour__Updat__59E54FE7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_CourseTextbook] ADD  DEFAULT ((0)) FOR [UpdateFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Cour__Creat__5AD97420]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Cour__Creat__5AD97420]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_CourseTextbook]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Cour__Creat__5AD97420]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_CourseTextbook] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_jw_Cour__Delet__5BCD9859]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Cour__Delet__5BCD9859]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_CourseTextbook]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Cour__Delet__5BCD9859]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_CourseTextbook] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Edul__EduTy__5EAA0504]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Edul__EduTy__5EAA0504]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_Edulevel]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Edul__EduTy__5EAA0504]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_Edulevel] ADD  DEFAULT ('1') FOR [EduType]
END


End
GO
/****** Object:  Default [DF__t_jw_Edul__Degre__5F9E293D]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Edul__Degre__5F9E293D]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_Edulevel]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Edul__Degre__5F9E293D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_Edulevel] ADD  DEFAULT ((1)) FOR [DegreeFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Edul__Creat__60924D76]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Edul__Creat__60924D76]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_Edulevel]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Edul__Creat__60924D76]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_Edulevel] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_jw_Edul__Delet__618671AF]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Edul__Delet__618671AF]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_Edulevel]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Edul__Delet__618671AF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_Edulevel] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Enro__EduTy__6462DE5A]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Enro__EduTy__6462DE5A]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_EnrollBatch]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Enro__EduTy__6462DE5A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_EnrollBatch] ADD  DEFAULT ('1') FOR [EduType]
END


End
GO
/****** Object:  Default [DF__t_jw_Enro__Creat__65570293]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Enro__Creat__65570293]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_EnrollBatch]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Enro__Creat__65570293]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_EnrollBatch] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_jw_Enro__Delet__664B26CC]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Enro__Delet__664B26CC]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_EnrollBatch]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Enro__Delet__664B26CC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_EnrollBatch] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Spec__EduTy__69279377]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Spec__EduTy__69279377]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_Specialty]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Spec__EduTy__69279377]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_Specialty] ADD  DEFAULT ('1') FOR [EduType]
END


End
GO
/****** Object:  Default [DF__t_jw_Spec__Creat__6A1BB7B0]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Spec__Creat__6A1BB7B0]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_Specialty]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Spec__Creat__6A1BB7B0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_Specialty] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_jw_Spec__Delet__6B0FDBE9]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Spec__Delet__6B0FDBE9]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_Specialty]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Spec__Delet__6B0FDBE9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_Specialty] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Teac__BankN__6DEC4894]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Teac__BankN__6DEC4894]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_Teacher]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Teac__BankN__6DEC4894]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_Teacher] ADD  DEFAULT ('交通银行') FOR [BankName]
END


End
GO
/****** Object:  Default [DF__t_jw_Teac__Retir__6EE06CCD]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Teac__Retir__6EE06CCD]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_Teacher]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Teac__Retir__6EE06CCD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_Teacher] ADD  DEFAULT ((0)) FOR [RetireFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Teac__Thesi__6FD49106]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Teac__Thesi__6FD49106]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_Teacher]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Teac__Thesi__6FD49106]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_Teacher] ADD  DEFAULT ((0)) FOR [ThesisGuidFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Teac__Creat__70C8B53F]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Teac__Creat__70C8B53F]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_Teacher]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Teac__Creat__70C8B53F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_Teacher] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_jw_Teac__Delet__71BCD978]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Teac__Delet__71BCD978]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_Teacher]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Teac__Delet__71BCD978]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_Teacher] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Teac__Creat__74994623]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Teac__Creat__74994623]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_TeachingCourse]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Teac__Creat__74994623]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_TeachingCourse] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_jw_Teac__Delet__758D6A5C]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Teac__Delet__758D6A5C]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_TeachingCourse]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Teac__Delet__758D6A5C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_TeachingCourse] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Teac__Creat__7869D707]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Teac__Creat__7869D707]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_TeachingCourseExam]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Teac__Creat__7869D707]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_TeachingCourseExam] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_jw_Teac__Delet__795DFB40]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Teac__Delet__795DFB40]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_TeachingCourseExam]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Teac__Delet__795DFB40]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_TeachingCourseExam] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Teac__EduTy__7C3A67EB]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Teac__EduTy__7C3A67EB]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_TeachingPlan]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Teac__EduTy__7C3A67EB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_TeachingPlan] ADD  DEFAULT ('1') FOR [EduType]
END


End
GO
/****** Object:  Default [DF__t_jw_Teac__Degre__7D2E8C24]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Teac__Degre__7D2E8C24]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_TeachingPlan]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Teac__Degre__7D2E8C24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_TeachingPlan] ADD  DEFAULT ((0)) FOR [DegreeFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Teac__Templ__7E22B05D]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Teac__Templ__7E22B05D]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_TeachingPlan]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Teac__Templ__7E22B05D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_TeachingPlan] ADD  DEFAULT ((0)) FOR [TemplateFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Teac__Creat__7F16D496]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Teac__Creat__7F16D496]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_TeachingPlan]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Teac__Creat__7F16D496]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_TeachingPlan] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_jw_Teac__Delet__000AF8CF]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Teac__Delet__000AF8CF]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_TeachingPlan]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Teac__Delet__000AF8CF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_TeachingPlan] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_jw_Term__EduTy__02E7657A]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Term__EduTy__02E7657A]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_Term]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Term__EduTy__02E7657A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_Term] ADD  DEFAULT ('1') FOR [EduType]
END


End
GO
/****** Object:  Default [DF__t_jw_Term__Delet__03DB89B3]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_jw_Term__Delet__03DB89B3]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_jw_Term]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_jw_Term__Delet__03DB89B3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_jw_Term] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_zy_Cour__Creat__131DCD43]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Cour__Creat__131DCD43]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_Courseware]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Cour__Creat__131DCD43]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_Courseware] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_zy_Cour__Delet__1411F17C]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Cour__Delet__1411F17C]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_Courseware]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Cour__Delet__1411F17C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_Courseware] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_zy_Cour__Dispa__16EE5E27]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Cour__Dispa__16EE5E27]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_CoursewareInfo]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Cour__Dispa__16EE5E27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_CoursewareInfo] ADD  DEFAULT ('0') FOR [DispatchCourseStatus]
END


End
GO
/****** Object:  Default [DF__t_zy_Cour__Cours__17E28260]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Cour__Cours__17E28260]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_CoursewareInfo]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Cour__Cours__17E28260]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_CoursewareInfo] ADD  DEFAULT ('0') FOR [CoursewareStatus]
END


End
GO
/****** Object:  Default [DF__t_zy_Cour__Creat__18D6A699]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Cour__Creat__18D6A699]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_CoursewareInfo]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Cour__Creat__18D6A699]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_CoursewareInfo] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_zy_Cour__Delet__19CACAD2]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Cour__Delet__19CACAD2]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_CoursewareInfo]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Cour__Delet__19CACAD2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_CoursewareInfo] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_zy_CWRe__Check__06B7F65E]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_CWRe__Check__06B7F65E]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_CWRecord]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_CWRe__Check__06B7F65E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_CWRecord] ADD  DEFAULT ((0)) FOR [CheckResultFlgs]
END


End
GO
/****** Object:  Default [DF__t_zy_CWRe__Creat__07AC1A97]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_CWRe__Creat__07AC1A97]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_CWRecord]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_CWRe__Creat__07AC1A97]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_CWRecord] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_zy_CWRe__Delet__08A03ED0]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_CWRe__Delet__08A03ED0]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_CWRecord]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_CWRe__Delet__08A03ED0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_CWRecord] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_zy_CWRe__Creat__0B7CAB7B]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_CWRe__Creat__0B7CAB7B]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_CWReleaseSite]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_CWRe__Creat__0B7CAB7B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_CWReleaseSite] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_zy_CWRe__Delet__0C70CFB4]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_CWRe__Delet__0C70CFB4]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_CWReleaseSite]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_CWRe__Delet__0C70CFB4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_CWReleaseSite] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_zy_CWTa__Creat__0F4D3C5F]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_CWTa__Creat__0F4D3C5F]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_CWTakeover]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_CWTa__Creat__0F4D3C5F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_CWTakeover] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_zy_CWTa__Delet__10416098]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_CWTa__Delet__10416098]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_CWTakeover]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_CWTa__Delet__10416098]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_CWTakeover] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_zy_Reco__Creat__2077C861]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Reco__Creat__2077C861]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_RecordAppraise]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Reco__Creat__2077C861]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_RecordAppraise] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_zy_Reco__Delet__216BEC9A]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Reco__Delet__216BEC9A]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_RecordAppraise]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Reco__Delet__216BEC9A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_RecordAppraise] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_zy_Reco__Creat__24485945]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Reco__Creat__24485945]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_RecordAppraiseItem]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Reco__Creat__24485945]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_RecordAppraiseItem] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_zy_Reco__Delet__253C7D7E]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Reco__Delet__253C7D7E]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_RecordAppraiseItem]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Reco__Delet__253C7D7E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_RecordAppraiseItem] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_zy_Reco__Creat__02284B6B]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Reco__Creat__02284B6B]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_RecordWorkAppraise]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Reco__Creat__02284B6B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_RecordWorkAppraise] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_zy_Reco__Delet__031C6FA4]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Reco__Delet__031C6FA4]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_RecordWorkAppraise]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Reco__Delet__031C6FA4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_RecordWorkAppraise] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_zy_Reco__Creat__05F8DC4F]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Reco__Creat__05F8DC4F]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_RecordWorkAppraiseItem]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Reco__Creat__05F8DC4F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_RecordWorkAppraiseItem] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_zy_Reco__Delet__06ED0088]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Reco__Delet__06ED0088]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_RecordWorkAppraiseItem]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Reco__Delet__06ED0088]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_RecordWorkAppraiseItem] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_zy_Stor__Creat__2818EA29]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Stor__Creat__2818EA29]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_StorageDevice]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Stor__Creat__2818EA29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_StorageDevice] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_zy_Stor__Delet__290D0E62]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Stor__Delet__290D0E62]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_StorageDevice]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Stor__Delet__290D0E62]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_StorageDevice] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_zy_Trai__Creat__2BE97B0D]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Trai__Creat__2BE97B0D]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_TrainingItem]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Trai__Creat__2BE97B0D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_TrainingItem] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_zy_Trai__Delet__2CDD9F46]    Script Date: 07/19/2013 10:42:12 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Trai__Delet__2CDD9F46]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_TrainingItem]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Trai__Delet__2CDD9F46]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_TrainingItem] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
/****** Object:  Default [DF__t_zy_Trai__Creat__2FBA0BF1]    Script Date: 07/19/2013 10:42:13 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Trai__Creat__2FBA0BF1]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_TrainingRecord]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Trai__Creat__2FBA0BF1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_TrainingRecord] ADD  DEFAULT (getdate()) FOR [CreateDate]
END


End
GO
/****** Object:  Default [DF__t_zy_Trai__Delet__30AE302A]    Script Date: 07/19/2013 10:42:13 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__t_zy_Trai__Delet__30AE302A]') AND parent_object_id = OBJECT_ID(N'[dbo].[t_zy_TrainingRecord]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__t_zy_Trai__Delet__30AE302A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[t_zy_TrainingRecord] ADD  DEFAULT ((0)) FOR [DeleteFlg]
END


End
GO
