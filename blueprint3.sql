USE [master]
GO
/****** Object:  Database [blueprints]    Script Date: 5/5/2020 8:30:01 PM ******/
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
/****** Object:  Table [dbo].[Dish]    Script Date: 5/5/2020 8:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dish](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Price] [int] NULL,
	[DishStatus] [text] NULL,
	[Total] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EatTable]    Script Date: 5/5/2020 8:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EatTable](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[Tablestatus] [nvarchar](50) NULL,
	[NumberOfPeople] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[employee]    Script Date: 5/5/2020 8:30:01 PM ******/
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
/****** Object:  Table [dbo].[FoodBills]    Script Date: 5/5/2020 8:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodBills](
	[ID] [int] NULL,
	[TableID] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Price] [int] NULL,
	[quantity] [int] NULL,
	[DayCheckOut] [date] NULL,
	[Total] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[manager]    Script Date: 5/5/2020 8:30:01 PM ******/
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
/****** Object:  Table [dbo].[ManagerAcount]    Script Date: 5/5/2020 8:30:01 PM ******/
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
/****** Object:  Table [dbo].[Salary]    Script Date: 5/5/2020 8:30:01 PM ******/
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
/****** Object:  Table [dbo].[ShiftWork]    Script Date: 5/5/2020 8:30:01 PM ******/
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
/****** Object:  Table [dbo].[StaffAcount]    Script Date: 5/5/2020 8:30:01 PM ******/
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
/****** Object:  Table [dbo].[WordTable]    Script Date: 5/5/2020 8:30:01 PM ******/
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
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (1, N'Bánh canh ', 30000, N'In stock', 100)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (2, N'Bánh Đa Cua  ', 50000, N'In stock', 70)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (3, N'Bún bò Huế ', 45000, N'In stock', 80)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (4, N'Bún cá ', 35000, N'In stock', 90)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (5, N'Bún chả ', 55000, N'In stock', 50)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (6, N'Cơm cháy hải sản ', 105000, N'In stock', 80)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (7, N'Xôi xéo ', 15000, N'In stock', 100)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (8, N'Bánh cuốn ', 20000, N'In stock', 70)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (9, N'Giả cầy ', 150000, N'In stock', 10)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (10, N'Bò Lúc lắc ', 250000, N'In stock', 15)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (11, N'Cơm cháy hải sản ', 105000, N'In stock', 80)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (12, N'gà tìm thuốc bắc ', 300000, N'In stock', 14)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (13, N'Bò Wagu  ', 1050000, N'In stock', 5)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (14, N'Cơm chiên chân châu  ', 100000, N'In stock', 80)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (15, N'Cocacola   ', 15000, N'In stock', 5)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (16, N'PepSi  ', 15000, N'In stock', 5)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (17, N'revise ', 20000, N'In stock', 40)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (18, N'Stin ', 15000, N'In stock', 80)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (19, N'Nước Lọc  ', 5000, N'In stock', 65)
INSERT [dbo].[Dish] ([ID], [Name], [Price], [DishStatus], [Total]) VALUES (20, N'rượu cần ', 150000, N'In stock', 10)
INSERT [dbo].[EatTable] ([id], [name], [Tablestatus], [NumberOfPeople]) VALUES (1, N'Table1', N'UnAvailable', 6)
INSERT [dbo].[EatTable] ([id], [name], [Tablestatus], [NumberOfPeople]) VALUES (2, N'Table2', N'Available', 0)
INSERT [dbo].[EatTable] ([id], [name], [Tablestatus], [NumberOfPeople]) VALUES (3, N'Table3', N'Available', 0)
INSERT [dbo].[EatTable] ([id], [name], [Tablestatus], [NumberOfPeople]) VALUES (4, N'Table4', N'Available', 0)
INSERT [dbo].[EatTable] ([id], [name], [Tablestatus], [NumberOfPeople]) VALUES (5, N'Table5', N'Available', 0)
INSERT [dbo].[EatTable] ([id], [name], [Tablestatus], [NumberOfPeople]) VALUES (6, N'Table6', N'Available', 0)
INSERT [dbo].[EatTable] ([id], [name], [Tablestatus], [NumberOfPeople]) VALUES (7, N'Table7', N'Available', 0)
INSERT [dbo].[EatTable] ([id], [name], [Tablestatus], [NumberOfPeople]) VALUES (8, N'Table8', N'Available', 0)
INSERT [dbo].[EatTable] ([id], [name], [Tablestatus], [NumberOfPeople]) VALUES (9, N'Table9', N'Available', 0)
INSERT [dbo].[EatTable] ([id], [name], [Tablestatus], [NumberOfPeople]) VALUES (10, N'Table 10', N'Available', 0)
INSERT [dbo].[EatTable] ([id], [name], [Tablestatus], [NumberOfPeople]) VALUES (11, N'Table 11', N'Available', 0)
INSERT [dbo].[EatTable] ([id], [name], [Tablestatus], [NumberOfPeople]) VALUES (12, N'Table 12', N'Available', 0)
INSERT [dbo].[EatTable] ([id], [name], [Tablestatus], [NumberOfPeople]) VALUES (13, N'Table 13', N'Available', 0)
INSERT [dbo].[employee] ([ID], [FIRSTNAME], [LASTNAME], [PHONE], [BIRHDAY], [EMPLOYEEADDRESS], [IDNUMBER], [HOURSOFWORK]) VALUES (1, N'Thi', N'Ly Vu', N'0563010901', CAST(N'2020-04-09' AS Date), N'BMT', N'241752629', 5)
INSERT [dbo].[employee] ([ID], [FIRSTNAME], [LASTNAME], [PHONE], [BIRHDAY], [EMPLOYEEADDRESS], [IDNUMBER], [HOURSOFWORK]) VALUES (2, N'Tran', N'Quang Dai', N'0363738936', CAST(N'2020-04-09' AS Date), N'Dalat', N'241752219', 3)
INSERT [dbo].[employee] ([ID], [FIRSTNAME], [LASTNAME], [PHONE], [BIRHDAY], [EMPLOYEEADDRESS], [IDNUMBER], [HOURSOFWORK]) VALUES (3, N'Nguyen', N'Van Linh', N'0782729449', CAST(N'2020-04-09' AS Date), N'Dalat', N'241752689', 8)
INSERT [dbo].[employee] ([ID], [FIRSTNAME], [LASTNAME], [PHONE], [BIRHDAY], [EMPLOYEEADDRESS], [IDNUMBER], [HOURSOFWORK]) VALUES (4, N'Tran', N'Thi Le', N'0821231231', CAST(N'2020-04-10' AS Date), N'LC', N'276451322', 0)
INSERT [dbo].[employee] ([ID], [FIRSTNAME], [LASTNAME], [PHONE], [BIRHDAY], [EMPLOYEEADDRESS], [IDNUMBER], [HOURSOFWORK]) VALUES (5, N'Nguyen', N'Ba Long', N'0987654231', CAST(N'2020-04-12' AS Date), N'BMT', N'247876542', 10)
INSERT [dbo].[employee] ([ID], [FIRSTNAME], [LASTNAME], [PHONE], [BIRHDAY], [EMPLOYEEADDRESS], [IDNUMBER], [HOURSOFWORK]) VALUES (6, N'Nguyen ', N'Van Tam ', N'098797635', CAST(N'2000-04-15' AS Date), N'Da Nang', N'241768459', 0)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (1, 1, N'Bánh canh ', 90000, 3, CAST(N'2020-05-05' AS Date), 1185000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (1, 1, N'Giả cầy ', 450000, 3, CAST(N'2020-05-05' AS Date), 1185000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (1, 1, N'Bún cá ', 105000, 3, CAST(N'2020-05-05' AS Date), 1185000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (1, 1, N'PepSi  ', 45000, 3, CAST(N'2020-05-05' AS Date), 1185000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (1, 1, N'Stin ', 45000, 3, CAST(N'2020-05-05' AS Date), 1185000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (1, 1, N'rượu cần ', 450000, 3, CAST(N'2020-05-05' AS Date), 1185000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (2, 9, N'Bánh canh ', 120000, 4, CAST(N'2020-05-05' AS Date), 840000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (2, 9, N'Bánh canh ', 120000, 4, CAST(N'2020-05-05' AS Date), 840000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (2, 9, N'Bánh canh ', 120000, 4, CAST(N'2020-05-05' AS Date), 840000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (2, 9, N'Bánh canh ', 120000, 4, CAST(N'2020-05-05' AS Date), 840000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (2, 9, N'Bánh canh ', 120000, 4, CAST(N'2020-05-05' AS Date), 840000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (2, 9, N'Bánh canh ', 120000, 4, CAST(N'2020-05-05' AS Date), 840000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (2, 9, N'Bánh canh ', 120000, 4, CAST(N'2020-05-05' AS Date), 840000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (6, 3, N'Bánh canh ', 120000, 4, CAST(N'2020-05-05' AS Date), 120000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (7, 2, N'Bánh canh ', 180000, 6, CAST(N'2020-05-05' AS Date), 540000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (7, 2, N'Bánh canh ', 180000, 6, CAST(N'2020-05-05' AS Date), 540000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (7, 2, N'Bánh canh ', 180000, 6, CAST(N'2020-05-05' AS Date), 540000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (8, 3, N'Bánh canh ', 180000, 6, CAST(N'2020-05-05' AS Date), 540000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (8, 3, N'Bánh canh ', 180000, 6, CAST(N'2020-05-05' AS Date), 540000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (8, 3, N'Bánh canh ', 180000, 6, CAST(N'2020-05-05' AS Date), 540000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (3, 3, N'Bánh canh ', 120000, 4, CAST(N'2020-05-05' AS Date), 120000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (4, 6, N'Bánh canh ', 120000, 4, CAST(N'2020-05-05' AS Date), 360000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (4, 6, N'Bánh canh ', 120000, 4, CAST(N'2020-05-05' AS Date), 360000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (4, 6, N'Bánh canh ', 120000, 4, CAST(N'2020-05-05' AS Date), 360000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (5, 2, N'Bánh canh ', 180000, 6, CAST(N'2020-05-05' AS Date), 360000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (5, 2, N'Bánh canh ', 180000, 6, CAST(N'2020-05-05' AS Date), 360000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (9, 5, N'Bánh canh ', 360000, 12, CAST(N'2020-05-05' AS Date), 1080000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (9, 5, N'Bánh canh ', 360000, 12, CAST(N'2020-05-05' AS Date), 1080000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (9, 5, N'Bánh canh ', 360000, 12, CAST(N'2020-05-05' AS Date), 1080000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (10, 1, N'Bánh canh ', 60000, 2, CAST(N'2020-05-05' AS Date), 180000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (10, 1, N'Bánh canh ', 60000, 2, CAST(N'2020-05-05' AS Date), 180000)
INSERT [dbo].[FoodBills] ([ID], [TableID], [Name], [Price], [quantity], [DayCheckOut], [Total]) VALUES (10, 1, N'Bánh canh ', 60000, 2, CAST(N'2020-05-05' AS Date), 180000)
INSERT [dbo].[manager] ([ID], [FIRSTNAME], [LASTNAME], [PHONE], [BIRHDAY], [MANAGERADDRESS], [IDNUMBER], [SHIFTWORK]) VALUES (1, N'Nguyen', N'Thi Tu', N'0901023001', CAST(N'2020-04-10' AS Date), N'HN', N'2716381941', N'Morning')
INSERT [dbo].[manager] ([ID], [FIRSTNAME], [LASTNAME], [PHONE], [BIRHDAY], [MANAGERADDRESS], [IDNUMBER], [SHIFTWORK]) VALUES (2, N'Tran', N'Thi Nhu', N'09090219231', CAST(N'2020-04-10' AS Date), N'BD', N'27163811112', N'Afternoon')
INSERT [dbo].[manager] ([ID], [FIRSTNAME], [LASTNAME], [PHONE], [BIRHDAY], [MANAGERADDRESS], [IDNUMBER], [SHIFTWORK]) VALUES (3, N'Ly', N'Lai Tu', N'0901023991', CAST(N'2020-04-10' AS Date), N'NA', N'2716123123', N'Night')
INSERT [dbo].[ManagerAcount] ([ID], [username], [pass]) VALUES (1, N'titanium', N'0')
INSERT [dbo].[ManagerAcount] ([ID], [username], [pass]) VALUES (2, N'daicuto', N'05012000')
INSERT [dbo].[Salary] ([ID], [checkin], [checkout], [pluspoint], [subtractpoint], [salary]) VALUES (1, 11, 7, 0, 1, 300000)
INSERT [dbo].[Salary] ([ID], [checkin], [checkout], [pluspoint], [subtractpoint], [salary]) VALUES (2, 1, 0, 1, 1, 80000)
INSERT [dbo].[Salary] ([ID], [checkin], [checkout], [pluspoint], [subtractpoint], [salary]) VALUES (3, 0, 0, 0, 0, 100000)
INSERT [dbo].[Salary] ([ID], [checkin], [checkout], [pluspoint], [subtractpoint], [salary]) VALUES (4, 0, 0, 0, 0, 0)
INSERT [dbo].[Salary] ([ID], [checkin], [checkout], [pluspoint], [subtractpoint], [salary]) VALUES (5, 0, 0, 0, 0, 0)
INSERT [dbo].[Salary] ([ID], [checkin], [checkout], [pluspoint], [subtractpoint], [salary]) VALUES (6, 0, 0, 0, 0, 0)
INSERT [dbo].[ShiftWork] ([EID], [MORNING], [AFTERNOON], [EVENING], [WORDDAY]) VALUES (1, 1, 1, 0, CAST(N'2020-04-12' AS Date))
INSERT [dbo].[ShiftWork] ([EID], [MORNING], [AFTERNOON], [EVENING], [WORDDAY]) VALUES (2, 1, 0, 1, CAST(N'2020-04-12' AS Date))
INSERT [dbo].[ShiftWork] ([EID], [MORNING], [AFTERNOON], [EVENING], [WORDDAY]) VALUES (3, 0, 1, 1, CAST(N'2020-04-12' AS Date))
INSERT [dbo].[ShiftWork] ([EID], [MORNING], [AFTERNOON], [EVENING], [WORDDAY]) VALUES (4, 1, 1, 0, CAST(N'2020-04-12' AS Date))
INSERT [dbo].[ShiftWork] ([EID], [MORNING], [AFTERNOON], [EVENING], [WORDDAY]) VALUES (5, 1, 0, 1, CAST(N'2020-04-12' AS Date))
INSERT [dbo].[ShiftWork] ([EID], [MORNING], [AFTERNOON], [EVENING], [WORDDAY]) VALUES (6, 0, 1, 1, CAST(N'2000-04-15' AS Date))
INSERT [dbo].[StaffAcount] ([ID], [username], [pass]) VALUES (1, N'Vu', N'0')
INSERT [dbo].[StaffAcount] ([ID], [username], [pass]) VALUES (2, N'Dai', N'2')
INSERT [dbo].[StaffAcount] ([ID], [username], [pass]) VALUES (3, N'Linh', N'3')
INSERT [dbo].[WordTable] ([Id], [Name], [WordDate], [Morning], [Afternoon], [Night]) VALUES (1, N'Vu', CAST(N'2020-04-09' AS Date), 1, 0, 1)
INSERT [dbo].[WordTable] ([Id], [Name], [WordDate], [Morning], [Afternoon], [Night]) VALUES (2, N'Vu2', CAST(N'2020-04-09' AS Date), 0, 1, 0)
INSERT [dbo].[WordTable] ([Id], [Name], [WordDate], [Morning], [Afternoon], [Night]) VALUES (3, N'Vu3', CAST(N'2020-04-09' AS Date), 0, 1, 0)
USE [master]
GO
ALTER DATABASE [blueprints] SET  READ_WRITE 
GO
