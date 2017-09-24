USE [master]
GO
/****** Object:  Database [HocKHo]    Script Date: 9/24/2017 10:11:04 PM ******/
CREATE DATABASE [HocKHo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HocKHo', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\HocKHo.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HocKHo_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\HocKHo_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HocKHo] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HocKHo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HocKHo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HocKHo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HocKHo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HocKHo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HocKHo] SET ARITHABORT OFF 
GO
ALTER DATABASE [HocKHo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HocKHo] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [HocKHo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HocKHo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HocKHo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HocKHo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HocKHo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HocKHo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HocKHo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HocKHo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HocKHo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HocKHo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HocKHo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HocKHo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HocKHo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HocKHo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HocKHo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HocKHo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HocKHo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HocKHo] SET  MULTI_USER 
GO
ALTER DATABASE [HocKHo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HocKHo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HocKHo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HocKHo] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [HocKHo]
GO
/****** Object:  Table [dbo].[BaiHoc]    Script Date: 9/24/2017 10:11:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiHoc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenKHo] [nvarchar](250) NULL,
	[TenViet] [nvarchar](250) NULL,
 CONSTRAINT [PK_BaiHoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BaiKhoa]    Script Date: 9/24/2017 10:11:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiKhoa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoiKHo] [ntext] NULL,
	[TraLoiKHo] [ntext] NULL,
	[HoiViet] [ntext] NULL,
	[TraLoiViet] [ntext] NULL,
	[NoiDung] [ntext] NULL,
	[IDDanhMucCon] [int] NULL,
 CONSTRAINT [PK_BaiKhoa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CauHoi]    Script Date: 9/24/2017 10:11:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHoi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Hoi] [nvarchar](250) NULL,
	[TraLoi] [ntext] NULL,
	[IDDanhMucCon] [int] NULL,
 CONSTRAINT [PK_CauHoi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DamThoai]    Script Date: 9/24/2017 10:11:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DamThoai](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CauHoiKHo] [ntext] NULL,
	[TraLoiKHo] [ntext] NULL,
	[CauHoiViet] [ntext] NULL,
	[TraLoiViet] [ntext] NULL,
	[IDDanhMucCon] [int] NULL,
 CONSTRAINT [PK_DamThoai] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 9/24/2017 10:11:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenKHo] [nvarchar](250) NULL,
	[TenViet] [nvarchar](250) NULL,
	[IDBaiHoc] [int] NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMucCon]    Script Date: 9/24/2017 10:11:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucCon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](250) NULL,
	[IDDanhMuc] [int] NULL,
	[IDHinh] [int] NULL,
 CONSTRAINT [PK_DanhMucCon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DichKHoViet]    Script Date: 9/24/2017 10:11:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichKHoViet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KHo] [ntext] NULL,
	[Viet] [ntext] NULL,
	[IDDanhMucCon] [int] NULL,
 CONSTRAINT [PK_DichKHoViet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DichVietKHo]    Script Date: 9/24/2017 10:11:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVietKHo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Viet] [ntext] NULL,
	[KHo] [ntext] NULL,
	[IDDanhMucCon] [int] NULL,
 CONSTRAINT [PK_DichVietKHo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hinh]    Script Date: 9/24/2017 10:11:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hinh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenHinh] [nvarchar](250) NULL,
	[DuongDan] [ntext] NULL,
 CONSTRAINT [PK_Hinh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoiHayYDep]    Script Date: 9/24/2017 10:11:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoiHayYDep](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CauKHo] [ntext] NULL,
	[CauViet] [ntext] NULL,
	[IDBaiHoc] [int] NULL,
 CONSTRAINT [PK_LoiHayYDep] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LuyenTap]    Script Date: 9/24/2017 10:11:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuyenTap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoiKHo] [nvarchar](250) NULL,
	[HoiViet] [nvarchar](250) NULL,
	[TraLoiKHo] [ntext] NULL,
	[TraLoiViet] [ntext] NULL,
	[IDDanhMucCon] [int] NULL,
 CONSTRAINT [PK_LuyenTap] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TuVung]    Script Date: 9/24/2017 10:11:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuVung](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KHo] [nvarchar](250) NULL,
	[Viet] [nvarchar](250) NULL,
	[IDDanhMucCon] [int] NULL,
 CONSTRAINT [PK_TuVung] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[BaiKhoa]  WITH CHECK ADD  CONSTRAINT [FK_BaiKhoa_DanhMucCon] FOREIGN KEY([IDDanhMucCon])
REFERENCES [dbo].[DanhMucCon] ([ID])
GO
ALTER TABLE [dbo].[BaiKhoa] CHECK CONSTRAINT [FK_BaiKhoa_DanhMucCon]
GO
ALTER TABLE [dbo].[CauHoi]  WITH CHECK ADD  CONSTRAINT [FK_CauHoi_DanhMucCon] FOREIGN KEY([IDDanhMucCon])
REFERENCES [dbo].[DanhMucCon] ([ID])
GO
ALTER TABLE [dbo].[CauHoi] CHECK CONSTRAINT [FK_CauHoi_DanhMucCon]
GO
ALTER TABLE [dbo].[DamThoai]  WITH CHECK ADD  CONSTRAINT [FK_DamThoai_DanhMucCon] FOREIGN KEY([IDDanhMucCon])
REFERENCES [dbo].[DanhMucCon] ([ID])
GO
ALTER TABLE [dbo].[DamThoai] CHECK CONSTRAINT [FK_DamThoai_DanhMucCon]
GO
ALTER TABLE [dbo].[DanhMuc]  WITH CHECK ADD  CONSTRAINT [FK_DanhMuc_BaiHoc] FOREIGN KEY([IDBaiHoc])
REFERENCES [dbo].[BaiHoc] ([ID])
GO
ALTER TABLE [dbo].[DanhMuc] CHECK CONSTRAINT [FK_DanhMuc_BaiHoc]
GO
ALTER TABLE [dbo].[DanhMucCon]  WITH CHECK ADD  CONSTRAINT [FK_DanhMucCon_DanhMuc] FOREIGN KEY([IDDanhMuc])
REFERENCES [dbo].[DanhMuc] ([ID])
GO
ALTER TABLE [dbo].[DanhMucCon] CHECK CONSTRAINT [FK_DanhMucCon_DanhMuc]
GO
ALTER TABLE [dbo].[DichKHoViet]  WITH CHECK ADD  CONSTRAINT [FK_DichKHoViet_DanhMucCon] FOREIGN KEY([IDDanhMucCon])
REFERENCES [dbo].[DanhMucCon] ([ID])
GO
ALTER TABLE [dbo].[DichKHoViet] CHECK CONSTRAINT [FK_DichKHoViet_DanhMucCon]
GO
ALTER TABLE [dbo].[DichVietKHo]  WITH CHECK ADD  CONSTRAINT [FK_DichVietKHo_DanhMucCon] FOREIGN KEY([IDDanhMucCon])
REFERENCES [dbo].[DanhMucCon] ([ID])
GO
ALTER TABLE [dbo].[DichVietKHo] CHECK CONSTRAINT [FK_DichVietKHo_DanhMucCon]
GO
ALTER TABLE [dbo].[LoiHayYDep]  WITH CHECK ADD  CONSTRAINT [FK_LoiHayYDep_BaiHoc] FOREIGN KEY([IDBaiHoc])
REFERENCES [dbo].[BaiHoc] ([ID])
GO
ALTER TABLE [dbo].[LoiHayYDep] CHECK CONSTRAINT [FK_LoiHayYDep_BaiHoc]
GO
ALTER TABLE [dbo].[LuyenTap]  WITH CHECK ADD  CONSTRAINT [FK_LuyenTap_DanhMucCon] FOREIGN KEY([IDDanhMucCon])
REFERENCES [dbo].[DanhMucCon] ([ID])
GO
ALTER TABLE [dbo].[LuyenTap] CHECK CONSTRAINT [FK_LuyenTap_DanhMucCon]
GO
ALTER TABLE [dbo].[TuVung]  WITH CHECK ADD  CONSTRAINT [FK_TuVung_DanhMucCon] FOREIGN KEY([IDDanhMucCon])
REFERENCES [dbo].[DanhMucCon] ([ID])
GO
ALTER TABLE [dbo].[TuVung] CHECK CONSTRAINT [FK_TuVung_DanhMucCon]
GO
USE [master]
GO
ALTER DATABASE [HocKHo] SET  READ_WRITE 
GO
