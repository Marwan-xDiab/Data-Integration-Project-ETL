
CREATE TABLE [dbo].[LogTable](
	[logid] [int] IDENTITY(1,1) Primary Key,
	[filepath] [varchar](200) NULL,
	[Status] [varchar](500) NULL,
	[InsertedDate] [datetime] NULL
 )

ALTER TABLE [dbo].[LogTable] ADD  CONSTRAINT [DF_LogTable_InsertedDate]  DEFAULT (getdate()) FOR [InsertedDate]
GO
 
truncate table [dbo].[LogTable]
select * from [dbo].[LogTable]





USE [DWHDemo]
GO


CREATE TABLE [dbo].[CompanyName](
	[LocationID] [int] PRIMARY KEY,
	[Company] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL)
Go

CREATE TABLE [dbo].[EmployeeDetails](
	[Emp_No] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[DOB] [varchar](100) NULL,
	[Gender] [varchar](100) NULL,
	[Salary] [int] NULL,
	[Company] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[ActivityDateTime] [datetime] NULL
) 
GO


CREATE TABLE [dbo].[HotelDetails](
	[HotelID] [int] NULL,
	[HotelName] [varchar](50) NULL,
	[HotelCategory] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Coordinates] [varchar](50) NULL,
	[ActivityDateTime] [datetime] NULL
)
GO


CREATE TABLE [dbo].[Product](
	[ProductId] [int] PRIMARY KEY,
	[PName] [varchar](50) NULL,
	[SID] [int] NULL,
	[ActivityDateTime] [datetime] NULL)
GO


CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] NULL,
	[CompanyName] [varchar](50) NULL,
	[ActivityDateTime] [datetime] NULL
) 
GO
INSERT [dbo].[CompanyName] ([LocationID], [Company], [City], [State], [Email]) VALUES (1, N'ABC Pvt. Ltd.', N'Noida', N'UP', N'abc.pqr@gmail.com')
INSERT [dbo].[CompanyName] ([LocationID], [Company], [City], [State], [Email]) VALUES (2, N'PQR Pvt. Ltd.', N'Dehradun', N'UK', N'pqr220@mycompany.com')
INSERT [dbo].[CompanyName] ([LocationID], [Company], [City], [State], [Email]) VALUES (3, N'TTT Solutions Ltd.', N'Shimla', N'HP', N'info@tttsolutions.com')
INSERT [dbo].[CompanyName] ([LocationID], [Company], [City], [State], [Email]) VALUES (4, N'AAA Solutions Ltd.', N'Bhopal', N'MP', N'ksagar@aaasolutions.com')
ALTER TABLE [dbo].[EmployeeDetails] ADD  DEFAULT (getdate()) FOR [ActivityDateTime]
GO
ALTER TABLE [dbo].[HotelDetails] ADD  DEFAULT (getdate()) FOR [ActivityDateTime]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (getdate()) FOR [ActivityDateTime]
GO
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT (getdate()) FOR [ActivityDateTime]
GO


select * from [dbo].[CompanyName]
select * from [dbo].[EmployeeDetails]
select * from [dbo].[HotelDetails]
select * from [dbo].[Product]
select * from [dbo].[Supplier]


truncate table [dbo].[EmployeeDetails]
truncate table [dbo].[HotelDetails]
truncate table [dbo].[Product]
truncate table [dbo].[Supplier]