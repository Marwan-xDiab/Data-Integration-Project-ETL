USE [DWHDemo]
GO



CREATE TABLE [dbo].[LogTable](
	[logid] [int] IDENTITY(1,1) Primary Key,
	[filepath] [varchar](200) NULL,
	[Status] [varchar](500) NULL,
	[InsertedDate] [datetime] NULL
 )

ALTER TABLE [dbo].[LogTable] ADD  CONSTRAINT [DF_LogTable_InsertedDate]  DEFAULT (getdate()) FOR [InsertedDate]
GO


