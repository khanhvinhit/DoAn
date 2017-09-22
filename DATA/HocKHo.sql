USE [master]
GO
/****** Object:  Database [HocKHo]    Script Date: 9/22/2017 10:21:15 AM ******/
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
/****** Object:  Table [dbo].[BaiHoc]    Script Date: 9/22/2017 10:21:15 AM ******/
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
/****** Object:  Table [dbo].[BaiKhoa]    Script Date: 9/22/2017 10:21:15 AM ******/
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
/****** Object:  Table [dbo].[CauHoi]    Script Date: 9/22/2017 10:21:15 AM ******/
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
/****** Object:  Table [dbo].[DamThoai]    Script Date: 9/22/2017 10:21:15 AM ******/
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
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 9/22/2017 10:21:15 AM ******/
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
/****** Object:  Table [dbo].[DanhMucCon]    Script Date: 9/22/2017 10:21:15 AM ******/
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
/****** Object:  Table [dbo].[DichKHoViet]    Script Date: 9/22/2017 10:21:15 AM ******/
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
/****** Object:  Table [dbo].[DichVietKHo]    Script Date: 9/22/2017 10:21:15 AM ******/
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
/****** Object:  Table [dbo].[Hinh]    Script Date: 9/22/2017 10:21:15 AM ******/
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
/****** Object:  Table [dbo].[LoiHayYDep]    Script Date: 9/22/2017 10:21:15 AM ******/
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
/****** Object:  Table [dbo].[LuyenTap]    Script Date: 9/22/2017 10:21:15 AM ******/
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
/****** Object:  Table [dbo].[TuVung]    Script Date: 9/22/2017 10:21:15 AM ******/
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
SET IDENTITY_INSERT [dbo].[BaiHoc] ON 

INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (1, N'JƠNAU MƠ KHAR KƠHO', NULL)
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (2, N'KỜP KHA', N'ĐẾM SỐ')
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (3, N'TU| TƠNGAI', N'THỜI GIAN')
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (4, N'LÙP MƠ HƠ', N'HỎI VÀ TRẢ LỜI')
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (5, N'NIAM SA', N'XIN CHÀO')
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (6, N'YAL BROA| LƠH', N'GIỚI THIỆU CÔNG VIỆC')
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (7, NULL, N'NGỮ PHÁP - DANH TỪ')
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (8, N'JƠI NÒI K’BIM', NULL)
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (9, N'K’BIM MÌNG GEH BÀR NĂ KÒN', NULL)
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (10, N'HÌU ƠM, SUƠN CHI', NULL)
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (11, NULL, N'NGỮ PHÁP')
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (12, N'YAL JƠNAU BÒN LƠGAR', NULL)
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (13, N'CAU PUÀ BÒN', NULL)
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (14, N'CHỜ HỜP TÀM BROA| LƠH', NULL)
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (15, NULL, N'NGỮ PHÁP - ĐỘNG TỪ')
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (16, N'BƠSRAM WƠL', NULL)
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (17, N'MÌU CÀL', NULL)
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (18, N'BRÊ MƠ TRỒ TIAH', NULL)
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (19, N'TAM CHI TƠNG GƠS BRÊ', NULL)
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (20, NULL, N'NGỮ PHÁP - ĐỘNG TỪ(tt)')
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (21, N'BƠTÀO BÒN CHÀI RƠGƠI', NULL)
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (22, N'BƠTA CHÀI RƠGƠI BƠH YAU', NULL)
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (23, N'NGAI CHƠ BƠNÀR TIAH KƠN BƠNƠM', NULL)
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (24, NULL, N'NGỮ PHÁP - TÍNH TỪ')
INSERT [dbo].[BaiHoc] ([ID], [TenKHo], [TenViet]) VALUES (25, N'DÀ LƠGAR VIỆT NAM', NULL)
SET IDENTITY_INSERT [dbo].[BaiHoc] OFF
SET IDENTITY_INSERT [dbo].[BaiKhoa] ON 

INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (1, NULL, NULL, NULL, NULL, N'A B { C D Đ E Ê G H I J K L M N N O Ô Ơ P R S T U Ư W Y a b [ c d đ e ê g h i j k l m n n\ o ô ơ p r s t u ư w y', 1)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (2, NULL, NULL, NULL, NULL, N'A E Ê I O Ô Ơ U Ư', 2)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (3, NULL, NULL, NULL, NULL, N'B { C D Đ G H J K L M N N| P R S T W Y', 3)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (4, NULL, NULL, NULL, NULL, N'Bl Br Ch Cr Dr Gl Gr Jr Kh Kl Kr Mb Mh Mp Mr Nd Nđ Ng Nr Pl Pr Sr Th Tr', 4)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (5, NULL, NULL, NULL, NULL, N'Mbl Mpr Ndr Ngk Ngg', 5)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (6, NULL, NULL, NULL, NULL, N'Nguyên âm ngắn: nguyên âm có dấu  \ .Ví dụ: sra\ (giấy). \n Phụ âm xát: phụ âm h ở cuối từ. Ví dụ: geh (có).', 6)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (7, NULL, NULL, NULL, NULL, N'Thanh cao (ngang): không ghi dấu. Ví dụ: do (đây). \n Thanh thấp: ghi dấu huyền ( ` ). Ví dụ: dà (nước).', 7)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (8, N'Niam sa\.', N'Niam sa\.', N'Xin chào.', N'Xin chào.', NULL, 24)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (9, N'Mê pràn kơldang sơl?', N'Ừn ngài, pràn đau.', N'Anh có khỏe không?', N'Cám ơn, cũng khỏe.', NULL, 24)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (10, N'Mê ntềng lòt gen? Ntềng lòt gơ jal ir?', N'Ơi! An\ lòt trơgùm tàm sàh.', N'Anh đi đâu đó? Đi đâu mà vội vàng thế?', N'À! Mình đi họp ở xã.', NULL, 24)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (11, N'Dan jà mut tàm hìu hùc dà.', N'Dan sa\ an\ ờ ru, kơp ngài ndai. Ngac yơ!', N'Mời vào nhà uống nước.', N'Xin lỗi, mình bận quá, hẹn lúc khác. Tạm biệt!', NULL, 24)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (12, N'N|CAU?', NULL, N'AI?', NULL, NULL, 26)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (13, N'Khai hơ\ làh cau lơi?', N'Khai hơ\ làh K’Bik.', N'Anh ấy là ai?', N'Anh ấy là K’Bik.', NULL, 26)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (14, N'LƠH BROA| LƠI? (NĐAN BROA| LƠH?)', NULL, N'LÀM NGHỀ GÌ?', NULL, NULL, 26)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (15, N'K’Bik lơh broa\ lơi?', N'K’Bik lơh làng.', N'K’Bik làm nghề gì?', N'K’Bik là nông dân.', NULL, 26)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (16, N'ƠM ANIH LƠI?', NULL, N'Ở ĐÂU?', NULL, NULL, 26)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (17, N'K’Bik ơm anih lơi?', N'Khai ơm tàm [òn B.', N'K’Bik ở đâu?', N'Anh ấy ở thôn B.', NULL, 26)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (18, N'GAM LƠH N|CHI LƠI?', NULL, N'ĐANG LÀM GÌ?', NULL, NULL, 26)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (19, N'K’Bik gam lơh n\chi lơi?', N'K’Bik gam po\ ù.', N'K’Bik đang làm gì?', N'K’Bik đang cuốc đất.', NULL, 26)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (20, NULL, NULL, NULL, NULL, N'Danh từ riêng là danh từ để gọi tên người, tên cơ quan, tổ chức cũng như các địa danh: K’Bim, Liêng Hot Ha Nam, Đa Lach, Lang Biang, … Danh từ riêng chỉ biểu thị một sự vật đơn nhất và là tên gọi nên phải viết hoa.', 31)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (21, NULL, NULL, NULL, NULL, N'Các danh từ còn lại được chia thành mấy nhóm như sau:', 31)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (22, NULL, NULL, NULL, NULL, N'Danh từ khối và danh từ đơn vị', 31)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (23, NULL, NULL, NULL, NULL, N'Đây là sự đối lập trong các ngôn ngữ đơn lập. bởi vì những từ như hìu (nhà), piang (cơm), ka (cá), mat (mắt), … ít khi đi với số từ (dùng để định hướng), muốn đếm thì phải có danh từ đơn vị đi kèm;', 31)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (24, NULL, NULL, NULL, NULL, N'Phàn nơm so (tám con chó)', 31)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (25, NULL, NULL, NULL, NULL, N'Puan nơm hìu (bốn ngôi nhà)', 31)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (26, NULL, NULL, NULL, NULL, N'Bàr na\ cau ling (hai người lính)', 31)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (27, NULL, NULL, NULL, NULL, N'Ngoài từ nơm, na\, trong tiếng Cơ Ho còn có những danh từ đơn vị chỉ sự vật', 31)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (28, NULL, NULL, NULL, NULL, N'Có tính chất mỏng: pang (tấm, lá, quyển), sự vật có hình cầu: plai (trái) cho thực vật, nai (hòn, hạt, cục) cho vật nhỏ hơn, … Những từ chỉ đơn vị đo lường: kí (kg), lit (lít), sàu (sào), tal (cánh tay), làs (sải), lồ (đám), … và các danh từ chỉ vật đựng đều có giá trị ngữ pháp giống như danh từ đơn vị:', 31)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (29, NULL, NULL, NULL, NULL, N'Dùl nai prìt (một trái chuối)', 31)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (30, NULL, NULL, NULL, NULL, N'bàl lồ mìr (hai đám rẫy)', 31)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (31, NULL, NULL, NULL, NULL, N'Danh từ phiếm định', 31)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (32, NULL, NULL, NULL, NULL, N'Những từ như n\cau (ai), n\chi (gì), ntềng (đâu), lơi (nào) thường đi kèm với từ chỉ không gian và thời gian, nđờ (bao nhiêu) … được sử dụng trong câu hỏi và thường đặt đầu câu.', 31)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (33, NULL, NULL, NULL, NULL, N'N|cau trơyang bơsram?Ai chăm học?', 31)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (34, NULL, NULL, NULL, NULL, N'N|chi do? Cái gì đây?', 31)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (35, NULL, NULL, NULL, NULL, N'Cau lơi lơh mê? Người nào đánh cháu vậy?', 31)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (36, NULL, NULL, NULL, NULL, N'Ngoài ra còn có hàng loạt từ kiểu như: ngkàr (chừng bao nhiêu), ntềng (đâu), mbơh (từ đâu), …', 31)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (37, NULL, NULL, NULL, NULL, N'K’Brôp làh bàp K’Bim dê. Mè K’Bim làh mò Ka Dìm. Ồng mò geh puan na\ kòn. K’Bim làh kòn tơmhoa.', 32)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (38, NULL, NULL, NULL, NULL, N'Làng bol tàm [òn làh di jơi nòi mơ K’Brôp lơm. K’Brit mơ Ka Hai làh oh ồng K’Brôp. K’Brit làh wa K’Bim dê, Ka Hai làh mlo\ K’Bim. Bau ùr K’Bim làh Ka Dồm. Kòn klau bol khai dê làh K’Brừm, kòn ùr làh Ka Dôp. Ala\ oh kòn K’Bim dê tus còp ồng mò sùm.', 32)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (39, NULL, NULL, NULL, NULL, N'K’Bim mìng geh bàr nă kòn: K’Brừm mơ Ka Dôp.', 37)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (40, NULL, NULL, NULL, NULL, N'Nam do, K’Brừm neh 13 sơnam. Oh bơsram adu\ 8 Klờng trung học cơ sở tàm sàh. K’Brừm trơyang bơsram. Tàm klờng bơsram, K’Brừm jak dong kờl gơp bơyô, oh kờn\ ngan ala\ bơta lơh bơdìh.', 37)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (41, NULL, NULL, NULL, NULL, N'Oh ùr tờm K’Brừm là Ka Dôp. Nam do, Ka Dôp neh jơt sơnam. Oh pa mut', 37)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (42, NULL, NULL, NULL, NULL, N'Bơsram adu\ pram klờng tiểu học tàm [òn. Ka Dôp bơsram jak rơlau K’Brừm, sùm di tiờng kờnom bơsram jak. Ka Dôp đơs crih ròm, tơnia chài, trơyang lơh broa\ Đội. Ka Dôp trơyang lơh broa\ hìu, dong kờl mè.', 37)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (43, NULL, NULL, NULL, NULL, N'Hiu K’Bim anàng, lơngit mơ sàng goh, geh adu\ nac, hìu tru\ sa, đam ơn phan sa.', 42)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (44, NULL, NULL, NULL, NULL, N'Hìu gam geh kơ[àng, jơnờng nggui ho kòn in nggui bơsram, geh jơnờng bic, bềl làng nggui n\ô trơnờm. Hìu K’Bim geh àng đèng, geh tivi sền.', 42)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (45, NULL, NULL, NULL, NULL, N'Suờn hìu K’Bim anàng ngan, tam tơl tờm chi. Gùl dar suơn tam tờm pơnat, tờm bơ. Hơ ngkời hìu làh tờm pơồs, bar pe tờm plai can\, dùl wer ù tam biap sa pah nam. Dut suơn làh mpung prift, mpung tào, mpung rơpoal. Tàm suơn K’Bim tam brơ lu\ tờm ka phe. Suơn hìu K’Bim tu\ lơi krung geh biap, plai lơh phan sa.', 42)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (46, NULL, NULL, NULL, NULL, N'Danh từ chỉ ngôi', 47)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (47, NULL, NULL, NULL, NULL, N'Sắc thái - Giới - Ngôi thứ nhất - Ngôi thứ 2 - Ngôi thứ 3', 47)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (48, NULL, NULL, NULL, NULL, N'Trung hòa - Nam - an\ - mê - khai (gơ)', 47)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (49, NULL, NULL, NULL, NULL, N'Trung hòa- Nữ - - ai', 47)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (50, NULL, NULL, NULL, NULL, N'Trang trọng - không phân biệt - he (hi) -he (i/di) - (Người/ vật)', 47)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (51, NULL, NULL, NULL, NULL, N'Với số nhiều chỉ cần thêm từ bol (chúng) đằng trước là đủ: bol an\ (chúng tôi), bol mê (các anh)', 47)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (52, NULL, NULL, NULL, NULL, N'Danh từ chỉ định', 47)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (53, NULL, NULL, NULL, NULL, N'Thường đi sau của ngữ danh từ, dùng để định vị cho ngữ đó trong không gian và thời gian:', 47)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (54, NULL, NULL, NULL, NULL, N'Sra\ do (sách này)', 47)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (55, NULL, NULL, NULL, NULL, N'Kon rơpu hơ\ (con trâu ấy)', 47)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (56, NULL, NULL, NULL, NULL, N'Ngai do (hôm này)', 47)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (57, NULL, NULL, NULL, NULL, N'Ngai ne (ngày kia)', 47)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (58, NULL, NULL, NULL, NULL, N'Cau gen (người đó)', 47)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (59, NULL, NULL, NULL, NULL, N'Tàm kafl gờm kòi pa tus, hìu nha\ ồng K’Brôp tàm tìp mat jơh tơ\l na\ kòn sau.', 48)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (60, NULL, NULL, NULL, NULL, N'Ồng jà ntum jơi đềt mềr tàm [òn tus n\ô trơnờm, iat ồng yal yau [òn lơgar he bơh rài yau. Tềng bơnha\ ồs tơ gùl hìu, ồng K’Brôp bơne\ bơnài yal. Lài òr, [òn A rơ[ah ngan. Làng bol ờ geh chi lơi sa, kòn se ờ geh lờt bơsram. Trồ ngai, prang khiak. Trồ mang, jơngo klê. Làng bol lòt jơh tàm brê mus mìr, lơh mìr ờ tơl sa.', 48)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (61, NULL, NULL, NULL, NULL, N'Tu\ do, rài kis neh gơ tàm gơl.', 48)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (62, NULL, NULL, NULL, NULL, N'K’Brèt làh cau puà [òn oa\ ngan cau kờn\ gơboh, git adat. Cau puà [òn git', 53)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (63, NULL, NULL, NULL, NULL, N'Rơcang rài kis làng bol. Dùl nhai geh dùl dơ\ trơgùm [òn. Jơh tơl na\ cau lòt trơgùm gal tơl. K’Brèt, cau puà [òn, bơyai broa\ tam phan bal K’Bim mơ K’Bik. Kà phe gơ mù, ờ tam bơtơl tài kà phe mơya ban\ sreh sơbì. K’Breft ràc bơtê ala\ cau pal tam bơtơl chi phan sa: tơngời, kòi, khoah… K’Brèt đơs: ‘’Lài jơh pal ròng iar, ada, sur. Bàr pe ngai tai rơp trơgùm làng bơyai broa\ lơh sa’’.', 53)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (64, NULL, NULL, NULL, NULL, N'Ơm tiah kơh bơnơm, sre dà ờ rà. Tàm mìr, làng bol tam phan sa: tơngời, khoah, bùm lau, … Jơh [òn, hìu lơi krung tam kà phe. Geh dà lơgar pà ù tiah, oh mi jơh pràn lơh broa\. Làng bol tac kà phe blơi phe. Tu\ do, oh mi tàm [òn neh tơl sa đau. Trồ ngai geh dà trơlung mrềt nhừm. Trồ mang àng đèng lơr tơl hìu, geh tivi sền iat yal brê, đơs crih.', 58)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (65, NULL, NULL, NULL, NULL, N'Động từ tình thái', 63)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (66, NULL, NULL, NULL, NULL, N'Đây là nhóm động từ biểu thị ý nghĩa tình thái (trạng thái, ý chí, thái độ), thường đứng đầu ngữ và có bổ ngữ là động từ: neh (đã), gam (còn), ơm (ở, đang), kung (cũng), kờn\ (muốn), mong (định), crap rơcang (sẵn sàng),…', 63)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (67, NULL, NULL, NULL, NULL, N'Khai khin lơh broa\ kan.', 63)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (68, NULL, NULL, NULL, NULL, N'Nó dám làm việc khó.', 63)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (69, NULL, NULL, NULL, NULL, N'An\ mong lòt Hà Nôi.', 63)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (70, NULL, NULL, NULL, NULL, N'Tôi định đi Hà Nội.', 63)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (71, NULL, NULL, NULL, NULL, N'Động từ vận động có hướng: mut (vào), lik (ra), gul (lên), mù (xuống), gan (qua), tus (đến),…', 63)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (72, NULL, NULL, NULL, NULL, N'An\ lik tàm [lang.', 63)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (73, NULL, NULL, NULL, NULL, N'Tôi ra sân.', 63)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (74, NULL, NULL, NULL, NULL, N'Cau kra tus tàm hìu bơsram.', 63)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (75, NULL, NULL, NULL, NULL, N'Người già đến trường.', 63)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (76, NULL, NULL, NULL, NULL, N'Khác với động từ vận động có hướng trong tiếng Việt, các động từ vận động có hướng trong tiếng Cơ Ho đòi hỏi phải có giới từ tàm.', 63)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (77, NULL, NULL, NULL, NULL, N'Động từ tồn tại là nhóm động từ có những nét ngữ pháp độc đáo riêng. Chẳng hạn từ geh (có) trong tiếng Cơ Ho, khi đảo vị trí các bổ tố nhưng ý nghĩa của câu vẫn hiểu được như nhau:', 63)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (78, NULL, NULL, NULL, NULL, N'An\ geh pria\ tàm kơl dung.', 63)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (79, NULL, NULL, NULL, NULL, N'Pria\ geh tàm kơl dung.', 63)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (80, NULL, NULL, NULL, NULL, N'Tàm kơl dung geh pria\.', 63)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (81, NULL, NULL, NULL, NULL, N'Kowl dung geh pria\.', 63)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (82, NULL, NULL, NULL, NULL, N'Lớp động từ này không nhiều: geh (có), gam (còn), jơh (hết), roh (mất),…', 63)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (83, NULL, NULL, NULL, NULL, N'Ngai òr, geh mìu dờng, mìu jơh ngai. Dà sòr ko\ gơ pơrdô jơh kù, rơnu\ tàm mìr, gơ pơrdô jơh sur, iar làng bol dê, gơkua gơ cò jờh  tờm chi tam. Tàm ala\ nam do òr, miu càl ờ diơng, rà mìu, mìu dờng, mìu jit mìu jir, dà sòr ko\ aniai phan sa. Ngai tơngai gel duêt, tờm chi ờ dờng. Mhual jơngo, trồ mrềt ngan. Geh ngai càl khồm pràn be rơbut. Mus kơl brê dơr gen dà sòr ko\ rơp hòr tih rà rơlau. Mìu càl ờ niam, broa\ lơh sa ờ gơjềng, gen rờp jơgloh, ờ geh hìu ơm.', 66)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (84, NULL, NULL, NULL, NULL, N'Brê làh anih mơ, kis gơs mơ gơjềng tơng guh rà jơi phan brê dê; ala\ jơi phan brê be so rơhau, jùn, prò, … ala\ jơi sềm, jơi kis tàm dà be ka ti, ka,… Brê cang kìng dra\ krơyan rơbut bràs, dra\ dà jroh siar ù, grap gàr ù tiah, tơng guh bơtơl m[ùr ù tiah in, bơh hơ\ ai chi tam in oa\ plai đo.', 71)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (85, NULL, NULL, NULL, NULL, N'Brê gàr dà mơ lơh croh dà gơ hờr niam, kơr yan gơko\ dà sòr. Brê làh jơtài dà lơgar. Bol he pal bơtơl pràn grap gàr brê, grap gàr trồ tiah.', 71)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (86, NULL, NULL, NULL, NULL, N'Ngai do, cán bộ lâm nghiệp bơh kơnhuàl tus tàm [òn yal bơto lơh sra\ pơ àr dờp ù, bowta tam brê làng bol in. Cán bộ lâm nghiệp sơnđio mbe lơh rơwah kòn chi, dờp kòn chi, sơnđio pơlam cròng gùng tam brê, bơta grap gàr brê. Cán bộ lâm sơnđio bơta grap gàr brê, rơcang ồs sa brê. Tơl na\ cau iat, ntềng lơi ờ hềt loh gen lùp wơl, cán bộ sơnđio pơlam tai loh rơlau. Bơh ndo, làng bol tàm [òn geh gơ bơtơl broa\ lơh pa. {òn làng tàm jào broa\ làng lơh bal. Cau ờ tam gen lòt sơng ka, grap gảr brê.', 76)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (87, NULL, NULL, NULL, NULL, N'Động từ cảm nghĩ, tình cảm', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (88, NULL, NULL, NULL, NULL, N'An\ git khai.', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (89, NULL, NULL, NULL, NULL, N'Tôi biết nó.', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (90, NULL, NULL, NULL, NULL, N'Me gơboh mơ kòn.', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (91, NULL, NULL, NULL, NULL, N'Mẹ yêu con.', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (92, NULL, NULL, NULL, NULL, N'Khai kah bau.', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (93, NULL, NULL, NULL, NULL, N'Nó nhớ vợ.', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (94, NULL, NULL, NULL, NULL, N'Các trạng từ thành ngữ chỉ mức độ thường được sử dụng trong kết hợp với các động từ nói trên.', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (95, NULL, NULL, NULL, NULL, N'Đồng từ vô tác', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (96, NULL, NULL, NULL, NULL, N'Đấy là loại động từ không có bổ ngữ đối tượng nên trong kết hợp ngữ pháp thường chỉ có bổ ngữ địa điểm, thời gian, phương tiện: bic (nằm. ngủ), par (bay), rơlô (nghỉ),…', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (97, NULL, NULL, NULL, NULL, N'Oh gam bic.', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (98, NULL, NULL, NULL, NULL, N'Cháu đang ngủ.', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (99, NULL, NULL, NULL, NULL, N'Bol khai bic tàm brê.', 81)
GO
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (100, NULL, NULL, NULL, NULL, N'Họ ngủ trong rừng.', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (101, NULL, NULL, NULL, NULL, N'Động từ tác động', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (102, NULL, NULL, NULL, NULL, N'Đấy là nhóm động từ phong phú nhất. Đặc điểm của loại động từ này là về mặt ý nghĩa nó luôn luôn làm rõ: ai là chủ thể hoạt động, ai là đối tượng hành động, vì thế việc đảo trận tự các yếu tố là không thể được.', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (103, NULL, NULL, NULL, NULL, N'Me n\ô dà.', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (104, NULL, NULL, NULL, NULL, N'Mẹ uống nước.', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (105, NULL, NULL, NULL, NULL, N'Oh sền sra\.', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (106, NULL, NULL, NULL, NULL, N'Em đọc sách.', 81)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (107, NULL, NULL, NULL, NULL, N'{òn jà hòi pơlam bơtào [òn chài rơgơi. Tàm [òn, cau lơi krung git ala\ jơnau krơnuat gơs [òn chài rơgơi. Cau lơi krung wa\ pal lơh broa\ lơi làng geh làh [òn chài rơgơi. Pal git ngui sa sàng goh, lơh jơh [òn in sàng goh. Pal git rơcang broa\ lơh, dong kờl bal tàm ala\ broa\ lơh, phan ròng siam. Ờ di lơh bơta ờ diơng, ờ jat jơnau cau iơh chồ. Ờ geh cau lơi chu jrào phiơn, cit ma túy. Ờ jat bơta pin gời tai.', 82)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (108, NULL, NULL, NULL, NULL, N'Hìu nha\ K’Bim neh geh cau pồ làh hìu nhă chài rơgơi. Oă hìu krung geh dờp lafh hìu nha\ chài rơgơi sơl.', 82)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (109, NULL, NULL, NULL, NULL, N'Ala\ rơnàng [òn làng kòn cau Lâm Đồng (Kơho, Mà, Cru) neh lời wơl tơ rài tơ nơ\ tơng guh tờm bơta chài rơgơi bơh yau mơ oa\ git nđờ.', 87)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (110, NULL, NULL, NULL, NULL, N'Tàm bau yô ùr klau dê làh dùl ngai chờ jơh ala\ [òn. Jơi nòi ngài rềp tàm pà bal bơta ram gơboh bàr na\. Cau kra [òn ala\ mat bàr hìu nha\ yal tơng git ban mơ brơtơu rơp gơjềng ùr bơlau. Làng sơnđio tơlik bơta hơ pơr gon hơ\ ùr mơ klau n\ô bal dùl bơngàn trơnờm, sa bal bàr pơnat piang pat. Tơ nơ\ hơ\, cau ùr hồ n\òng kèo mơ kòng rài jàu cau klau in làng lơh pin dờn. Hơ\ làh rùp rài nùs nhơm đềp mềr nùs gơboh dê.', 87)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (111, NULL, NULL, NULL, NULL, N'Gơ wèt mơ ala\ jơi bơtiàn tiah Kơh Bơnơm, kàl lơh mìr sre geh lơh tềl mơ ngai lơh Yàng sền rơwah ù. Tơn dut dùl nam tùc sih, làng bol ơm tiah Kơh Bơnơm ờs sap rơndap ngai chờ bơnàr tơn hàu kòi pa.', 92)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (112, NULL, NULL, NULL, NULL, N'Đah gah ala\ ngai chờ bơnàr broa\ mìr sre, ala\ jơi bơtiàn tiah Kơh Bơnơm gam geh ala\ ngai chờ bơnàr ndai mơ is ồn rơlau jơh làh; ngai bơnàr n\ô sa rơpu, ngai bơ thi [ồc (ngai dờng ngan tàm bơta rơcang broa\ dar rài kòn bơnus).', 92)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (113, NULL, NULL, NULL, NULL, N'N|ô Lềr Bong làh ngai chờ dut ndơl tàm jơl jơh brua\ tùc sih kòi dà cau Kơho Sre tàm Lâm Đồng dê. Ngai chờ bơnàr ờs gơ tus tơ nơ\ ngai Tết Nguyên Đán cau Yuan dê. Do làh ngai chờ bơnàr chờ ngan cau Kơho Srê dê.', 92)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (114, NULL, NULL, NULL, NULL, N'Tính từ chỉ lượng: jơnhua (cao), jòng (dài), dờng (to), rềp (gần).', 97)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (115, NULL, NULL, NULL, NULL, N'Ơm ngài mơ [òn.', 97)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (116, NULL, NULL, NULL, NULL, N'Ở xa làng.', 97)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (117, NULL, NULL, NULL, NULL, N'Jơnhua pe làc.', 97)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (118, NULL, NULL, NULL, NULL, N'Cao ba sải tay.', 97)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (119, NULL, NULL, NULL, NULL, N'Tính từ chỉ chất: niam (đẹp, tốt), pràn (khỏe), kra (già, cũ), jak (tài, giỏi),…', 97)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (120, NULL, NULL, NULL, NULL, N'Oh trơyang bơsram.', 97)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (121, NULL, NULL, NULL, NULL, N'Em chăm học.', 97)
INSERT [dbo].[BaiKhoa] ([ID], [HoiKHo], [TraLoiKHo], [HoiViet], [TraLoiViet], [NoiDung], [IDDanhMucCon]) VALUES (122, NULL, NULL, NULL, NULL, N'Ngai 3 nhai 2 nam 1930, Đảng Cộng sản Việt Nam gơjềng gơs. Bal mơ broa\ tơng guh tờm mơ gùng dà dê, bơceh pa, Đảng Cộng sản Việt Nam neh sap sơndap, tề lam kac màng dà lơgar he geh cèng wơl ala\ bơta jai pha chờ hờp ngan. Nam 1945, dơ\ sơnrờp, K’Brôp sền go\ kơ pơr hê srơman\ rơmit tàm dùl ngai lèh tàm [òn dờng. Tơ nơ\ do, ồng git hơ\ làh mitting chờ gờm ngai Quốc khánh, gơlik gơs dà lơgar Việt Nam Dân chủ Cộng hòa. Ồng wa\ wờng làh dà kơ gơnuar at bồ kac màng neh cèng wơl lơngap is, khat gơboh jơi bơtiàn in. Tơ nơ\ do, K’Brôp nting sap kòn sau sùm sùm gơboh dà lơgar, ờ tu\ lơi sơrlèt bồ dà lơgar.', 98)
SET IDENTITY_INSERT [dbo].[BaiKhoa] OFF
SET IDENTITY_INSERT [dbo].[CauHoi] ON 

INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (1, N'N|cau do?', N'Người này là ai?', 28)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (2, N'N|cau gen?', N'Ai vậy?', 28)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (3, N'Bi neh nđờ sơnam?', N'Anh đã bao nhiêu tuổi?', 28)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (4, N'Bi lơh broa\ lơi?', N'Anh làm nghê gì?', 28)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (5, N'Bi neh geh hìu nha\ ha lah ờ hềt?', N'Anh đã có gia đình chưa?', 28)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (6, N'N|cau mơ bi ơm?', N'Anh ở với ai?', 28)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (7, N'N|cau ơm bal mơ bi?', N'Ai ở cùng với anh?', 28)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (8, N'Bi gam lơh broa\ lơi?', N'Anh đang làm việc gì?', 28)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (9, N'Ồng K’Brôp làh n\cau?', NULL, 34)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (10, N'N|cau làh mè K’Bim dê?', NULL, 34)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (11, N'K’Brit làh n\cau?', NULL, 34)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (12, N'Ka Hai làh n\cau?', NULL, 34)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (13, N'Bau ùr K’Bim lafh cau lơi?', NULL, 34)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (14, N'K’Bim geh nđờ na\ kòn?', NULL, 34)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (15, N'Sơnđan să ala\ kòn tờm K’Bim?', NULL, 34)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (16, N'Nam do, K’Brừm nđờ sơnam?', NULL, 39)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (17, N'K’Brừm bơsram adu\ lơi?', NULL, 39)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (18, N'Tàm klờng, K’Brừm di tiơng lơi?', NULL, 39)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (19, N'Ka Dôp bơsram adu\ lơi?', NULL, 39)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (20, N'Ka Dôp gam gơ tă jak bơta lơi tai?', NULL, 39)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (21, N'Ka Dôp lơh n\chi lơi dong mè?', NULL, 39)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (22, N'Hìu bi mbe gơlơh?', NULL, 44)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (23, N'Tàm hìu K’Bim geh n\chi lơi?', NULL, 44)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (24, N'Hìu K’Bim tơn àng bơh n\chi lơi?', NULL, 44)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (25, N'Suơn hìu K’Bim mbe gơlơh?', NULL, 44)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (26, N'Ngkời hìu, K’Bim tam chi lơi?', NULL, 44)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (27, N'K’Bim tam tào, prìt tiah lơi?', NULL, 44)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (28, N'Tàm suơn K’Bim tam n\chi lơi?', NULL, 44)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (29, N'Tàm kafl gờm kòi pa tus, hìu nha\ K’Brôp lơh n\chi lơi?', NULL, 50)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (30, N'Ồng jà ala\ cau lơi?', NULL, 50)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (31, N'Oh mi tus hìu ồng làng n\chi lơi?', NULL, 50)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (32, N'Gam kờnom, K’Brôp kis mbe lơi?', NULL, 50)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (33, N'Tu\ geh bau, hìu nha\ K’Brôp kis mbe gơlơh?', NULL, 50)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (34, N'Rài yau, làng bol [òn A kis mbe lơi?', NULL, 50)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (35, N'Tu\ do, rài kis mbe lơi?', NULL, 50)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (36, N'N|cau lơh puà [òn?', NULL, 55)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (37, N'K’Brèt làh cau mbe lơi?', NULL, 55)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (38, N'Jơh ala\ cau kis mbe lơi mơ K’Brèt?', NULL, 55)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (39, N'Trơgùm [òn tu\ lơi?', NULL, 55)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (40, N'Trơgùm [òn làng lơh n\chi lơi?', NULL, 55)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (41, N'Jơh ala\ cau lòt trơgùm [òn sơl ờ?', NULL, 55)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (42, N'K’Brèt yal tơng kah oh mi mbe lơi?', NULL, 55)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (43, N'Tàm mìr K’Bim tam n\chi lơi?', NULL, 60)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (44, N'Tu\ do, rài kis làng bol tàm [òn mbe gơlơh?', NULL, 60)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (45, N'Tàm tiah kờh bơnơm, geh rà sre kòi ờ?', NULL, 60)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (46, N'Lang bol lơh n\chi lơi làng blơi phe?', NULL, 60)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (47, N'Ngai òr, trồ mìu jo\ sơl ờ?', NULL, 68)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (48, N'Dà sòr tih mbe gơlơh?', NULL, 68)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (49, N'Tàm ala\ nam do òr, mìu càl mbe gơlơh?', NULL, 68)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (50, N'Di lah mus kờl brê dơr gen cồng nha tơ nơ\ mbe gơlơh?', NULL, 68)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (51, N'Jơi phan pơ kis tàm brê?', NULL, 73)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (52, N'Brê geh cồng nha lơi?', NULL, 73)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (53, N'Brê geh bơta lơi?', NULL, 73)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (54, N'Bol he pal lơh n\chi lơi làng grap gàr brê?', NULL, 73)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (55, N'Tam brê lafh broa\ lơh mbe lơi?', NULL, 78)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (56, N'Cán bộ lâm nghiệp bơh anih lơi tus?', NULL, 78)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (57, N'Cán bộ lâm nghiệp pơlam lơh broa\ lơi?', NULL, 78)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (58, N'{òn jà hòi jơnau lơi?', NULL, 84)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (59, N'Làng gơs [òn chài rơgơi pal lơh lài n\chi lơi?', NULL, 84)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (60, N'Hìu nha\ chài rơgơi pal mbe lơi?', NULL, 84)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (61, N'(Mbe gơlơh hìu nha\ chài rơgơi?)', NULL, 84)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (62, N'Hìu nha\ lơi neh dờp hìu chài rơgơh?', NULL, 84)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (63, N'Ala\ rơnàng [òn làng kòn cau Lâm Đồng neh lời wơl tơ rai trơnơ\ n\chi pơ?', NULL, 89)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (64, N'Tàm kup bau gơlik mbe gơlơh?', NULL, 89)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (65, N'Làng sơnđio tơlik bơta hơ pơr gon kis đềt mềr jơl rài, brơtơu mơ ban n\chi lơh?', NULL, 89)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (66, N'{ăn jàu dơ brơtơu mpa phan bơna?', NULL, 89)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (67, N'Tơn dut dùl nam broa\ tùc sih, cau ơm tiah Kơh Bơnơm ờs sap rơndap ngai chờ bơnàr pơ?', NULL, 94)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (68, N'Bơdìh ala\ ngai chờ bơnàr mìr sre, ala\ jơi bơtiàn tiah Kơh Bơnơm gam geh ala\ ngai chờ bơnàr ndai tai ờ?', NULL, 94)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (69, N'Ngai bơ thi [ồc geh kuơ lơi?', NULL, 94)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (70, N'Ngai chờ bơnàr chờ ngan cau Kơho Sre dê làh ngai chờ lơi?', NULL, 94)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (71, N'Mpa ngai Đảng Cộng sản Việt Nam gơlik gơs?', NULL, 100)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (72, N'Dơ\ sơnrờp K’Brôp sền go\ kơ pơrhê srơman\ rơmit tàm man pơ?', NULL, 100)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (73, N'Ngai Quốc Khánh dà lơgar Việt Nam làh ngai nđờ?', NULL, 100)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (74, N'Jai pha dờng jơnhau kac màng Việt Nam dê làh n\chi?', NULL, 100)
INSERT [dbo].[CauHoi] ([ID], [Hoi], [TraLoi], [IDDanhMucCon]) VALUES (75, N'K’Brôp nting sap kòn sau in bơta lơi?', NULL, 100)
SET IDENTITY_INSERT [dbo].[CauHoi] OFF
SET IDENTITY_INSERT [dbo].[DamThoai] ON 

INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (1, N'N|chi do? (Do làh n\chi pơ?)', N'Do làh ………………….', N'Cái gì đây? (Đây là cái gì?)', N'Đây là ………………….', 15)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (2, N'Mê lòt mơ n\cau?', N'An\ lòt is dùl nă.', N'Anh đi với ai?', N'Tôi đi một mình', 17)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (3, N'N|cau lòt bal mơ mê?', N'An\ lòt mơ bau an\.', N'Ai đi cùng với anh?', N'Tôi đi với vợ tôi.', 17)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (4, N'Bi rơwah ào dà pơ?', N'An\ rơwah ào dà tơlir', N'Anh chọn áo màu nào?', N'Tôi chọn áo màu xanh.', 19)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (5, N'Gùng do mpa đah lòt?', N'Gùng do lòt tus sàh Lat.', N'Đường này đi đâu?', N'Đường này đi đến xã Lát.', 21)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (6, N'Bi mpa đah ơm?', N'An\ ơm [òn Bơdơr.', N'Anh ở đâu?', N'Tôi ở buôn Bờ Đơr.', 21)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (7, N'Mpa đah sră?', N'Sră ơm rềp sră cih.', N'Quyển sách ở đâu?', N'Quyển sách ở gần quyển vở.', 21)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (8, N'Gai cih mpa đah?', N'Gai cih tàm …….hồp.', N'Cây bút ở đâu?', N'Cây bút ở ……. cái hộp.', 21)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (9, N'N|chi bơh tài bi gơboh bơsram jơnau Kơho?', N'Tài bơh an\ kờn\ đơs, iat mơ wa\ jơnau Kơho. ', N'Tại sao anh thích học tiếng Cơ Ho?', N'Vì tôi muốn nói, nghe và hiểu được tiếng Cơ Ho.', 23)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (10, N'Sơnđan broa\ bi lơh?', N'An\ lafh ……………..', N'Anh làm nghê gì?', N'Tôi là ……………..', 29)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (11, N'Ai bi n\chi broa\ lơh?', N'An\ làh bak sìh, an\ làh cau at bồ hìu sơnơm dềt tàm sàh.', N'Còn anh làm nghề gì?', N'Tôi là bác sĩ, tôi làm trưởng trạm y tế xã.', 29)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (12, N'Bi neh geh bau ờ?', N'An\ neh geh bau rau.', NULL, NULL, 35)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (13, N'Mpa nam bị kup bau?', N'An\ bau nam 1984.', NULL, NULL, 35)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (14, N'Bi geh nđờ ùr na\ kòn?', N'An\ neh geh pe na\ kòn.', NULL, NULL, 35)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (15, N'Nđơ na\ kòn ùr, nđơ na\ kòn klau?', N'Bàr na\ kòn ùr, dùl na\ kòn klau.', NULL, NULL, 35)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (16, N'Kòn dờng nđờ sơnm do?', N'Kòn dờng jơt prau sơnam do.', NULL, NULL, 35)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (17, N'Bi geh nđờ na\ kòn?', N'An\ geh pe na\ kòn.', NULL, NULL, 40)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (18, N'Kòn dờng bi bơsram adu\ nđờ?', N'Khai bơsram adu\ 5.', NULL, NULL, 40)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (19, N'Khai bơsram mbe gơlơh?', N'Khai làh kơnòm bơsram jak.', NULL, NULL, 40)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (20, N'Hìu bị mbe gơlơh?', N'Hìu an\ wêt mơya sàng goh.', NULL, NULL, 45)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (21, N'Geh mđờ adu\?', N'Hìu an\ geh pe adu\.', NULL, NULL, 45)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (22, N'Geh tivi sơl? Geh n\chi lơi tai?', N'Geh tivi, tùh mrềt.', NULL, NULL, 45)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (23, N'Hìu bi geh suơn sơl ờ?', N'Hìu an\ geh suơn đah tơ nơ\ hìu.', NULL, NULL, 45)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (24, N'N|chi tam tàm suơn?', N'Tàm bơkào, tam biap, bàr pe tờm [ơ, tờm pơnat.', NULL, NULL, 45)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (25, N'Bòn bi niam sơl lah ờ?', N'Bòn an\ krung gam be ờs. {òn gơ ơm tơjơng bơnơm, tơ đap làh sre kòi.', NULL, NULL, 51)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (26, N'Bòn geh gal cau sơl lah ờ?', N'Ờ huan, di mơ lơm.', NULL, NULL, 51)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (27, N'Cau tàm [òn kis mơ mpa broa\ lơh?', N'Oa\ cau kis mơ broa\ lơh jơng tê: lơh sre, lơh mìr, ta\m kà phe mơ ròng siam.', NULL, NULL, 51)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (28, N'Rài kis lang bolmbe gơlơh?', N'Lài òr bòl glar ngan, tu\ do neh gơ tàm gơl oa\.', NULL, NULL, 51)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (29, N'Oh yal tờng git tus tơ hìu ồng puà [òn lòt gùng pơ?', N'Wa lòt jat gùng do, gan rơlau klờng bơsram gen se\ đah kiau. Hìu ồng puà [òn làh hìu dơ\ pe đah tê ma.', NULL, NULL, 56)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (30, N'Bơh tềng do tus hơ\ ngài ờ?', N'Ờ ngai wai, mìng 10 phuk lơm.', NULL, NULL, 56)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (31, N'Ngai do đah mê lòt?', N'An\ lòt drà.', NULL, NULL, 61)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (32, N'N|chi mê tac?', N'An\ tac kà phe.', NULL, NULL, 61)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (33, N'N|chi mê blơi?', N'An\ blơi ào mpha.', NULL, NULL, 61)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (34, N'Dùl nơm ào do nđờ?', N'Pe jơt rờbô đong.', NULL, NULL, 61)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (35, N'Biài do kơl jap sơl ờ?', N'Biài do kơl jap ngan.', NULL, NULL, 61)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (36, N'Niam sa\.', N'Niam sa\.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (37, N'Mê pràn đau sơl ờ?', N'Ừn ngài, gam pràn đau.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (38, N'Mê làh kòn cau lơi?', N'An\ làh kòn cau Kơho.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (39, N'Mê ròng n\chi lơi?', N'An\ ròng iar, ada, sur.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (40, N'N|chi K’Bik lơh?', N'K’Bik po\ ù.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (41, N'N|chi broa\ lơh?', N'K’Bik lơh làng.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (42, N'Niam sa\.', N'Niam sa\.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (43, N'Mê gam pràn kơldang sơl?', N'Pràn ngan, ừn ngài.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (44, N'Bơh mê lòt?', N'An\ lòt bơsram.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (45, N'K’Tiu lơh n\chi lơi?', N'Khai lơh cau y ta\.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (46, N'Khai gam ơm tàm hìu sơl ờ?', N'Khai lòt lơh broa\ tàm hìu sơnơm dềt.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (47, N'Khai gam ơm lơh n\chi lơi?', N'Khai gam kham cau kòp.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (48, N'Ngai do mê lòt lơh broa\ lơi?', N'Ngai do an\ lòt pic plai kà phe.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (49, N'Bi lơh broa\ anih lơi?', N'An\ lơh broa\ tàm sàh Gùng Ré.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (50, N'Bi lơh broa\ tàm sàh neh nđờ nam do?', N'An\ lơh broa\ neh jơt nam do.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (51, NULL, N'Ơ Hờng! Ngai lơi ru dan jà oh rê hìu bi nhơl.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (52, N'Hiu bi tàm [òn lơi?', N'Hiu an\ tàm [òn B’su Mrac.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (53, N'Ngài ờ?', N'Ờ ngài! Lòt jờng di puan jơt pram phuk.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (54, N'Hìu nha bi geh nđờ na\ cau?', N'Prau na\: mè bàp an\, bau ùr an\ mờ bàr na\ kòn.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (55, N'Tơl na\ kòn neh jơh dờng làh ờ hết?', N'Ờ hềt, bol khai gam dềt ngan. Kòn ùr 10 sơnam, kòn klau 6 sơnam.', NULL, NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (56, NULL, NULL, N'Tổ chức đàm thoại theo nhóm về gia đình, công việc.', NULL, 64)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (57, N'Mìr ne gơwèt [òn pơ dê?', N'Mìr ne gơwèt [òn Prau.', NULL, NULL, 69)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (58, N'N|cau neh chu brê lơh mìr?', N'Ồng K’Tư chu brê lơh mìr.', NULL, NULL, 69)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (59, N'Tàm mìr n\chi tam?', N'Tàm mìr tam tơngời, kòi, rơpoal, khoah,…', NULL, NULL, 69)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (60, N'Geh dồ aniai mìr ờ?', N'Dồ aniai mìr git lơh, bol gơ tus jat mpồl.', NULL, NULL, 69)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (61, N'Dà sơdiang do mbe sơnđan?', N'Dà sơdiang do sơnđan lafh Camly.', NULL, NULL, 74)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (62, N'Gơ hòr tus dà pơ?', N'Gơ hòr tus Dà Dờng.', NULL, NULL, 74)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (63, N'Bàr gah dà gam geh brê ờ?', N'Hơ bơdìh [òn dờng gam brê nho mơya tàm dowlam [òn dờng mìng gam bàr pe ba\ brê lơm.  ', NULL, NULL, 74)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (64, N'Brê làh phan bơna mbe gơlowh?', N'Brê làh phan bơna kuơ màng rơlau jơh.', NULL, NULL, 79)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (65, N'Brê geh cồng nha lơi?', N'Rơyas chi gơ ròng gàr dà, ntê nha dong ù in ờ gơlơh siar. Brê gam gàr càl in kloh niam mơ kìng càl.', NULL, NULL, 79)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (66, N'Bơnồ òr nau tàm brê n\chi jơi brê geh?', N'Jat be cau kra yal wơl, bơnồ òr nau tàm brê geh rơwas, klìu, krih,…', NULL, NULL, 79)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (67, N'Tu\ do gam geh phan brê lơi?', N'Tu\ do gam mìng jùn, jrơke, dồ, …', NULL, NULL, 79)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (68, N'N|chi bol he pal lơh?', N'Bol he pal grap gàr phan bơna brê, ban\ kowl chi, ban\ chu brê.', NULL, NULL, 79)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (69, N'Kờn\ bơtào [òn chài rơgơi lài jơh n\chi pal lơh?', N'Kờn\ geh [òn chài rơgơi lài jowh pal geh hìu nha\ chài rơgơi.', NULL, NULL, 85)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (70, N'Be hơ\ tơl hìu nha\ di pal lơh mbe lơi?', N'Hìu nha\ lơi krung pal bơtê bơto oh kòn he.', NULL, NULL, 85)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (71, N'N|chi broa\ tơl na\ cau di pal lơh?', N'Hìu lơi krung tơng kloh anih ơm ngui, hìu lơi krung trơyang lơh broa\.', NULL, NULL, 85)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (72, N'Oh git đơs crih làh ờ?', N'An\ git đơs crih, mơya đơs crih ờ huan ròm ngan.', NULL, NULL, 90)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (73, N'Oh ờs đơs crih ala\ gùng lơi?', N'An\ ờs đơs crih ala\ gùng đơs crih pơnđiang oh, đơs tàm pơt,…', NULL, NULL, 90)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (74, N'Bòr mồng cing di ngui tàm ala\ tu\ lơi?', N'Bòr mồng cing di ngui tàm ala\ ngai chờ bơnàr, chơt jê,…', NULL, NULL, 90)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (75, N'N|chi bơh tài tàng ờ di tac mồng cing?', N'Tài bơh mồng cing làh phan kuơ geh bơh yau lời wơl bơh rài do jơl rài ndai.', NULL, NULL, 90)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (76, N'Gơ wèt bơta pin dờn, cau Kơho pin jat n\cau?', N'Pin Yàng mơ ala\ yàng: yàng Ndu, yàng bơnơm, yàng dà, yàng brê dơr,…', NULL, NULL, 95)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (77, N'Cau Kơho geh ala\ ngai chờ bơnar pơ?', N'Bơ nồ òr, cau Kơho geh oa\ ngai chờ bơnar: sa rơpu, bơ thi [ồc, mut hìu pa,…', NULL, NULL, 95)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (78, N'Ngai chờ bơnar di sap rơndap mbe gơlơh?', N'Ngai chờ bơnàr geh n\ô sa, đơs crih đơs chờ, tur mồng cing.', NULL, NULL, 95)
INSERT [dbo].[DamThoai] ([ID], [CauHoiKHo], [TraLoiKHo], [CauHoiViet], [TraLoiViet], [IDDanhMucCon]) VALUES (79, N'Dà lơgar Việt Nam mpa đah gơ ơm?', N'Dà lơgar Việt Nam gơ ơm đah tiah Đông Nam châu Á.', NULL, NULL, 101)
SET IDENTITY_INSERT [dbo].[DamThoai] OFF
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (1, NULL, NULL, 1)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (2, NULL, NULL, 2)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (3, NULL, NULL, 3)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (4, N'N|CHI DO?', N'CÁI GÌ ĐÂY?', 4)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (5, N'N|CAU HƠ|?', N'AI ĐÓ?', 4)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (6, N'DÀ GUR LƠI?', N'MÀU GÌ?', 4)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (7, N'NTỀNG?', N'ĐÂU?', 4)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (8, N'N|CHI BƠH TÀI?', N'TẠI SAO?', 4)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (9, NULL, NULL, 5)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (10, NULL, NULL, 6)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (11, NULL, NULL, 7)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (12, NULL, NULL, 8)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (13, NULL, NULL, 9)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (14, NULL, NULL, 10)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (15, NULL, NULL, 11)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (16, NULL, NULL, 12)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (17, NULL, NULL, 13)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (18, NULL, NULL, 14)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (19, NULL, NULL, 15)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (20, NULL, NULL, 16)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (21, NULL, NULL, 17)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (22, NULL, NULL, 18)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (23, NULL, NULL, 19)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (24, NULL, NULL, 20)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (25, NULL, NULL, 21)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (26, NULL, NULL, 22)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (27, NULL, NULL, 23)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (28, NULL, NULL, 24)
INSERT [dbo].[DanhMuc] ([ID], [TenKHo], [TenViet], [IDBaiHoc]) VALUES (29, NULL, NULL, 25)
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
SET IDENTITY_INSERT [dbo].[DanhMucCon] ON 

INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (1, N'BÀI ĐẦU', 1, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (2, N'NGUYÊN ÂM', 1, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (3, N'PHỤ ÂM', 1, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (4, N'PHỤ ÂM ĐÔI', 1, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (5, N'PHỤ ÂM BA', 1, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (6, N'ÂM ĐẶC BIỆT', 1, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (7, N'THANG ĐIỆU (Dấu giọng)', 1, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (8, N'LUYỆN TẬP', 1, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (9, N'Từ vựng', 2, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (10, N'Luyện tập', 2, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (11, N'Từ vựng', 3, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (12, N'Dịch tiếng Cơ Ho sang tiếng Việt', 3, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (13, N'Luyện tập', 3, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (14, N'Từ vựng', 4, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (15, N'Đàm thoại', 4, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (16, N'Từ vựng', 5, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (17, N'Đàm thoại', 5, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (18, N'Từ vựng', 6, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (19, N'Đàm thoại', 6, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (20, N'Từ vựng', 7, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (21, N'Đàm thoại', 7, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (22, N'Từ vựng', 8, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (23, N'Đàm thoại', 8, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (24, N'Bài khóa', 9, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (25, N'Từ vựng', 9, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (26, N'Bài khóa', 10, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (27, N'Từ vựng', 10, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (28, N'Câu hỏi', 10, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (29, N'Đàm thoại', 10, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (30, N'Luyện tập', 10, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (31, N'Bài khóa', 11, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (32, N'Bài khóa', 12, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (33, N'Từ vựng', 12, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (34, N'Câu hỏi', 12, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (35, N'Đàm thoại', 12, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (36, N'Luyện tập', 12, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (37, N'Bài khóa', 13, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (38, N'Từ vựng', 13, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (39, N'Câu hỏi', 13, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (40, N'Đàm thoại', 13, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (41, N'Luyện tập', 13, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (42, N'Bài khóa', 14, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (43, N'Từ vựng', 14, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (44, N'Câu hỏi', 14, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (45, N'Đàm thoại', 14, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (46, N'Luyện tập', 14, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (47, N'Bài khóa', 15, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (48, N'Bài khóa', 16, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (49, N'Từ vựng', 16, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (50, N'Câu hỏi', 16, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (51, N'Đàm thoại', 16, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (52, N'Luyện tập', 16, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (53, N'Bài khóa', 17, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (54, N'Từ vựng', 17, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (55, N'Câu hỏi', 17, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (56, N'Đàm thoại', 17, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (57, N'Luyện tập', 17, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (58, N'Bài khóa', 18, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (59, N'Từ vựng', 18, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (60, N'Câu hỏi', 18, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (61, N'Đàm thoại', 18, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (62, N'Luyện tập', 18, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (63, N'Bài khóa', 19, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (64, N'Đàm thoại', 20, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (65, N'Luyện tập', 20, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (66, N'Bài khóa', 21, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (67, N'Từ vựng', 21, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (68, N'Câu hỏi', 21, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (69, N'Đàm thoại', 21, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (70, N'Luyện tập', 21, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (71, N'Bài khóa', 22, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (72, N'Từ vựng', 22, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (73, N'Câu hỏi', 22, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (74, N'Đàm thoại', 22, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (75, N'Luyện tập', 22, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (76, N'Bài khóa', 23, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (77, N'Từ vựng', 23, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (78, N'Câu hỏi', 23, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (79, N'Đàm thoại', 23, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (80, N'Luyện tập', 23, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (81, N'Bài khóa', 24, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (82, N'Bài khóa', 25, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (83, N'Từ vựng', 25, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (84, N'Câu hỏi', 25, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (85, N'Đàm thoại', 25, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (86, N'Luyện tập', 25, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (87, N'Bài khóa', 26, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (88, N'Từ vựng', 26, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (89, N'Câu hỏi', 26, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (90, N'Đàm thoại', 26, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (91, N'Luyện tập', 26, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (92, N'Bài khóa', 27, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (93, N'Từ vựng', 27, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (94, N'Câu hỏi', 27, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (95, N'Đàm thoại', 27, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (96, N'Luyện tập', 27, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (97, N'Bài khóa', 28, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (98, N'Bài khóa', 29, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (99, N'Từ vựng', 29, NULL)
GO
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (100, N'Câu hỏi', 29, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (101, N'Đàm thoại', 29, NULL)
INSERT [dbo].[DanhMucCon] ([ID], [Ten], [IDDanhMuc], [IDHinh]) VALUES (102, N'Luyện tập', 29, NULL)
SET IDENTITY_INSERT [dbo].[DanhMucCon] OFF
SET IDENTITY_INSERT [dbo].[DichKHoViet] ON 

INSERT [dbo].[DichKHoViet] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (1, N'Ngai dơ\ nđờ?', N'Ngày thứ mấy?', 12)
INSERT [dbo].[DichKHoViet] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (2, N'Ngai dơ\ bàr.', N'Ngày thứ hai.', 12)
INSERT [dbo].[DichKHoViet] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (3, N'Ngai lơi?', N'Ngày mấy?', 12)
INSERT [dbo].[DichKHoViet] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (4, N'Ngai sin nhai bàr nam bàr rờbô pram.', N'Ngày 9 tháng 2 năm 2015.', 12)
SET IDENTITY_INSERT [dbo].[DichKHoViet] OFF
SET IDENTITY_INSERT [dbo].[LoiHayYDep] ON 

INSERT [dbo].[LoiHayYDep] ([ID], [CauKHo], [CauViet], [IDBaiHoc]) VALUES (1, N'BAN| SANG TE| TU| TƠNGAI', N'ĐỪNG LÃNG PHÍ THỜI GIAN', 3)
INSERT [dbo].[LoiHayYDep] ([ID], [CauKHo], [CauViet], [IDBaiHoc]) VALUES (2, N'PAL PRAP GÀR ALA| JƠNAU ĐƠS HE DÊ', N'HÃY BẢO TỒN TIẾNG NÓI CỦA MÌNH', 4)
INSERT [dbo].[LoiHayYDep] ([ID], [CauKHo], [CauViet], [IDBaiHoc]) VALUES (3, N'GIT ADAT CAU NDAI SỒNG CAU GIT ADAT HE', N'BIẾT TÔN TRỌNG NGƯỜI KHÁC THÌ NGƯỜI KHÁC MỚI TÔN TRỌNG MÌNH', 5)
INSERT [dbo].[LoiHayYDep] ([ID], [CauKHo], [CauViet], [IDBaiHoc]) VALUES (4, N'KIS PAL LƠH BROA| GEN SỒNG GEH PHAN SA', N'SỐNG CẦN PHẢI LÀM VIỆC THÌ MỚI CÓ CỦA ĂN', 6)
INSERT [dbo].[LoiHayYDep] ([ID], [CauKHo], [CauViet], [IDBaiHoc]) VALUES (5, N'LƠH TỀNG TÊ, GƠRÊ TỀNG BƠR TÊ LƠH, BƠR SA', NULL, 8)
INSERT [dbo].[LoiHayYDep] ([ID], [CauKHo], [CauViet], [IDBaiHoc]) VALUES (6, N'PAL TRƠYANG TAM PHAN PỜM, RÒNG SIAM', NULL, 10)
INSERT [dbo].[LoiHayYDep] ([ID], [CauKHo], [CauViet], [IDBaiHoc]) VALUES (7, N'KÒN CAU KIS GEH KỒ, GEH BOAL, GEH YAU, GEH PA SỒNG GEH BOL HE NGAI DO', NULL, 12)
INSERT [dbo].[LoiHayYDep] ([ID], [CauKHo], [CauViet], [IDBaiHoc]) VALUES (8, N'PIANG TỜ TỜM TRƠNỜM TỜ NAC', NULL, 13)
INSERT [dbo].[LoiHayYDep] ([ID], [CauKHo], [CauViet], [IDBaiHoc]) VALUES (9, N'TRƠYANG LƠH GEN GEH PHAN SA, Ờ LAH GEN NGGUI GỜI', NULL, 14)
INSERT [dbo].[LoiHayYDep] ([ID], [CauKHo], [CauViet], [IDBaiHoc]) VALUES (10, N'BRÊ LÀH BIÀNG, DÀ LỀNG LÀH MÀH', NULL, 18)
INSERT [dbo].[LoiHayYDep] ([ID], [CauKHo], [CauViet], [IDBaiHoc]) VALUES (11, N'BAN| CHU ỒS TÀM BRÊ', NULL, 19)
INSERT [dbo].[LoiHayYDep] ([ID], [CauKHo], [CauViet], [IDBaiHoc]) VALUES (12, N'KỜN| BƠTÀO {ÒN CHÀI RƠGƠI PAL BƠTÀO HÌU NHA| CHÀI RƠGƠI', NULL, 21)
INSERT [dbo].[LoiHayYDep] ([ID], [CauKHo], [CauViet], [IDBaiHoc]) VALUES (13, N'DÀ LƠGAR VIỆT NAM LÀH DÙL, JƠI BƠTIÀN VIỆT NAM LÀH DÙL', NULL, 22)
INSERT [dbo].[LoiHayYDep] ([ID], [CauKHo], [CauViet], [IDBaiHoc]) VALUES (14, N'Ù DÙL KƠNAC RAC DÙL RƠSÒN KÒN DÙL ME, DÙL BÀP', NULL, 23)
SET IDENTITY_INSERT [dbo].[LoiHayYDep] OFF
SET IDENTITY_INSERT [dbo].[LuyenTap] ON 

INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (1, N'Gam ho lo me ru sa', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (2, N'Bi [o pơ ce chi ka do đo jơ', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (3, N'Ne n\ô an\ wa yô', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (4, N'Ala ala\ hơ hơ\ sa sa\ te\ go\ dơ\ pru', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (5, N'Ào àng hồ hờn hờp', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (6, N'Bơnah deh sih boh  bơtrơh guh', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (7, N'A dà ngai bau blac jak càl dơlam phan bàn anàng lơwa\n lơngap dar as mat', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (8, N'E pe kèo gen cèng wer sơrlèt', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (9, N'Ê tê bềl sềm sềm bềng rềp mềr rềs dềt', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (10, N'I di pria\ niam bơhiàn rơhiang iar phiơn diơng hìu bic gơlik sơntìl sin cing tìp mơ git', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (11, N'O so\ boai hòi bòl đòm [òn dong kòp bòr lòt', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (12, N'ồ bồ kơlôi mpồl pơrlồm mồng tồr ồs sồt', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (13, N'ơ mơ bời brơtơu n\ờk tơl brơm dờng kờn\ dờp bơr đơs jơt', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (14, N'u tu\ kơyua puac bơtuah nguài huan [ùi [uơn kơbuờng hùc', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (15, N'ư ừn', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (16, N'blơi brua\ [lang crih dra\ drà glài grap jrào', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (17, N'khà klê krung', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (18, N'mbe mblàng mda mho mpa mprơm mrềt', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (19, N'ndơl ndrờm nđờ ngan nggùl ngko nhai nri\ nsrờng ntàu', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (20, N'n\cau n\chi n\hơt', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (21, N'pal phe plai pràn sre', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (22, N'thàm trơgùm', NULL, NULL, NULL, 8)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (23, N'Kờp bơh khà dùl tus khà bàr jơt.', N'Đếm từ số 1 đến số 20.', NULL, NULL, 10)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (24, N'Kờp bơh khà jớt tus khà dùl.', N'Đếm từ số 10 đến số 1.', NULL, NULL, 10)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (25, N'Đal: 2.153.978.654 đong.', N'Đọc: 2.153.978.645 đồng.', NULL, NULL, 10)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (26, N'Dùl rơhiang mơ puan rơhiang làh nđờ rờhiang?', N'Một trăm với bốn trăm là mấy trăm?', NULL, NULL, 10)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (27, N'Dùl rờhiang mờ puan rơhiang làh pram rơhiang.', N'Một trăm với bốn trăm là năm trăm', NULL, NULL, 10)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (28, N'Tu\ lơi bi rê bic?', N'Khi nào anh đi ngủ?', N'An\ rê bic tu\ jơt jơ.', N'Tôi đi ngủ lúc 10 giờ.', 13)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (29, N'Àng drim nđờ jơ bi guh bic?', N'Buổi sáng mấy giờ anh thức dậy?', N'Prau jơ drim an\ guh bic.', N'Sáu giờ sáng tôi thức dậy.', 13)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (30, N'Ngai hìng nđờ jơ mè lòt broa\?', N'Ngày mai mẹ đi làm lúc mấy giờ?', N'Drim hìng mè lòt lơh broa\ tu\ poh jơ.', N'Sáng mai mẹ đi làm lúc bảy giờ.', 13)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (31, N'Ngai do làh ngai dơ\ nđờ?', N'Hôm này là ngày thứ mấy?', N'Ngai do làh ngai dơ\ pram.', N'Hôm nay là ngày thứ năm.', 13)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (32, N'Ngai hìng làh ngai pơ?', N'Ngày mai là ngày nào?', N'Ngai hìng làh ngai dơ\ prau.', N'Ngày mai là ngày thứ sáu.', 13)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (33, N'Ngai hìng nau làh ngai nđờ?', N'Ngày mốt là ngày bao nhiêu?', N'Ngai hìng nau làh ngai bàr jơt pe.', NULL, 13)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (34, N'Ngai dơ là làh ngai dơ\ nđờ?', NULL, N'Ngai dơ là làh ngai n\ờk, ngai rơlô.', NULL, 13)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (35, N'Sơnđan mat : ', N'Họ và tên :  ', NULL, NULL, 30)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (36, N'Sơnam :', N'Tuổi :  ', NULL, NULL, 30)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (37, N'Broa\ lơh :', N'Nghề nghiệp :  ', NULL, NULL, 30)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (38, N'Geh hìu nha\ :', N'Có gia đình :  ', NULL, NULL, 30)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (39, N'Gam rơlùng :', N'Độc thân : ', NULL, NULL, 30)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (40, N'Anil ơm :', N'Địa chỉ : ', NULL, NULL, 30)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (41, N'Cih dùl jơnau mơ ala\ khar do (đặt câu với các từ): Jơi nòi, làng bol, kòn, kup, dê.', NULL, NULL, NULL, 36)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (42, N'Cih dùl jơnau mơ ala\ khar do: kơnòm, adu\, klờng, dong kờl, mìng.', NULL, NULL, NULL, 41)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (43, N'Cih dùl jơnau mơ ala\ khar do: suơn, hìu, tam, ngan, mơya.', NULL, NULL, NULL, 46)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (44, N'Cih dùl jơnau mơ ala\ khar do:  jơnau, rài kis, mìr, yal, jà.', NULL, NULL, NULL, 52)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (45, N'Cih dùl jơnau mơ ala\ khar do: chi phan sa, tơngời, tam, trơgùm, bơyai.', NULL, NULL, NULL, 57)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (46, N'Cih dùl jownau mơ ala\ khar do: kowh, bơnơm, tiah, sền, krung.', NULL, NULL, NULL, 62)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (47, NULL, N'Điền từ thích hợp vào ô trống:', NULL, NULL, 65)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (48, N'…………………….ồng', NULL, NULL, NULL, 65)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (49, N'Wa…………………….sơl?', NULL, NULL, NULL, 65)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (50, N'Ka Hờng…………………….n\chi lơi?', NULL, NULL, NULL, 65)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (51, N'K’Brôp lòt…………………….pơ\ tơngơi.', NULL, NULL, NULL, 65)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (52, N'Mè an\ pa rê…………………….khai blơi [an\ mơ phan sa.', NULL, NULL, NULL, 65)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (53, N'Gùt dar…………………….geh pơng gàr tam pơnat.', NULL, NULL, NULL, 65)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (54, NULL, N'Học viết tự thuật về gia đình, công việc mình.', NULL, NULL, 65)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (55, NULL, N'Viết một đoạn văn tả ngôi nhà của bạn.', NULL, NULL, 65)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (56, N'Cih dùl jơnau mơ ala\ khar do: miu, tơngai, trồ, mus, kơl, chu.', NULL, NULL, NULL, 70)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (57, N'Cih dùl jơnau mơ ala\ khar do: brê, ù, gàr, grap gàr.', NULL, NULL, NULL, 75)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (58, N'Cih dùl jơnau mơ ala\ khar do: dờp, rơwah, sơng ka, iat, sơnđio.', NULL, NULL, NULL, 80)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (59, N'Cih dùl jơnau mơ ala\ khar do: bơta, kloh, chài rơgơi, bơtàu, ban\.', NULL, NULL, NULL, 86)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (60, N'Cih dùl jơnau mơ ala\ khar do: [an, brơtơu, chờ jơh, ngài, rềp.', NULL, NULL, NULL, 91)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (61, N'Cih dùl jơnau mơ ala\ khar do: ngai chờ bơnàr, kàl, dut, rơwah, đah gar.', NULL, NULL, NULL, 96)
INSERT [dbo].[LuyenTap] ([ID], [HoiKHo], [HoiViet], [TraLoiKHo], [TraLoiViet], [IDDanhMucCon]) VALUES (62, N'Cih dùl jơnau mơ ala\ khar do: dà lơgar, kơ, chờ gùm, nting, neh.', NULL, NULL, NULL, 102)
SET IDENTITY_INSERT [dbo].[LuyenTap] OFF
SET IDENTITY_INSERT [dbo].[TuVung] ON 

INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (1, N'dùl', N'1', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (2, N'bàr', N'2', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (3, N'pe', N'3', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (4, N'puan (puơn, poan)', N'4', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (5, N'pram', N'5', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (6, N'prau', N'6', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (7, N'poh', N'7', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (8, N'phàm', N'8', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (9, N'sin', N'9', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (10, N'jơt', N'10', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (11, N'dùl rơhiang', N'100', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (12, N'dùl rờbô', N'1', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (13, N'dùl tờlak', N'1.000.000', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (14, N'dùl tơman', N'1.000.000.000', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (15, N'Jơnau', N'bài', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (16, N'Kha', N'số', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (17, N'Đong', N'đồng', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (18, N'Đal', N'đọc', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (19, N'Kờp', N'đếm', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (20, N'Làh', N'là', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (21, N'Bơh … tus …', N'từ … đến …', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (22, N'Mơ', N'với, và', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (23, N'Nđờ', N'mấy? Bao nhiêu?', 9)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (24, N'Tu\', N'lúc, khi', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (25, N'Jơ', N'giờ', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (26, N'Nggùl jơ', N'nửa giờ', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (27, N'Phuk', N'phút', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (28, N'Ngai', N'ngày', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (29, N'Tu\ tơngai', N'thời gian', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (30, N'Dơ\ bàr', N'thứ hai', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (31, N'Ngai n\ờk', N'ngày chủ nhật', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (32, N'Nhai', N'tháng, mùa', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (33, N'Nam', N'năm', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (34, N'Ngai do', N'hôm nay', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (35, N'Ngai hìng', N'ngày mai', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (36, N'Ngai hìng nau', N'ngày mốt', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (37, N'Ngai dơ là', N'ngày kia', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (38, N'Drim', N'sáng', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (39, N'Mho', N'chiều', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (40, N'Mang', N'tối', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (41, N'Mè (me)', N'mẹ', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (42, N'An\', N'tôi', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (43, N'Bi', N'anh', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (44, N'Lòt', N'đi', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (45, N'Rê', N'đi về', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (46, N'Bic', N'ngủ', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (47, N'Rơle\', N'chậm', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (48, N'Rơlô', N'nghỉ ngơi', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (49, N'Guh', N'thức dậy', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (50, N'Lơh', N'làm', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (51, N'Broa\ (brua\)', N'công việc', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (52, N'Sang te\', N'lãng phí', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (53, N'Ban\', N'đừng', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (54, N'Lơi?', N'mấy? nào?', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (55, N'Pơ?', N'nào?', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (56, N'Nđờ?', N'mấy?', 11)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (57, N'Bồ', N'đầu', 14)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (58, N'Tồr', N'tai', 14)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (59, N'Ngko', N'cổ', 14)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (60, N'So\ ', N'tóc', 14)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (61, N'Bơr', N'miệng', 14)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (62, N'Mat', N'mắt', 14)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (63, N'Muh', N'mũi', 14)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (64, N'Tê', N'tay', 14)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (65, N'Ndul', N'bụng', 14)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (66, N'Jơng', N'chân', 14)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (67, N'Do', N'đây, này', 14)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (68, N'Lùp', N'hỏi', 14)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (69, N'Hơ', N'trả lời', 14)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (70, N'N|||chi?', N'cái gì?', 14)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (71, N'An\', N'tôi', 16)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (72, N'Bol an\', N'chúng tôi', 16)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (73, N'Bi', N'anh', 16)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (74, N'Mê', N'mày, anh (danh cho nam giới)', 16)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (75, N'Ai', N'mày (dành cho nữ giới)', 16)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (76, N'Oh', N'em', 16)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (77, N'Oh mi (bi)', N'anh em', 16)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (78, N'Khai', N'nó, anh ấy', 16)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (79, N'Khi', N'họ', 16)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (80, N'Nă', N'người, đứa', 16)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (81, N'Bau', N'vợ, chồng', 16)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (82, N'Bal', N'cùng', 16)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (83, N'Tờlir', N'xanh', 18)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (84, N'Pơrhê', N'đỏ', 18)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (85, N'Dum ring', N'nâu', 18)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (86, N'Dum phồng', N'hồng', 18)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (87, N'Rờmit', N'vàng', 18)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (88, N'Jù (wàm, ồt, nđồc)', N'đen', 18)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (89, N'Bò (kò)', N'trắng', 18)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (90, N'Dà gur', N'nước, màu', 18)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (91, N'Ào', N'áo', 18)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (92, N'Rơwah (sac)', N'chọn', 18)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (93, N'Tềng (anih, cồh)', N'chổ', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (94, N'Tềng do', N'ở đây', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (95, N'Anih do', N'chổ này', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (96, N'Anih ne', N'chổ', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (97, N'Đah do', N'bên này', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (98, N'Đah ne', N'bên kia', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (99, N'Đah ma', N'bên phải', 20)
GO
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (100, N'Đah kiau (kiơu)', N'bên trái', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (101, N'Hơ đang', N'ở trên', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (102, N'Hơ đơm', N'ở dưới', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (103, N'Tềng (tơ) gùl', N'ở giữa', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (104, N'Tàm dơlam', N'bên trong', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (105, N'Bơdìh', N'ở ngoài', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (106, N'Tơ kêng', N'bên cạnh', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (107, N'Tơ (hơ) đap', N'phía trước', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (108, N'Tơ (hơ) nỡ', N'đằng sau', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (109, N'Rềp', N'gần', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (110, N'Ơm', N'ở', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (111, N'{òn', N'buôn', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (112, N'Sàh', N'xã', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (113, N'Gùng', N'đường', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (114, N'Sră', N'giấy, quyển sách', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (115, N'Cih', N'viết', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (116, N'Sră cih', N'quyển vở', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (117, N'Gai cih', N'cây viết', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (118, N'Ntềng (mpa đah)', N'đâu?', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (119, N'Tàm', N'ở, tại', 20)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (120, N'Jơnau (dà) Kơho', N'tiếng Cơ Ho', 22)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (121, N'Gơboh', N'thích', 22)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (122, N'Bơsram', N'học', 22)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (123, N'Kờn\', N'muốn', 22)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (124, N'Đơs', N'nói', 22)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (125, N'Iat', N'nghe', 22)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (126, N'Wă', N'hiểu', 22)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (127, N'Prap gàr', N'bảo tồn', 22)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (128, N'Pal', N'hãy', 22)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (129, N'N|chi bowh tài?', N'tại sao?', 22)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (130, N'Tài bơh', N'tại vì, vì', 22)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (131, N'Niam', N'tốt đẹp', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (132, N'Sa', N'thân thể', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (133, N'Niam sa\', N'xin chào', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (134, N'Sơnđan', N'tên', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (135, N'Ừn ngài', N'cảm ơn ', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (136, N'Ngac yơ', N'tạm biệt', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (137, N'Sơnam', N'tuổi', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (138, N'Ru', N'rảnh', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (139, N'Ờ ru', N'không rảnh, bận', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (140, N'Ndai', N'khác', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (141, N'Jà', N'rủ, mời', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (142, N'Mut', N'vào', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (143, N'Hù', N'cuống', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (144, N'Kơp', N'chờ', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (145, N'Git', N'biết', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (146, N'Adat', N'tôn trọng', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (147, N'Trơgùm', N'họp', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (148, N'Ơm', N'ở', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (149, N'Pràn', N'khỏe', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (150, N'Kơldang', N'cứng cáp', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (151, N'Pràn kơldang sơl? (pràn ờ?)', N'có khỏe không?', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (152, N'Pràn đau', N'cũng khỏe', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (153, N'Gơ jal ir', N'vội vàng thế', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (154, N'Mê', N'anh (người ngang hàng) - mày (người nhỏ tuổi hơn)', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (155, N'Mi', N'anh (tôn trọng)', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (156, N'Sồng', N'thì', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (157, N'Ơi!', N'à!', 25)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (158, N'Lơh làng', N'nông dân', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (159, N'Pôgru (pugru)', N'giáo viên', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (160, N'Bak sìh (bác sĩ)', N'bác sĩ', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (161, N'Hìu (hiu)', N'nhà', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (162, N'Bơnha', N'bếp', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (163, N'Hìu nha\', N'gia đình', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (164, N'Phan', N'đồ vật, của cải', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (165, N'Sơnơm', N'thuốc', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (166, N'Dềt', N'nhỏ', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (167, N'Hìu sơnơm dềt', N'trạm y tế', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (168, N'At', N'cầm', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (169, N'At bồ', N'cầm đầu', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (170, N'Cau at bồ', N'trưởng, người lãnh đạo', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (171, N'Yal', N'giới thiệu', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (172, N'Neh', N'đã', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (173, N'Geh', N'có', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (174, N'Kis', N'sống', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (175, N'Sa', N'ăn', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (176, N'Po\ ù', N'cuốc đất', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (177, N'Pơ\ tơngời', N'bẻ bắp', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (178, N'Pic (pik, tik) kà phe', N'hái cà phê', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (179, N'Pic (pik, tic) ce', N'hái chè', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (180, N'Gam', N'đang', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (181, N'Gam rơlùng', N'độc thân', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (182, N'Ha lah', N'hay là', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (183, N'Ai', N'còn', 27)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (184, N'Jơi nòi', N'gia tộc, họ hàng', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (185, N'Làng bol', N'đồng bào, dân', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (186, N'Mè (me, mơi)', N'mẹ', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (187, N'Mlo\', N'cô', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (188, N'Dờng', N'lớn', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (189, N'Dềt', N'nhỏ', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (190, N'Mơi dờng', N'chị của mẹ', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (191, N'Mơi dềt', N'dì (em của mẹ)', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (192, N'Ồng', N'ông', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (193, N'Mò (pàng)', N'bà', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (194, N'Bàp (bèp, bà)', N'cha', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (195, N'Wa', N'chú', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (196, N'Ùr', N'gái, nữ', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (197, N'Klau', N'trai, nam', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (198, N'Wa ùr', N'thím, mợ', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (199, N'Bau (bơ) Klau', N'chồng', 33)
GO
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (200, N'Bau (pơ) ùr', N'vợ', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (201, N'Ùr bơlau', N'vợ chồng', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (202, N'Kòn klau', N'con trai', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (203, N'Kòn ùr', N'con gái', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (204, N'Kòn tơnhoa', N'con cả', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (205, N'Còp (cùl, jồ)', N'thăm', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (206, N'Kup', N'bắt, cưới', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (207, N'Bau', N'cưới', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (208, N'Ala\', N'tất cả, các', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (209, N'Sùm', N'thường', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (210, N'Rau', N'rồi', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (211, N'Neh geh', N'đã có', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (212, N'Dê', N'của', 33)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (213, N'Adu\', N'lớp', 38)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (214, N'Klờng', N'trường', 38)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (215, N'Bơta lơh bơdìh', N'hoạt động, công việc ở ngoài trời', 38)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (216, N'Gơp bơyô', N'bạn bè', 38)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (217, N'Kơnòm', N'trẻ', 38)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (218, N'Kơnòm bơsram', N'học sinh', 38)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (219, N'Jak', N'giỏi', 38)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (220, N'Trơyang (triang)', N'chăm chỉ', 38)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (221, N'Crih ròm', N'hát hay', 38)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (222, N'Tơnia chài', N'múa khéo', 38)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (223, N'Dong kờl', N'giúp đỡ', 38)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (224, N'Jak rơlau', N'giỏi hơn', 38)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (225, N'Mìng', N'chỉ', 38)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (226, N'Pa', N'mới', 38)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (227, N'Mbe gơlơh?', N'như thế nào?', 38)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (228, N'Suơn', N'vườn', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (229, N'Wer', N'mảng', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (230, N'Plai', N'trái cây', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (231, N'Tờm pơnat', N'cây mít', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (232, N'Pơồs', N'ổi', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (233, N'Bơ', N'bơ', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (234, N'Can\', N'chanh', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (235, N'Mpung prìt', N'bụi chuối', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (236, N'Tào', N'mía', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (237, N'Biap', N'rau', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (238, N'Rơpoal', N'bí đỏ', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (239, N'Bơkào', N'hoa', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (240, N'Adu\ nac', N'phòng khách', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (241, N'Tru\', N'nấu', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (242, N'Hìu tru\ sa', N'nhà bếp', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (243, N'Đam', N'kho', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (244, N'Jơnờng nggui', N'ghế', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (245, N'Kơ[àng', N'bàn', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (246, N'Tùh mrềt', N'tủ lạnh', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (247, N'Bềl', N'chiếu', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (248, N'Ồs', N'lửa', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (249, N'Đèng', N'đèn', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (250, N'Chi', N'cây', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (251, N'Anàng', N'rộng', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (252, N'Wêt', N'chật hẹp', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (253, N'Lơngit (ram)', N'mát', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (254, N'Sàng goh', N'sạch sẽ', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (255, N'Àng', N'sáng', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (256, N'Tơl', N'đủ', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (257, N'Ơn', N'chứa', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (258, N'Nggui', N'ngồi', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (259, N'N|ô trơnờm', N'uống rượu', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (260, N'Ròng', N'nuôi', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (261, N'Siam', N'cho ăn', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (262, N'Ròng siam', N'chăn nuôi', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (263, N'Tam tờm chi sa plai', N'trồng cây ăn quả', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (264, N'Gùt dar', N'chung quanh', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (265, N'Pah nam', N'quanh năm', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (266, N'Ngan', N'lắm', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (267, N'Bơh', N'bằng', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (268, N'Mơya', N'nhưng', 43)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (269, N'Rài', N'cuộc đời', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (270, N'Kis', N'sống', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (271, N'Rài kis', N'đời sống', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (272, N'Kàl', N'mùa, dịp', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (273, N'Sre', N'ruộng', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (274, N'Kòi', N'lúa', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (275, N'Trồ', N'trời', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (276, N'Ồng', N'ông, cụ', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (277, N'Ntum', N'dọng họ', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (278, N'Kòn sau', N'con cháu', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (279, N'Kòn se (dềt)', N'con nít, trẻ em', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (280, N'Đềt mềr', N'thân thiết', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (281, N'Bơne\ bơnài', N'say sưa', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (282, N'Prang khia', N'knắng gắt', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (283, N'Mang', N'tối', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (284, N'Jơngo klê', N'tối thui', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (285, N'Rơbah', N'nghèo', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (286, N'Bòl glar', N'khổ cực', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (287, N'Ờs', N'thường', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (288, N'Di mơ lơm', N'vừa thôi', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (289, N'Oă (ua\)', N'nhiều', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (290, N'Gờm', N'mừng', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (291, N'Chơt', N'chết', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (292, N'Jơh', N'hết', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (293, N'Ròng', N'nuôi', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (294, N'Siam', N'cho ăn', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (295, N'Ê', N'chăn', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (296, N'Ròng siam (ê)', N'chăn nuôi', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (297, N'Hùc dà', N'uống nước', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (298, N'Tìp mát', N'họp mặt', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (299, N'Tàm gơl', N'thay đổi', 49)
GO
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (300, N'Pa', N'mới', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (301, N'Yau', N'cũ, xưa', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (302, N'Yal', N'kể', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (303, N'Yal yau', N'kể chuyện xưa', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (304, N'Mus mìr', N'phát rẫy', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (305, N'Ờ huan', N'không nhiều, ít khi', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (306, N'Lài òr', N'trước đây, ngày trước', 49)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (307, N'Puà bòn', N'trưởng thôn', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (308, N'Phan', N'sản phẩm, đồ đạc', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (309, N'Chi phan sa', N'cây lương thực', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (310, N'Iar', N'gà', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (311, N'Ada', N'vịt', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (312, N'Sur', N'heo', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (313, N'Khoah (khuah)', N'đậu', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (314, N'Gal', N'đông', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (315, N'Gal tơl', N'đông đủ', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (316, N'Gơ mù', N'xuống, hạ thấp', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (317, N'Kờn\', N'thích, muốn', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (318, N'Gơboh', N'thương, yêu', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (319, N'Kờn\ gơboh', N'yêu mếm', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (320, N'Git adat', N'kính trọng', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (321, N'Rơcang', N'chuẩn bị, phòng ngừa', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (322, N'Sreh sơbì', N'chặt bỏ', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (323, N'Ràc', N'khuyên', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (324, N'Bơtơl', N'thêm', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (325, N'Tai', N'nữa', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (326, N'Gan', N'đi qua', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (327, N'Se\', N'rẽ', 54)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (328, N'Tiah (ù)', N'đất', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (329, N'Kơh', N'dốc', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (330, N'Bơnơm', N'núi', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (331, N'Kơh bơnơm', N'miền núi, cao nguyên', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (332, N'Dà lơgar', N'đất nước, Nhà nước', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (333, N'Trơlung', N'giếng', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (334, N'Phe', N'gạo', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (335, N'Bùm', N'khoai', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (336, N'Nơm', N'cái, con', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (337, N'Biài', N'vải', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (338, N'Rà', N'nhiều', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (339, N'Nhừm', N'mát', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (340, N'Kờl jap', N'bền', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (341, N'Ờ lah', N'làm biếng, lười', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (342, N'Sền', N'nhìn', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (343, N'Go\', N'thấy', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (344, N'Iat', N'nghe', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (345, N'Yal brê', N'kể chuyện, nói chuyện', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (346, N'Nggui gời', N'ngồi không', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (347, N'Chờ', N'vui', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (348, N'Chờ hờp (chờ gờm)', N'vui vẻ', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (349, N'Pà', N'cho', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (350, N'Jào ù', N'giao đất', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (351, N'Blơi', N'mua', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (352, N'Tac', N'bán', 59)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (353, N'Mìu', N'mưa', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (354, N'Càl', N'gió', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (355, N'Mìu càl', N'thời tiết', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (356, N'Tơngai', N'nắng', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (357, N'Mhual', N'mây', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (358, N'Rơbut', N'bão', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (359, N'Dà sòr', N'nước lũ', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (360, N'Dồ', N'khỉ', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (361, N'Mpồl', N'đàn, nhóm, đội, đoàn, …', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (362, N'Rờnu\', N'chòi nhỏ', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (363, N'Brê dơr', N'rừng rậm', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (364, N'Jit jir', N'liên miên', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (365, N'Jơngo', N'âm u', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (366, N'Duêt', N'ít', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (367, N'Cò', N'chảy', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (368, N'Ko\', N'tràn', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (369, N'Pơrdô', N'trôi nổi', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (370, N'Gơkua', N'trôi', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (371, N'Aniai', N'phá hoại', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (372, N'Khồm', N'thổi', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (373, N'Mus', N'phát cây nhỏ', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (374, N'Kơl', N'hạ cây lớn', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (375, N'Gờwèt', N'thuộc về', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (376, N'Rơp', N'sẽ', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (377, N'Gen', N'thì', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (378, N'Di lah', N'nếu', 67)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (379, N'Trồ', N'trời', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (380, N'Tiah', N'đất', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (381, N'Trồ tiah', N'môi trường', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (382, N'Jơtài', N'gia tài, tài sản', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (383, N'Jơi', N'đồng vật, giống, dòng, họ', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (384, N'So rơhau', N'chó sói', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (385, N'Jùn', N'nai', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (386, N'Prò', N'sóc', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (387, N'Sềm', N'chim', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (388, N'Ka', N'cá', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (389, N'Kati', N'tôm', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (390, N'Bràs', N'cát', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (391, N'Nho', N'ngo, thông', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (392, N'Ba\ brê', N'cụm rừng', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (393, N'Biàng', N'vàng', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (394, N'Màh', N'bạc', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (395, N'Dà sơdiang (croh)', N'suối', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (396, N'Dà dờng', N'sông', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (397, N'Dà lềng', N'biển', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (398, N'M[ùl', N'phì nhiêu', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (399, N'Gơs', N'hình thành', 72)
GO
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (400, N'Dra\', N'chống', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (401, N'Gàr', N'giữ', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (402, N'Grap gàr', N'bảo vệ', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (403, N'Krơyan', N'ngăn chặn', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (404, N'Tong (ai)', N'đưa', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (405, N'Bơtơl', N'thêm, góp, tăng cường', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (406, N'Hòr', N'chảy', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (407, N'Jroh siar', N'xói mòn', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (408, N'Gơko\', N'ngập lụt', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (409, N'Be', N'như', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (410, N'Đo', N'phụ từ', 72)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (411, N'Kòn chi', N'cây con', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (412, N'Rơyas chi', N'rễ cây', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (413, N'Ntê', N'cành, tán', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (414, N'Nha', N'lá', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (415, N'Cồng nha', N'ích lợi', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (416, N'Kuơ màng', N'quý giá', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (417, N'Cau kra', N'cụ già', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (418, N'Rơwas', N'voi', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (419, N'Krih', N'cọp', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (420, N'Jrơke', N'heo rừng', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (421, N'Phan bơna', N'tài nguyên, tài sản', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (422, N'Sra\ pơ àr', N'giấy tờ', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (423, N'Bơto', N'dạy', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (424, N'Sơnđio', N'chỉ', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (425, N'Pơlam cròng', N'dìu dắt', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (426, N'Sơnđio pơlam', N'hướng dẫn', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (427, N'Jat', N'theo', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (428, N'Dờp ù', N'nhận đất', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (429, N'Sơng ka', N'chăm sóc', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (430, N'Kìng càl', N'chắn gió', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (431, N'Gơlơh', N'bị', 77)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (432, N'Chài rơgơi', N'văn hóa', 83)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (433, N'Krơnuat', N'quy ước', 83)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (434, N'Jrào phiơn', N'thuốc phiện', 83)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (435, N'Bơta pin gời', N'mê tín di đoan', 83)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (436, N'Bơta ờ doing', N'điều xấu', 83)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (437, N'Bơtào', N'dựng, xây dựng', 83)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (438, N'Bơtê bơto', N'dạy giỗ, giáo dục', 83)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (439, N'Jà', N'mời', 83)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (440, N'Hòi', N'gọi', 83)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (441, N'Jà hòi', N'phát động', 83)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (442, N'Pồ', N'bầu', 83)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (443, N'Cit ma túy', N'chích ma túy', 83)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (444, N'Pin', N'tin', 83)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (445, N'Jat', N'theo', 83)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (446, N'Krung', N'cũng', 83)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (447, N'Làng (nàng)', N'để', 83)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (448, N'Di', N'được, đúng', 83)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (449, N'Rơnàng', N'thế hệ', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (450, N'Bòr', N'dàn', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (451, N'Mồng', N'cồng', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (452, N'Cing', N'chiêng', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (453, N'Bơngàn', N'chén', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (454, N'Pơnat piang pat', N'nắm cơm vắt', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (455, N'Kòng', N'còng', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (456, N'Tàm bau', N'đám cưới', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (457, N'Brơtơu', N'chàng rể', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (458, N'Ban', N'cô dâu', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (459, N'N|òng kèo', N'chuỗi cườm', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (460, N'Rùp', N'hình ảnh', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (461, N'Nùs', N'lòng', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (462, N'Nhơm', N'hơi thở', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (463, N'Nùs nhơm', N'tinh thần', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (464, N'Đơs tàm pơt', N'đối đáp', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (465, N'Đơs long', N'giao duyên', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (466, N'Chơt', N'chết', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (467, N'Chơt jê', N'chết chóc', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (468, N'Phan kuơ', N'của quý, tài sản', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (469, N'Bơh yau', N'truyền thống (từ xưa)', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (470, N'Rà', N'nhiều', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (471, N'Ròm', N'hay', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (472, N'Tơlik', N'cho ra', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (473, N'Sơnđio tơlik', N'chỉ dẫn', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (474, N'Hồ', N'cởi', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (475, N'Jàu', N'trao', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (476, N'Lời', N'để, thôi', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (477, N'Ala', N'thay mặt', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (478, N'Tờng git', N'thông báo', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (479, N'Đơs tờng git', N'tuyên bố', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (480, N'Gơjềng', N'thành', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (481, N'Pin dờn', N'tin tưởng', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (482, N'Pơr gon', N'hứa hẹn', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (483, N'Pơnđiangru', NULL, 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (484, N'Ngui', N'dùng', 88)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (485, N'Tềl', N'dấu', 93)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (486, N'Rơpu', N'trâu', 93)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (487, N'Dar', N'vòng', 93)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (488, N'Is ồn', N'duy nhất', 93)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (489, N'Dut ndơl', N'cuối cùng', 93)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (490, N'Tơn dut', N'kết thúc', 93)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (491, N'Tùc', N'chọc lỗ', 93)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (492, N'Siah', N'tỉa hạt', 93)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (493, N'Sih', N'sạ', 93)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (494, N'Tơn hào', N'thu hoạch', 93)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (495, N'Sap', N'sắp', 93)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (496, N'Rơndap', N'xếp', 93)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (497, N'Sap rơndap', N'tổ chức', 93)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (498, N'Bơ thi bồc', N'bỏ mả', 93)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (499, N'Gơ tus', N'diễn ra, đến', 93)
GO
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (500, N'Tur (dròng) cing', N'đánh chiêng', 93)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (501, N'Jan mồng', N'đánh cồng', 93)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (502, N'Dà lơgar', N'đất nước, Tổ quốc', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (503, N'Lơngap is', N'độc lập', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (504, N'Khat gơboh', N'tự do', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (505, N'Kac màng', N'cách mạng', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (506, N'Jai (pha)', N'thắng', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (507, N'Gơnuar at bồ', N'chính phủ', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (508, N'Lèh', N'lễ', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (509, N'Mitting', N'mít tinh', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (510, N'Kơ pơrhê', N'cờ đỏ', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (511, N'Srơman\ rơmit', N'sao vàng', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (512, N'Sap', N'tiếng', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (513, N'Di', N'đúng', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (514, N'Sơnrờp', N'đầu tiên', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (515, N'Jòng', N'dài', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (516, N'Jơnhau', N'cao', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (517, N'Nting', N'dặn dò', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (518, N'Chờ gờm', N'chào mừng', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (519, N'Gơlik gơs', N'khai sinh', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (520, N'Adat', N'tôn trọng', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (521, N'Bơceh', N'sáng tác', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (522, N'Tề lam', N'dẫn dắt', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (523, N'Cèng', N'mang', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (524, N'Sền', N'nhìn', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (525, N'Go\', N'thấy', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (526, N'Wờng', N'hiểu, biết', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (527, N'Lòt bơtrùi', N'hành quân', 99)
INSERT [dbo].[TuVung] ([ID], [KHo], [Viet], [IDDanhMucCon]) VALUES (528, N'Sơrlèt bồ', N'phản bội', 99)
SET IDENTITY_INSERT [dbo].[TuVung] OFF
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
