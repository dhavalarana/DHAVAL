USE [master]
GO
/****** Object:  Database [DMS_IMB]    Script Date: 08/24/2015 10:48:50 ******/
CREATE DATABASE [DMS_IMB] ON  PRIMARY 
( NAME = N'DMS_IMB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\DMS_IMB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DMS_IMB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\DMS_IMB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DMS_IMB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DMS_IMB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DMS_IMB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DMS_IMB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DMS_IMB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DMS_IMB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DMS_IMB] SET ARITHABORT OFF
GO
ALTER DATABASE [DMS_IMB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [DMS_IMB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DMS_IMB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DMS_IMB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DMS_IMB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DMS_IMB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DMS_IMB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DMS_IMB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DMS_IMB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DMS_IMB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DMS_IMB] SET  DISABLE_BROKER
GO
ALTER DATABASE [DMS_IMB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DMS_IMB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DMS_IMB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DMS_IMB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DMS_IMB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DMS_IMB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DMS_IMB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DMS_IMB] SET  READ_WRITE
GO
ALTER DATABASE [DMS_IMB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [DMS_IMB] SET  MULTI_USER
GO
ALTER DATABASE [DMS_IMB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DMS_IMB] SET DB_CHAINING OFF
GO
USE [DMS_IMB]
GO
/****** Object:  User [DCDEVEL\saurabh.mittal]    Script Date: 08/24/2015 10:48:50 ******/
CREATE USER [DCDEVEL\saurabh.mittal] FOR LOGIN [DCDEVEL\saurabh.mittal] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[IMBStatus]    Script Date: 08/24/2015 10:48:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IMBStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](110) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](110) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_IMBStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IMBSource]    Script Date: 08/24/2015 10:48:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IMBSource](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SourceName] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](110) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](110) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_IMBSource] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 08/24/2015 10:48:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address1] [varchar](150) NOT NULL,
	[Address2] [varchar](150) NULL,
	[Address3] [varchar](150) NULL,
	[City] [varchar](30) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Zipcode] [varchar](11) NOT NULL,
	[ContactName] [varchar](50) NOT NULL,
	[ContactPhoneNo] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](110) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](110) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[State]    Script Date: 08/24/2015 10:48:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[State](
	[Id] [varchar](2) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](110) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](110) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServiceType]    Script Date: 08/24/2015 10:48:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ServiceType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceTypeName] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](110) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](110) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ServiceType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 08/24/2015 10:48:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Company_Id] [int] NULL,
	[UserName] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](20) NOT NULL,
	[EmailAddress] [varchar](50) NOT NULL,
	[Password] [varchar](150) NOT NULL,
	[UserPassSalt] [varchar](50) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[IsTempPassword] [bit] NOT NULL,
	[IsTempAccount] [bit] NOT NULL,
	[LoginAttempted] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](110) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](110) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 08/24/2015 10:48:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Jobs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Company_Id] [int] NOT NULL,
	[ReferenceNumber] [varchar](50) NOT NULL,
	[JobNumber] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](110) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](110) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Package]    Script Date: 08/24/2015 10:48:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Package](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Job_Id] [int] NOT NULL,
	[MailerId] [varchar](50) NOT NULL,
	[PackageNo] [varchar](50) NOT NULL,
	[VersionNo] [varchar](50) NOT NULL,
	[IMBSource_Id] [int] NOT NULL,
	[ServiceType_Id] [int] NOT NULL,
	[IsDMSScheme] [bit] NOT NULL,
	[MailClass] [varchar](50) NOT NULL,
	[IsUSPSFullService] [bit] NOT NULL,
	[Tracking] [varchar](50) NOT NULL,
	[MailType] [varchar](50) NOT NULL,
	[MailDate] [datetime] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](110) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](110) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClientFile]    Script Date: 08/24/2015 10:48:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClientFile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Jobs_Id] [int] NOT NULL,
	[JobReferenceNumber] [varchar](50) NOT NULL,
	[DMSJobNumber] [varchar](50) NOT NULL,
	[Package_Id] [int] NOT NULL,
	[Package_Text] [varchar](50) NOT NULL,
	[MailerId] [varchar](50) NOT NULL,
	[IMBSourceName] [varchar](50) NOT NULL,
	[ServiceType_Id] [int] NOT NULL,
	[ServiceTypeName] [varchar](50) NOT NULL,
	[IsDMSScheme] [bit] NOT NULL,
	[MailClass] [varchar](50) NOT NULL,
	[IsUSPSFullService] [bit] NOT NULL,
	[Tracking] [varchar](50) NOT NULL,
	[MailType] [varchar](50) NOT NULL,
	[MailDate] [datetime] NOT NULL,
	[FileType] [varchar](50) NOT NULL,
	[FileDelimitedBy] [varchar](50) NULL,
	[FilePath] [varchar](150) NOT NULL,
	[Filename] [varchar](150) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](110) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](110) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ClientFile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FileInformation]    Script Date: 08/24/2015 10:48:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FileInformation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientFile_Id] [int] NOT NULL,
	[FiveDigitZip_StartPosition] [varchar](50) NULL,
	[FiveDigitZip_Length] [varchar](50) NULL,
	[ZipFour_StartPosition] [varchar](50) NULL,
	[ZipFour_Length] [varchar](50) NULL,
	[DeliveryPoint_StartPosition] [varchar](50) NULL,
	[DeliveryPoint_Length] [varchar](50) NULL,
	[UniqueRecordId_StartPosition] [varchar](50) NULL,
	[UniqueRecordId_Length] [varchar](50) NULL,
	[IMB_StartPosition] [varchar](50) NULL,
	[IMB_Length] [varchar](50) NULL,
	[BarcodeId_StartPosition] [varchar](50) NULL,
	[BarcodeId_Length] [varchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](110) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](110) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_FileInformation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_User_Company]    Script Date: 08/24/2015 10:48:57 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Company] FOREIGN KEY([Company_Id])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Company]
GO
/****** Object:  ForeignKey [FK_Jobs_Company]    Script Date: 08/24/2015 10:48:57 ******/
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_Company] FOREIGN KEY([Company_Id])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_Company]
GO
/****** Object:  ForeignKey [FK_Package_IMBSource]    Script Date: 08/24/2015 10:48:57 ******/
ALTER TABLE [dbo].[Package]  WITH CHECK ADD  CONSTRAINT [FK_Package_IMBSource] FOREIGN KEY([IMBSource_Id])
REFERENCES [dbo].[IMBSource] ([Id])
GO
ALTER TABLE [dbo].[Package] CHECK CONSTRAINT [FK_Package_IMBSource]
GO
/****** Object:  ForeignKey [FK_Package_Jobs]    Script Date: 08/24/2015 10:48:57 ******/
ALTER TABLE [dbo].[Package]  WITH CHECK ADD  CONSTRAINT [FK_Package_Jobs] FOREIGN KEY([Job_Id])
REFERENCES [dbo].[Jobs] ([Id])
GO
ALTER TABLE [dbo].[Package] CHECK CONSTRAINT [FK_Package_Jobs]
GO
/****** Object:  ForeignKey [FK_Package_ServiceType]    Script Date: 08/24/2015 10:48:57 ******/
ALTER TABLE [dbo].[Package]  WITH CHECK ADD  CONSTRAINT [FK_Package_ServiceType] FOREIGN KEY([ServiceType_Id])
REFERENCES [dbo].[ServiceType] ([Id])
GO
ALTER TABLE [dbo].[Package] CHECK CONSTRAINT [FK_Package_ServiceType]
GO
/****** Object:  ForeignKey [FK_ClientFile_Jobs]    Script Date: 08/24/2015 10:48:57 ******/
ALTER TABLE [dbo].[ClientFile]  WITH CHECK ADD  CONSTRAINT [FK_ClientFile_Jobs] FOREIGN KEY([Jobs_Id])
REFERENCES [dbo].[Jobs] ([Id])
GO
ALTER TABLE [dbo].[ClientFile] CHECK CONSTRAINT [FK_ClientFile_Jobs]
GO
/****** Object:  ForeignKey [FK_ClientFile_Package]    Script Date: 08/24/2015 10:48:57 ******/
ALTER TABLE [dbo].[ClientFile]  WITH CHECK ADD  CONSTRAINT [FK_ClientFile_Package] FOREIGN KEY([Package_Id])
REFERENCES [dbo].[Package] ([Id])
GO
ALTER TABLE [dbo].[ClientFile] CHECK CONSTRAINT [FK_ClientFile_Package]
GO
/****** Object:  ForeignKey [FK_ClientFile_ServiceType]    Script Date: 08/24/2015 10:48:57 ******/
ALTER TABLE [dbo].[ClientFile]  WITH CHECK ADD  CONSTRAINT [FK_ClientFile_ServiceType] FOREIGN KEY([ServiceType_Id])
REFERENCES [dbo].[ServiceType] ([Id])
GO
ALTER TABLE [dbo].[ClientFile] CHECK CONSTRAINT [FK_ClientFile_ServiceType]
GO
/****** Object:  ForeignKey [FK_ClientFile_User]    Script Date: 08/24/2015 10:48:57 ******/
ALTER TABLE [dbo].[ClientFile]  WITH CHECK ADD  CONSTRAINT [FK_ClientFile_User] FOREIGN KEY([User_Id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[ClientFile] CHECK CONSTRAINT [FK_ClientFile_User]
GO
/****** Object:  ForeignKey [FK_FileInformation_ClientFile]    Script Date: 08/24/2015 10:48:57 ******/
ALTER TABLE [dbo].[FileInformation]  WITH CHECK ADD  CONSTRAINT [FK_FileInformation_ClientFile] FOREIGN KEY([ClientFile_Id])
REFERENCES [dbo].[ClientFile] ([Id])
GO
ALTER TABLE [dbo].[FileInformation] CHECK CONSTRAINT [FK_FileInformation_ClientFile]
GO
