USE [master]
GO
/****** Object:  Database [CarWashDb]    Script Date: 20-10-2022 21:10:36 ******/
CREATE DATABASE [CarWashDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CarWashDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\CarWashDb.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CarWashDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\CarWashDb_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CarWashDb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CarWashDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CarWashDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CarWashDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CarWashDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CarWashDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CarWashDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [CarWashDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CarWashDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CarWashDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CarWashDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CarWashDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CarWashDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CarWashDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CarWashDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CarWashDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CarWashDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CarWashDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CarWashDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CarWashDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CarWashDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CarWashDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CarWashDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CarWashDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CarWashDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CarWashDb] SET  MULTI_USER 
GO
ALTER DATABASE [CarWashDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CarWashDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CarWashDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CarWashDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CarWashDb] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CarWashDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20-10-2022 21:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 20-10-2022 21:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HouseNumber] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[Pincode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[CustId] [int] NOT NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Admins]    Script Date: 20-10-2022 21:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[AdminEmail] [nvarchar](max) NULL,
	[AdminPassword] [nvarchar](max) NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cars]    Script Date: 20-10-2022 21:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Model] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 20-10-2022 21:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PkgName] [nvarchar](max) NULL,
	[pkgDescription] [nvarchar](max) NULL,
	[price] [float] NOT NULL,
	[regNumber] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[city] [nvarchar](max) NULL,
	[state] [nvarchar](max) NULL,
	[pinCode] [nvarchar](max) NULL,
	[instructions] [nvarchar](max) NULL,
	[date] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[userEmail] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Packages]    Script Date: 20-10-2022 21:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Packages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_Packages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserProfiles]    Script Date: 20-10-2022 21:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserProfiles](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[UserPhnumber] [nvarchar](max) NULL,
	[UserEmail] [nvarchar](max) NULL,
	[UserPassword] [nvarchar](max) NULL,
	[UserPasswordHash] [varbinary](max) NULL,
	[UserPasswordSalt] [varbinary](max) NULL,
	[UserStatus] [nvarchar](max) NULL,
	[Role] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserProfiles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [IX_Addresses_CustId]    Script Date: 20-10-2022 21:10:36 ******/
CREATE NONCLUSTERED INDEX [IX_Addresses_CustId] ON [dbo].[Addresses]
(
	[CustId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_UserProfiles_CustId] FOREIGN KEY([CustId])
REFERENCES [dbo].[UserProfiles] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_UserProfiles_CustId]
GO
USE [master]
GO
ALTER DATABASE [CarWashDb] SET  READ_WRITE 
GO
