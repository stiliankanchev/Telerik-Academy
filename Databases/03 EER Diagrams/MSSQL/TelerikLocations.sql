USE [master]
GO
/****** Object:  Database [TelerikLocations]    Script Date: 21.8.2014 г. 1:55:54 ******/
CREATE DATABASE [TelerikLocations]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TelerikLocations', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TelerikLocations.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TelerikLocations_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TelerikLocations_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TelerikLocations] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TelerikLocations].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TelerikLocations] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TelerikLocations] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TelerikLocations] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TelerikLocations] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TelerikLocations] SET ARITHABORT OFF 
GO
ALTER DATABASE [TelerikLocations] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TelerikLocations] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TelerikLocations] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TelerikLocations] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TelerikLocations] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TelerikLocations] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TelerikLocations] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TelerikLocations] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TelerikLocations] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TelerikLocations] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TelerikLocations] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TelerikLocations] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TelerikLocations] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TelerikLocations] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TelerikLocations] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TelerikLocations] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TelerikLocations] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TelerikLocations] SET RECOVERY FULL 
GO
ALTER DATABASE [TelerikLocations] SET  MULTI_USER 
GO
ALTER DATABASE [TelerikLocations] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TelerikLocations] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TelerikLocations] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TelerikLocations] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TelerikLocations] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TelerikLocations', N'ON'
GO
USE [TelerikLocations]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 21.8.2014 г. 1:55:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[AddressText] [nchar](50) NOT NULL,
	[TownID] [int] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Continent]    Script Date: 21.8.2014 г. 1:55:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Continent](
	[ContinentID] [int] IDENTITY(1,1) NOT NULL,
	[ContinentName] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Continent] PRIMARY KEY CLUSTERED 
(
	[ContinentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 21.8.2014 г. 1:55:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nchar](50) NOT NULL,
	[ContinentID] [int] NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Person]    Script Date: 21.8.2014 г. 1:55:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[PersonFirstName] [nchar](50) NOT NULL,
	[PersonLastName] [nchar](50) NOT NULL,
	[AddressID] [int] NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Town]    Script Date: 21.8.2014 г. 1:55:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Town](
	[TownID] [int] IDENTITY(1,1) NOT NULL,
	[TownName] [nchar](50) NOT NULL,
	[CountryID] [int] NOT NULL,
 CONSTRAINT [PK_Town] PRIMARY KEY CLUSTERED 
(
	[TownID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([AddressID], [AddressText], [TownID]) VALUES (1, N'Some address text for Sofia                       ', 1)
INSERT [dbo].[Address] ([AddressID], [AddressText], [TownID]) VALUES (3, N'Some address text for Varna                       ', 3)
INSERT [dbo].[Address] ([AddressID], [AddressText], [TownID]) VALUES (4, N'Some address text for Burgas                      ', 4)
SET IDENTITY_INSERT [dbo].[Address] OFF
SET IDENTITY_INSERT [dbo].[Continent] ON 

INSERT [dbo].[Continent] ([ContinentID], [ContinentName]) VALUES (1, N'Europe                                            ')
INSERT [dbo].[Continent] ([ContinentID], [ContinentName]) VALUES (2, N'Asia                                              ')
INSERT [dbo].[Continent] ([ContinentID], [ContinentName]) VALUES (3, N'Africa                                            ')
SET IDENTITY_INSERT [dbo].[Continent] OFF
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([CountryID], [CountryName], [ContinentID]) VALUES (1, N'Bulgaria                                          ', 1)
INSERT [dbo].[Country] ([CountryID], [CountryName], [ContinentID]) VALUES (2, N'Tanzania                                          ', 3)
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [AddressID]) VALUES (1, N'John                                              ', N'Doe                                               ', 1)
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [AddressID]) VALUES (3, N'Anjelina                                          ', N'Doe                                               ', 3)
INSERT [dbo].[Person] ([PersonID], [PersonFirstName], [PersonLastName], [AddressID]) VALUES (4, N'Unknowlina                                        ', N'Doe                                               ', 4)
SET IDENTITY_INSERT [dbo].[Person] OFF
SET IDENTITY_INSERT [dbo].[Town] ON 

INSERT [dbo].[Town] ([TownID], [TownName], [CountryID]) VALUES (1, N'Sofia                                             ', 1)
INSERT [dbo].[Town] ([TownID], [TownName], [CountryID]) VALUES (3, N'Varna                                             ', 1)
INSERT [dbo].[Town] ([TownID], [TownName], [CountryID]) VALUES (4, N'Burgas                                            ', 1)
INSERT [dbo].[Town] ([TownID], [TownName], [CountryID]) VALUES (5, N'Plovdiv                                           ', 1)
INSERT [dbo].[Town] ([TownID], [TownName], [CountryID]) VALUES (6, N'Veliko Tyrnovo                                    ', 1)
INSERT [dbo].[Town] ([TownID], [TownName], [CountryID]) VALUES (7, N'Unknown Tanzanian City                            ', 2)
SET IDENTITY_INSERT [dbo].[Town] OFF
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Town] FOREIGN KEY([TownID])
REFERENCES [dbo].[Town] ([TownID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Town]
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_Continent] FOREIGN KEY([ContinentID])
REFERENCES [dbo].[Continent] ([ContinentID])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_Continent]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_Address]
GO
ALTER TABLE [dbo].[Town]  WITH CHECK ADD  CONSTRAINT [FK_Town_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Town] CHECK CONSTRAINT [FK_Town_Country]
GO
USE [master]
GO
ALTER DATABASE [TelerikLocations] SET  READ_WRITE 
GO
