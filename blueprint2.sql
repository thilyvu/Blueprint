USE [master]
GO
/****** Object:  Database [blueprints]    Script Date: 4/14/2020 8:14:59 PM ******/
CREATE DATABASE [blueprints]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'blueprints', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\blueprints.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'blueprints_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\blueprints_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [blueprints] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [blueprints].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [blueprints] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [blueprints] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [blueprints] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [blueprints] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [blueprints] SET ARITHABORT OFF 
GO
ALTER DATABASE [blueprints] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [blueprints] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [blueprints] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [blueprints] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [blueprints] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [blueprints] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [blueprints] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [blueprints] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [blueprints] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [blueprints] SET  DISABLE_BROKER 
GO
ALTER DATABASE [blueprints] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [blueprints] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [blueprints] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [blueprints] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [blueprints] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [blueprints] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [blueprints] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [blueprints] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [blueprints] SET  MULTI_USER 
GO
ALTER DATABASE [blueprints] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [blueprints] SET DB_CHAINING OFF 
GO
ALTER DATABASE [blueprints] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [blueprints] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [blueprints] SET DELAYED_DURABILITY = DISABLED 
GO
USE [blueprints]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 4/14/2020 8:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[ID] [int] NOT NULL,
	[FIRSTNAME] [varchar](50) NULL,
	[LASTNAME] [varchar](50) NULL,
	[PHONE] [varchar](50) NULL,
	[BIRHDAY] [date] NULL,
	[EMPLOYEEADDRESS] [varchar](50) NULL,
	[IDNUMBER] [varchar](50) NULL,
	[HOURSOFWORK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[manager]    Script Date: 4/14/2020 8:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[manager](
	[ID] [int] NOT NULL,
	[FIRSTNAME] [varchar](50) NULL,
	[LASTNAME] [varchar](50) NULL,
	[PHONE] [varchar](50) NULL,
	[BIRHDAY] [date] NULL,
	[MANAGERADDRESS] [varchar](50) NULL,
	[IDNUMBER] [varchar](50) NULL,
	[SHIFTWORK] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManagerAcount]    Script Date: 4/14/2020 8:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManagerAcount](
	[ID] [int] NOT NULL,
	[username] [nvarchar](100) NULL,
	[pass] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Salary]    Script Date: 4/14/2020 8:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salary](
	[ID] [int] NOT NULL,
	[checkin] [int] NULL,
	[checkout] [int] NULL,
	[pluspoint] [int] NULL,
	[subtractpoint] [int] NULL,
	[salary] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShiftWork]    Script Date: 4/14/2020 8:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShiftWork](
	[EID] [int] NOT NULL,
	[MORNING] [bit] NULL,
	[AFTERNOON] [bit] NULL,
	[EVENING] [bit] NULL,
	[WORDDAY] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[EID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StaffAcount]    Script Date: 4/14/2020 8:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffAcount](
	[ID] [int] NOT NULL,
	[username] [nvarchar](100) NULL,
	[pass] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WordTable]    Script Date: 4/14/2020 8:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WordTable](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[WordDate] [date] NULL,
	[Morning] [bit] NULL,
	[Afternoon] [bit] NULL,
	[Night] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[employee] ([ID], [FIRSTNAME], [LASTNAME], [PHONE], [BIRHDAY], [EMPLOYEEADDRESS], [IDNUMBER], [HOURSOFWORK]) VALUES (1, N'Thi', N'Ly Vu', N'0563010901', CAST(N'2020-04-09' AS Date), N'BMT', N'241752629', 5)
INSERT [dbo].[employee] ([ID], [FIRSTNAME], [LASTNAME], [PHONE], [BIRHDAY], [EMPLOYEEADDRESS], [IDNUMBER], [HOURSOFWORK]) VALUES (2, N'Tran', N'Quang Dai', N'0363738936', CAST(N'2020-04-09' AS Date), N'Dalat', N'241752219', 3)
INSERT [dbo].[employee] ([ID], [FIRSTNAME], [LASTNAME], [PHONE], [BIRHDAY], [EMPLOYEEADDRESS], [IDNUMBER], [HOURSOFWORK]) VALUES (3, N'Nguyen', N'Van Linh', N'0782729449', CAST(N'2020-04-09' AS Date), N'Dalat', N'241752689', 3)
INSERT [dbo].[employee] ([ID], [FIRSTNAME], [LASTNAME], [PHONE], [BIRHDAY], [EMPLOYEEADDRESS], [IDNUMBER], [HOURSOFWORK]) VALUES (4, N'Tran', N'Thi Le', N'0821231231', CAST(N'2020-04-10' AS Date), N'LC', N'276451322', 0)
INSERT [dbo].[employee] ([ID], [FIRSTNAME], [LASTNAME], [PHONE], [BIRHDAY], [EMPLOYEEADDRESS], [IDNUMBER], [HOURSOFWORK]) VALUES (5, N'Nguyen', N'Ba Long', N'0987654231', CAST(N'2020-04-12' AS Date), N'BMT', N'247876542', 10)
INSERT [dbo].[manager] ([ID], [FIRSTNAME], [LASTNAME], [PHONE], [BIRHDAY], [MANAGERADDRESS], [IDNUMBER], [SHIFTWORK]) VALUES (1, N'Nguyen', N'Thi Tu', N'0901023001', CAST(N'2020-04-10' AS Date), N'HN', N'2716381941', N'Morning')
INSERT [dbo].[manager] ([ID], [FIRSTNAME], [LASTNAME], [PHONE], [BIRHDAY], [MANAGERADDRESS], [IDNUMBER], [SHIFTWORK]) VALUES (2, N'Tran', N'Thi Nhu', N'09090219231', CAST(N'2020-04-10' AS Date), N'BD', N'27163811112', N'Afternoon')
INSERT [dbo].[manager] ([ID], [FIRSTNAME], [LASTNAME], [PHONE], [BIRHDAY], [MANAGERADDRESS], [IDNUMBER], [SHIFTWORK]) VALUES (3, N'Ly', N'Lai Tu', N'0901023991', CAST(N'2020-04-10' AS Date), N'NA', N'2716123123', N'Night')
INSERT [dbo].[ManagerAcount] ([ID], [username], [pass]) VALUES (1, N'titanium', N'09012000')
INSERT [dbo].[ManagerAcount] ([ID], [username], [pass]) VALUES (2, N'daicuto', N'05012000')
INSERT [dbo].[Salary] ([ID], [checkin], [checkout], [pluspoint], [subtractpoint], [salary]) VALUES (1, 4, 5, 0, 1, 0)
INSERT [dbo].[Salary] ([ID], [checkin], [checkout], [pluspoint], [subtractpoint], [salary]) VALUES (2, 1, 0, 1, 0, 0)
INSERT [dbo].[Salary] ([ID], [checkin], [checkout], [pluspoint], [subtractpoint], [salary]) VALUES (3, 0, 0, 0, 0, 0)
INSERT [dbo].[Salary] ([ID], [checkin], [checkout], [pluspoint], [subtractpoint], [salary]) VALUES (4, 0, 0, 0, 0, 0)
INSERT [dbo].[Salary] ([ID], [checkin], [checkout], [pluspoint], [subtractpoint], [salary]) VALUES (5, 0, 0, 0, 0, 0)
INSERT [dbo].[ShiftWork] ([EID], [MORNING], [AFTERNOON], [EVENING], [WORDDAY]) VALUES (1, 0, 1, 1, CAST(N'2020-04-12' AS Date))
INSERT [dbo].[ShiftWork] ([EID], [MORNING], [AFTERNOON], [EVENING], [WORDDAY]) VALUES (2, 1, 1, 0, CAST(N'2020-04-12' AS Date))
INSERT [dbo].[ShiftWork] ([EID], [MORNING], [AFTERNOON], [EVENING], [WORDDAY]) VALUES (3, 1, 0, 1, CAST(N'2020-04-12' AS Date))
INSERT [dbo].[ShiftWork] ([EID], [MORNING], [AFTERNOON], [EVENING], [WORDDAY]) VALUES (4, 0, 1, 1, CAST(N'2020-04-12' AS Date))
INSERT [dbo].[ShiftWork] ([EID], [MORNING], [AFTERNOON], [EVENING], [WORDDAY]) VALUES (5, 1, 1, 0, CAST(N'2020-04-12' AS Date))
INSERT [dbo].[StaffAcount] ([ID], [username], [pass]) VALUES (1, N'Vu', N'1')
INSERT [dbo].[StaffAcount] ([ID], [username], [pass]) VALUES (2, N'Dai', N'2')
INSERT [dbo].[StaffAcount] ([ID], [username], [pass]) VALUES (3, N'Linh', N'3')
INSERT [dbo].[WordTable] ([Id], [Name], [WordDate], [Morning], [Afternoon], [Night]) VALUES (1, N'Vu', CAST(N'2020-04-09' AS Date), 1, 0, 1)
INSERT [dbo].[WordTable] ([Id], [Name], [WordDate], [Morning], [Afternoon], [Night]) VALUES (2, N'Vu2', CAST(N'2020-04-09' AS Date), 0, 1, 0)
INSERT [dbo].[WordTable] ([Id], [Name], [WordDate], [Morning], [Afternoon], [Night]) VALUES (3, N'Vu3', CAST(N'2020-04-09' AS Date), 0, 1, 0)
USE [master]
GO
ALTER DATABASE [blueprints] SET  READ_WRITE 
GO
