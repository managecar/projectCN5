USE [master]
GO
/****** Object:  Database [ManageCar]    Script Date: 6/23/2019 9:35:56 AM ******/
CREATE DATABASE [ManageCar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ManageCar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ManageCar.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ManageCar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ManageCar_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ManageCar] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ManageCar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ManageCar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ManageCar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ManageCar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ManageCar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ManageCar] SET ARITHABORT OFF 
GO
ALTER DATABASE [ManageCar] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ManageCar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ManageCar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ManageCar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ManageCar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ManageCar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ManageCar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ManageCar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ManageCar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ManageCar] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ManageCar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ManageCar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ManageCar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ManageCar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ManageCar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ManageCar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ManageCar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ManageCar] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ManageCar] SET  MULTI_USER 
GO
ALTER DATABASE [ManageCar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ManageCar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ManageCar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ManageCar] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ManageCar] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ManageCar]
GO
/****** Object:  Table [dbo].[tblAccount]    Script Date: 6/23/2019 9:35:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAccount](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[Role] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblAccount] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblBrand]    Script Date: 6/23/2019 9:35:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBrand](
	[BrandID] [nvarchar](50) NOT NULL,
	[BrandName] [nvarchar](50) NULL,
	[DateContact] [date] NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblBrand] PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCar]    Script Date: 6/23/2019 9:35:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCar](
	[CarID] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[Description] [nvarchar](max) NULL,
	[BrandID] [nvarchar](50) NULL,
	[Date] [date] NULL,
	[isSold] [bit] NULL,
	[ImportID] [int] NULL,
 CONSTRAINT [PK_tblCar] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCustomer]    Script Date: 6/23/2019 9:35:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
 CONSTRAINT [PK_tblCustomer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblExport]    Script Date: 6/23/2019 9:35:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblExport](
	[ExportID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Note] [nvarchar](max) NULL,
	[Price] [float] NULL,
	[IDCar] [nvarchar](50) NULL,
	[ID] [int] NULL,
	[Username] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblExport] PRIMARY KEY CLUSTERED 
(
	[ExportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblImport]    Script Date: 6/23/2019 9:35:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblImport](
	[ImportID] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NULL,
	[Date] [date] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblImport] PRIMARY KEY CLUSTERED 
(
	[ImportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[tblAccount] ([Username], [Password], [Fullname], [Address], [Phone], [Email], [Birthday], [Role]) VALUES (N'hoangson', N'1', N'Dang Hoang Son', N'HCM', N'0334333633', N'danghoangson68@gmail.com', CAST(N'1998-10-20' AS Date), N'Manager')
INSERT [dbo].[tblAccount] ([Username], [Password], [Fullname], [Address], [Phone], [Email], [Birthday], [Role]) VALUES (N'lehuy', N'1', N'Nguyen Le Huy', N'HCM', N'1231231230', N'nguyenlehuy@gmail.com', CAST(N'1998-01-01' AS Date), N'Import')
INSERT [dbo].[tblAccount] ([Username], [Password], [Fullname], [Address], [Phone], [Email], [Birthday], [Role]) VALUES (N'mama', N'1', N'Me Son', N'TN', N'0123658947', N'meson@gmail.com', CAST(N'1960-03-03' AS Date), N'Export')
INSERT [dbo].[tblBrand] ([BrandID], [BrandName], [DateContact], [Email], [Address], [Phone], [Note]) VALUES (N'HD', N'HonDa', CAST(N'2011-01-01' AS Date), N'honda@gmail.com', N'Japan', N'0123654789', NULL)
INSERT [dbo].[tblBrand] ([BrandID], [BrandName], [DateContact], [Email], [Address], [Phone], [Note]) VALUES (N'KIA', N'Kia', CAST(N'2006-03-04' AS Date), N'kia@gmail.com', N'Korean', N'3265987410', NULL)
INSERT [dbo].[tblBrand] ([BrandID], [BrandName], [DateContact], [Email], [Address], [Phone], [Note]) VALUES (N'LX', N'Lexus', CAST(N'2013-09-05' AS Date), N'lexus@gmail.com', N'Japan', N'1236547890', NULL)
INSERT [dbo].[tblBrand] ([BrandID], [BrandName], [DateContact], [Email], [Address], [Phone], [Note]) VALUES (N'SZK', N'Suzuki', CAST(N'2015-02-07' AS Date), N'suzuki@gmail.com', N'Japan', N'0123654789', NULL)
INSERT [dbo].[tblCar] ([CarID], [Model], [Price], [Description], [BrandID], [Date], [isSold], [ImportID]) VALUES (N'1', N'Civic', 700, N'Honda Civic 2008 MT', N'HD', CAST(N'2011-06-02' AS Date), 1, 1)
INSERT [dbo].[tblCar] ([CarID], [Model], [Price], [Description], [BrandID], [Date], [isSold], [ImportID]) VALUES (N'2', N'CRV', 500, N'Honda CRV 2.4 AT', N'HD', CAST(N'2011-06-02' AS Date), 0, 1)
INSERT [dbo].[tblCar] ([CarID], [Model], [Price], [Description], [BrandID], [Date], [isSold], [ImportID]) VALUES (N'3', N'Civic', 750, N'Honda Civic 300T', N'HD', CAST(N'2011-05-03' AS Date), 0, 1)
INSERT [dbo].[tblCar] ([CarID], [Model], [Price], [Description], [BrandID], [Date], [isSold], [ImportID]) VALUES (N'4', N'RX-300T', 1000, N'Lexus RX-300T CVT', N'LX', CAST(N'2012-09-09' AS Date), 0, 2)
INSERT [dbo].[tblCar] ([CarID], [Model], [Price], [Description], [BrandID], [Date], [isSold], [ImportID]) VALUES (N'5', N'Swift', 800, N'Swift GLX', N'SZK', CAST(N'2012-03-02' AS Date), 0, 2)
SET IDENTITY_INSERT [dbo].[tblCustomer] ON 

INSERT [dbo].[tblCustomer] ([ID], [Fullname], [Phone], [Address], [Birthday]) VALUES (1, N'n', N'0123654789', N'm', CAST(N'2011-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[tblCustomer] OFF
SET IDENTITY_INSERT [dbo].[tblImport] ON 

INSERT [dbo].[tblImport] ([ImportID], [Quantity], [Date], [Note]) VALUES (1, 3, CAST(N'2015-05-05' AS Date), N'Limited version')
INSERT [dbo].[tblImport] ([ImportID], [Quantity], [Date], [Note]) VALUES (2, 5, CAST(N'2013-04-07' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[tblImport] OFF
ALTER TABLE [dbo].[tblCar]  WITH CHECK ADD  CONSTRAINT [FK_tblCar_tblBrand] FOREIGN KEY([BrandID])
REFERENCES [dbo].[tblBrand] ([BrandID])
GO
ALTER TABLE [dbo].[tblCar] CHECK CONSTRAINT [FK_tblCar_tblBrand]
GO
ALTER TABLE [dbo].[tblCar]  WITH CHECK ADD  CONSTRAINT [FK_tblCar_tblImport] FOREIGN KEY([ImportID])
REFERENCES [dbo].[tblImport] ([ImportID])
GO
ALTER TABLE [dbo].[tblCar] CHECK CONSTRAINT [FK_tblCar_tblImport]
GO
ALTER TABLE [dbo].[tblExport]  WITH CHECK ADD  CONSTRAINT [FK_tblExport_tblAccount] FOREIGN KEY([Username])
REFERENCES [dbo].[tblAccount] ([Username])
GO
ALTER TABLE [dbo].[tblExport] CHECK CONSTRAINT [FK_tblExport_tblAccount]
GO
ALTER TABLE [dbo].[tblExport]  WITH CHECK ADD  CONSTRAINT [FK_tblExport_tblCar] FOREIGN KEY([IDCar])
REFERENCES [dbo].[tblCar] ([CarID])
GO
ALTER TABLE [dbo].[tblExport] CHECK CONSTRAINT [FK_tblExport_tblCar]
GO
ALTER TABLE [dbo].[tblExport]  WITH CHECK ADD  CONSTRAINT [FK_tblExport_tblCustomer] FOREIGN KEY([ID])
REFERENCES [dbo].[tblCustomer] ([ID])
GO
ALTER TABLE [dbo].[tblExport] CHECK CONSTRAINT [FK_tblExport_tblCustomer]
GO
/****** Object:  StoredProcedure [dbo].[LoginApp]    Script Date: 6/23/2019 9:35:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LoginApp](@username as nvarchar(50), @password as nvarchar(50))
AS
BEGIN
	select Role from tblAccount where Username = @username and Password = @password
END

GO
USE [master]
GO
ALTER DATABASE [ManageCar] SET  READ_WRITE 
GO
