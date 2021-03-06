USE [master]
GO
/****** Object:  Database [TelerikUniversity]    Script Date: 21.8.2014 г. 1:56:33 ******/
CREATE DATABASE [TelerikUniversity]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TelerikUniversity', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TelerikUniversity.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TelerikUniversity_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TelerikUniversity_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TelerikUniversity] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TelerikUniversity].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TelerikUniversity] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TelerikUniversity] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TelerikUniversity] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TelerikUniversity] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TelerikUniversity] SET ARITHABORT OFF 
GO
ALTER DATABASE [TelerikUniversity] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TelerikUniversity] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TelerikUniversity] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TelerikUniversity] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TelerikUniversity] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TelerikUniversity] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TelerikUniversity] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TelerikUniversity] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TelerikUniversity] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TelerikUniversity] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TelerikUniversity] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TelerikUniversity] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TelerikUniversity] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TelerikUniversity] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TelerikUniversity] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TelerikUniversity] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TelerikUniversity] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TelerikUniversity] SET RECOVERY FULL 
GO
ALTER DATABASE [TelerikUniversity] SET  MULTI_USER 
GO
ALTER DATABASE [TelerikUniversity] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TelerikUniversity] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TelerikUniversity] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TelerikUniversity] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TelerikUniversity] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TelerikUniversity', N'ON'
GO
USE [TelerikUniversity]
GO
/****** Object:  Table [dbo].[AcademicalTitles]    Script Date: 21.8.2014 г. 1:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademicalTitles](
	[TitleID] [int] IDENTITY(1,1) NOT NULL,
	[TitleName] [nchar](50) NOT NULL,
 CONSTRAINT [PK_AcademicalTitles] PRIMARY KEY CLUSTERED 
(
	[TitleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Courses]    Script Date: 21.8.2014 г. 1:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departments]    Script Date: 21.8.2014 г. 1:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nchar](50) NOT NULL,
	[FacultyID] [int] NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 21.8.2014 г. 1:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[FacultyID] [int] IDENTITY(1,1) NOT NULL,
	[FacultyName] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Faculties] PRIMARY KEY CLUSTERED 
(
	[FacultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Professor]    Script Date: 21.8.2014 г. 1:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professor](
	[ProfessorID] [int] IDENTITY(1,1) NOT NULL,
	[ProfessorName] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Professor] PRIMARY KEY CLUSTERED 
(
	[ProfessorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProfessorsTitles]    Script Date: 21.8.2014 г. 1:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfessorsTitles](
	[ProfessorID] [int] NOT NULL,
	[AcademicalTitleID] [int] NOT NULL,
 CONSTRAINT [PK_ProfessorsTitles] PRIMARY KEY CLUSTERED 
(
	[ProfessorID] ASC,
	[AcademicalTitleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 21.8.2014 г. 1:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nchar](10) NOT NULL,
	[FacultyID] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentsCoursesEnrollment]    Script Date: 21.8.2014 г. 1:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentsCoursesEnrollment](
	[StudentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_StudentsCoursesEnrollment] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UniversityCoursesProgram]    Script Date: 21.8.2014 г. 1:56:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UniversityCoursesProgram](
	[CourseID] [int] NOT NULL,
	[ProfessorID] [int] NOT NULL,
 CONSTRAINT [PK_UniversityCoursesProgram] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC,
	[ProfessorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_Faculties1] FOREIGN KEY([FacultyID])
REFERENCES [dbo].[Faculties] ([FacultyID])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_Faculties1]
GO
ALTER TABLE [dbo].[ProfessorsTitles]  WITH CHECK ADD  CONSTRAINT [FK_ProfessorsTitles_AcademicalTitles] FOREIGN KEY([AcademicalTitleID])
REFERENCES [dbo].[AcademicalTitles] ([TitleID])
GO
ALTER TABLE [dbo].[ProfessorsTitles] CHECK CONSTRAINT [FK_ProfessorsTitles_AcademicalTitles]
GO
ALTER TABLE [dbo].[ProfessorsTitles]  WITH CHECK ADD  CONSTRAINT [FK_ProfessorsTitles_Professor] FOREIGN KEY([ProfessorID])
REFERENCES [dbo].[Professor] ([ProfessorID])
GO
ALTER TABLE [dbo].[ProfessorsTitles] CHECK CONSTRAINT [FK_ProfessorsTitles_Professor]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Faculties] FOREIGN KEY([FacultyID])
REFERENCES [dbo].[Faculties] ([FacultyID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Faculties]
GO
ALTER TABLE [dbo].[StudentsCoursesEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_StudentsCoursesEnrollment_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
ALTER TABLE [dbo].[StudentsCoursesEnrollment] CHECK CONSTRAINT [FK_StudentsCoursesEnrollment_Courses]
GO
ALTER TABLE [dbo].[StudentsCoursesEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_StudentsCoursesEnrollment_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentID])
GO
ALTER TABLE [dbo].[StudentsCoursesEnrollment] CHECK CONSTRAINT [FK_StudentsCoursesEnrollment_Students]
GO
ALTER TABLE [dbo].[UniversityCoursesProgram]  WITH CHECK ADD  CONSTRAINT [FK_UniversityCoursesProgram_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
ALTER TABLE [dbo].[UniversityCoursesProgram] CHECK CONSTRAINT [FK_UniversityCoursesProgram_Courses]
GO
ALTER TABLE [dbo].[UniversityCoursesProgram]  WITH CHECK ADD  CONSTRAINT [FK_UniversityCoursesProgram_Professor] FOREIGN KEY([ProfessorID])
REFERENCES [dbo].[Professor] ([ProfessorID])
GO
ALTER TABLE [dbo].[UniversityCoursesProgram] CHECK CONSTRAINT [FK_UniversityCoursesProgram_Professor]
GO
USE [master]
GO
ALTER DATABASE [TelerikUniversity] SET  READ_WRITE 
GO
