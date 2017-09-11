USE [Xtend]
GO

/****** Object:  Table [dbo].[tblClient]    Script Date: 9/9/2017 9:55:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblClient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[IsDeleted] [tinyint] NOT NULL,
	[DeletedOn] [datetime] NULL,
	[DeletedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblClient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[tblExportHistory]    Script Date: 9/10/2017 3:10:27 PM ******/


CREATE TABLE [dbo].[tblExportHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[NumberOfAccountsExported] [int] NOT NULL,
	[AccountBalance] [decimal](18, 0) NOT NULL,
	[ExportDate] [datetime] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[IsDeleted] [tinyint] NOT NULL,
	[DeletedOn] [datetime] NULL,
	[DeletedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblExportHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tblExportHistory]  WITH CHECK ADD  CONSTRAINT [FK_tblExportHistory_tblClient] FOREIGN KEY([ClientId])
REFERENCES [dbo].[tblClient] ([Id])
GO

ALTER TABLE [dbo].[tblExportHistory] CHECK CONSTRAINT [FK_tblExportHistory_tblClient]
GO


/****** Object:  Table [dbo].[tblFacility]    Script Date: 9/9/2017 9:55:58 PM ******/

CREATE TABLE [dbo].[tblFacility](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FacilityName] [nvarchar](50) NULL,
	[AddressLine1] [nvarchar](50) NULL,
	[AddressLine2] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Zip] [nvarchar](10) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[IsDeleted] [tinyint] NOT NULL,
	[DeletedOn] [datetime] NULL,
	[DeletedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblFacility] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[tblInsurance]    Script Date: 9/9/2017 9:56:28 PM ******/

CREATE TABLE [dbo].[tblInsurance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlanName] [nvarchar](50) NULL,
	[Policy] [nvarchar](50) NULL,
	[GroupNumber] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[IsDeleted] [tinyint] NOT NULL,
	[DeletedOn] [datetime] NULL,
	[DeletedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblInsurance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[tblPatient]    Script Date: 9/9/2017 9:56:48 PM ******/

CREATE TABLE [dbo].[tblPatient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[SocialSecurityNumber] [nvarchar](11) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[IsDeleted] [tinyint] NOT NULL,
	[DeletedOn] [datetime] NULL,
	[DeletedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblPatient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[tblAccount]    Script Date: 9/9/2017 9:57:03 PM ******/

CREATE TABLE [dbo].[tblAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NULL,
	[AccountNumber] [int] NULL,
	[Balance] [decimal](18, 0) NULL,
	[FacilityId] [int] NULL,
	[AdmitDate] [datetime] NULL,
	[DischargeDate] [datetime] NULL,
	[PatientId] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[IsDeleted] [tinyint] NOT NULL,
	[DeletedOn] [datetime] NULL,
	[DeletedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tblAccount]  WITH CHECK ADD  CONSTRAINT [FK_tblAccount_tblClient] FOREIGN KEY([ClientId])
REFERENCES [dbo].[tblClient] ([Id])
GO

ALTER TABLE [dbo].[tblAccount] CHECK CONSTRAINT [FK_tblAccount_tblClient]
GO

ALTER TABLE [dbo].[tblAccount]  WITH CHECK ADD  CONSTRAINT [FK_tblAccount_tblFacility] FOREIGN KEY([FacilityId])
REFERENCES [dbo].[tblFacility] ([Id])
GO

ALTER TABLE [dbo].[tblAccount] CHECK CONSTRAINT [FK_tblAccount_tblFacility]
GO

ALTER TABLE [dbo].[tblAccount]  WITH CHECK ADD  CONSTRAINT [FK_tblAccount_tblPatient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[tblPatient] ([Id])
GO

ALTER TABLE [dbo].[tblAccount] CHECK CONSTRAINT [FK_tblAccount_tblPatient]
GO

/****** Object:  Table [dbo].[tblAccountInsurance_Junction]    Script Date: 9/9/2017 9:57:23 PM ******/

CREATE TABLE [dbo].[tblAccountInsurance_Junction](
	[AccountId] [int] NOT NULL,
	[InsuranceId] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[IsDeleted] [tinyint] NOT NULL,
	[DeletedOn] [datetime] NULL,
	[DeletedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblAccountInsurance_Junction] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC,
	[InsuranceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tblAccountInsurance_Junction]  WITH CHECK ADD  CONSTRAINT [FK_tblAccountInsurance_Junction_tblAccount] FOREIGN KEY([AccountId])
REFERENCES [dbo].[tblAccount] ([Id])
GO

ALTER TABLE [dbo].[tblAccountInsurance_Junction] CHECK CONSTRAINT [FK_tblAccountInsurance_Junction_tblAccount]
GO

ALTER TABLE [dbo].[tblAccountInsurance_Junction]  WITH CHECK ADD  CONSTRAINT [FK_tblAccountInsurance_Junction_tblInsurance] FOREIGN KEY([InsuranceId])
REFERENCES [dbo].[tblInsurance] ([Id])
GO

ALTER TABLE [dbo].[tblAccountInsurance_Junction] CHECK CONSTRAINT [FK_tblAccountInsurance_Junction_tblInsurance]
GO






