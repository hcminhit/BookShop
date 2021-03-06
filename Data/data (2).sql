USE [master]
GO
/****** Object:  Database [QuanLyBanSachbyMinh]    Script Date: 09/06/2020 11:51:56 CH ******/
CREATE DATABASE [QuanLyBanSachbyMinh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanSachbyMinh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QuanLyBanSachbyMinh.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyBanSachbyMinh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QuanLyBanSachbyMinh_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanSachbyMinh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QuanLyBanSachbyMinh]
GO
/****** Object:  Table [dbo].[Chinhanh]    Script Date: 09/06/2020 11:51:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Chinhanh](
	[Macn] [int] IDENTITY(1,1) NOT NULL,
	[Tencn] [nvarchar](100) NULL,
	[Diachi] [nvarchar](100) NULL,
	[Sdt] [varchar](20) NULL,
	[Email] [nvarchar](100) NULL,
	[Hinh] [nvarchar](200) NULL,
 CONSTRAINT [PK_Chinhanh] PRIMARY KEY CLUSTERED 
(
	[Macn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietGioHang]    Script Date: 09/06/2020 11:51:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGioHang](
	[ChitietgiohangID] [int] IDENTITY(1,1) NOT NULL,
	[GiohangkhID] [int] NULL,
	[Masach] [int] NULL,
	[Soluong] [int] NULL,
	[Thanhtien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietGioHang] PRIMARY KEY CLUSTERED 
(
	[ChitietgiohangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Chude]    Script Date: 09/06/2020 11:51:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Chude](
	[Macd] [int] IDENTITY(1,1) NOT NULL,
	[Tenchude] [nvarchar](100) NULL,
	[Key] [varchar](30) NULL,
 CONSTRAINT [PK_Chude] PRIMARY KEY CLUSTERED 
(
	[Macd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Giohangkh]    Script Date: 09/06/2020 11:51:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giohangkh](
	[GiohangkhID] [int] IDENTITY(1,1) NOT NULL,
	[Makh] [int] NULL,
	[Ngaymua] [smalldatetime] NULL,
	[Tongtien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Giohangkh] PRIMARY KEY CLUSTERED 
(
	[GiohangkhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Khachhang]    Script Date: 09/06/2020 11:51:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Khachhang](
	[Makh] [int] IDENTITY(1,1) NOT NULL,
	[Hotenkh] [nvarchar](100) NULL,
	[Diachikh] [nvarchar](100) NULL,
	[Dienthoaikh] [varchar](20) NULL,
	[Tendn] [nvarchar](50) NULL,
	[Matkhau] [nvarchar](100) NULL,
	[Ngaysinh] [smalldatetime] NULL,
	[Gioitinh] [bit] NULL,
	[Email] [nvarchar](100) NULL,
	[Quyen] [int] NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[Makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Nhaxuatban]    Script Date: 09/06/2020 11:51:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhaxuatban](
	[Manxb] [int] IDENTITY(1,1) NOT NULL,
	[Tennxb] [nvarchar](100) NULL,
 CONSTRAINT [PK_Nhaxuatban] PRIMARY KEY CLUSTERED 
(
	[Manxb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 09/06/2020 11:51:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[Masach] [int] IDENTITY(1,1) NOT NULL,
	[Tensach] [nvarchar](200) NULL,
	[Dongia] [decimal](18, 0) NULL,
	[Donvitinh] [nvarchar](10) NULL,
	[Mota] [ntext] NULL,
	[Hinhminhhoa] [nvarchar](200) NULL,
	[Macd] [int] NULL,
	[Manxb] [int] NULL,
	[Ngaycapnhat] [smalldatetime] NULL,
	[Matacgia] [int] NULL,
	[Soluong] [int] NULL,
	[Giakm] [decimal](18, 0) NULL,
	[Motangangon] [ntext] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[Masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tacgia]    Script Date: 09/06/2020 11:51:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tacgia](
	[Matacgia] [int] IDENTITY(1,1) NOT NULL,
	[Tentacgia] [nvarchar](100) NULL,
 CONSTRAINT [PK_Tacgia] PRIMARY KEY CLUSTERED 
(
	[Matacgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ChiTietGioHang] ON 

INSERT [dbo].[ChiTietGioHang] ([ChitietgiohangID], [GiohangkhID], [Masach], [Soluong], [Thanhtien]) VALUES (1, 12, 7, 1, CAST(30 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietGioHang] ([ChitietgiohangID], [GiohangkhID], [Masach], [Soluong], [Thanhtien]) VALUES (2, 13, 6, 3, CAST(114 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietGioHang] OFF
SET IDENTITY_INSERT [dbo].[Chude] ON 

INSERT [dbo].[Chude] ([Macd], [Tenchude], [Key]) VALUES (1, N'sách kinh tế', N'kt')
INSERT [dbo].[Chude] ([Macd], [Tenchude], [Key]) VALUES (2, N'Sách văn học trong nước', N'vhtn')
INSERT [dbo].[Chude] ([Macd], [Tenchude], [Key]) VALUES (3, N'Sách văn học nước ngoài', N'vhnn')
INSERT [dbo].[Chude] ([Macd], [Tenchude], [Key]) VALUES (4, N'Sách thiếu nhi', N'tn')
INSERT [dbo].[Chude] ([Macd], [Tenchude], [Key]) VALUES (5, N'Sách chuyên ngành', N'cn')
INSERT [dbo].[Chude] ([Macd], [Tenchude], [Key]) VALUES (6, N'Sách Giáo khoa - Giáo trình', N'gk')
INSERT [dbo].[Chude] ([Macd], [Tenchude], [Key]) VALUES (7, N'Sách tin học', N'th')
INSERT [dbo].[Chude] ([Macd], [Tenchude], [Key]) VALUES (8, N'Sách Tiếng Anh', N'ta')
SET IDENTITY_INSERT [dbo].[Chude] OFF
SET IDENTITY_INSERT [dbo].[Giohangkh] ON 

INSERT [dbo].[Giohangkh] ([GiohangkhID], [Makh], [Ngaymua], [Tongtien]) VALUES (1, 1, CAST(N'2020-06-09 20:12:00' AS SmallDateTime), CAST(30 AS Decimal(18, 0)))
INSERT [dbo].[Giohangkh] ([GiohangkhID], [Makh], [Ngaymua], [Tongtien]) VALUES (2, 1, CAST(N'2020-06-09 20:14:00' AS SmallDateTime), CAST(30 AS Decimal(18, 0)))
INSERT [dbo].[Giohangkh] ([GiohangkhID], [Makh], [Ngaymua], [Tongtien]) VALUES (3, 1, CAST(N'2020-06-09 20:21:00' AS SmallDateTime), CAST(30 AS Decimal(18, 0)))
INSERT [dbo].[Giohangkh] ([GiohangkhID], [Makh], [Ngaymua], [Tongtien]) VALUES (4, 1, CAST(N'2020-06-09 20:27:00' AS SmallDateTime), CAST(30 AS Decimal(18, 0)))
INSERT [dbo].[Giohangkh] ([GiohangkhID], [Makh], [Ngaymua], [Tongtien]) VALUES (5, 1, CAST(N'2020-06-09 20:30:00' AS SmallDateTime), CAST(30 AS Decimal(18, 0)))
INSERT [dbo].[Giohangkh] ([GiohangkhID], [Makh], [Ngaymua], [Tongtien]) VALUES (6, 1, CAST(N'2020-06-09 20:30:00' AS SmallDateTime), CAST(30 AS Decimal(18, 0)))
INSERT [dbo].[Giohangkh] ([GiohangkhID], [Makh], [Ngaymua], [Tongtien]) VALUES (7, 1, CAST(N'2020-06-09 20:35:00' AS SmallDateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Giohangkh] ([GiohangkhID], [Makh], [Ngaymua], [Tongtien]) VALUES (8, 1, CAST(N'2020-06-09 20:44:00' AS SmallDateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Giohangkh] ([GiohangkhID], [Makh], [Ngaymua], [Tongtien]) VALUES (9, 1, CAST(N'2020-06-09 20:45:00' AS SmallDateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Giohangkh] ([GiohangkhID], [Makh], [Ngaymua], [Tongtien]) VALUES (10, 1, CAST(N'2020-06-09 20:48:00' AS SmallDateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Giohangkh] ([GiohangkhID], [Makh], [Ngaymua], [Tongtien]) VALUES (11, 1, CAST(N'2020-06-09 20:50:00' AS SmallDateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Giohangkh] ([GiohangkhID], [Makh], [Ngaymua], [Tongtien]) VALUES (12, 1, CAST(N'2020-06-09 20:54:00' AS SmallDateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Giohangkh] ([GiohangkhID], [Makh], [Ngaymua], [Tongtien]) VALUES (13, 4, CAST(N'2020-06-09 22:55:00' AS SmallDateTime), CAST(0 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Giohangkh] OFF
SET IDENTITY_INSERT [dbo].[Khachhang] ON 

INSERT [dbo].[Khachhang] ([Makh], [Hotenkh], [Diachikh], [Dienthoaikh], [Tendn], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Quyen]) VALUES (1, N'Nguyễn Văn Phong', N'Hải Phòng', N'0987654321', N'vanphong', N'12345', CAST(N'1998-09-28 00:00:00' AS SmallDateTime), 1, N'vanphong6822@gmail.com', 1)
INSERT [dbo].[Khachhang] ([Makh], [Hotenkh], [Diachikh], [Dienthoaikh], [Tendn], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Quyen]) VALUES (2, N'Nguyen Van Phong', N'Ha Noi', N'0964409463', N'vanphong22', N'12345', CAST(N'2020-06-08 00:00:00' AS SmallDateTime), NULL, N'vanphong681212@gmail.com', 1)
INSERT [dbo].[Khachhang] ([Makh], [Hotenkh], [Diachikh], [Dienthoaikh], [Tendn], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Quyen]) VALUES (3, N'Nguyen Van Phong', N'Ha Noi', N'0964409463', N'vanph', N'12345', CAST(N'2020-06-08 00:00:00' AS SmallDateTime), 1, N'vanphong6811212@gmail.com', 1)
INSERT [dbo].[Khachhang] ([Makh], [Hotenkh], [Diachikh], [Dienthoaikh], [Tendn], [Matkhau], [Ngaysinh], [Gioitinh], [Email], [Quyen]) VALUES (4, N'Hoang Cong Minh', N'Hưng Yên', N'1234567890', N'minhmap', N'12345', CAST(N'2020-06-08 00:00:00' AS SmallDateTime), 1, N'minh@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[Khachhang] OFF
SET IDENTITY_INSERT [dbo].[Nhaxuatban] ON 

INSERT [dbo].[Nhaxuatban] ([Manxb], [Tennxb]) VALUES (1, N'NXB Kim Đồng')
INSERT [dbo].[Nhaxuatban] ([Manxb], [Tennxb]) VALUES (2, N'NXB Trẻ')
INSERT [dbo].[Nhaxuatban] ([Manxb], [Tennxb]) VALUES (3, N'NXB Tổng hợp TPHCM')
INSERT [dbo].[Nhaxuatban] ([Manxb], [Tennxb]) VALUES (4, N'NXB Giáo dục')
INSERT [dbo].[Nhaxuatban] ([Manxb], [Tennxb]) VALUES (5, N'NXB Thanh niên')
INSERT [dbo].[Nhaxuatban] ([Manxb], [Tennxb]) VALUES (6, N'NXB Hồng Đức')
INSERT [dbo].[Nhaxuatban] ([Manxb], [Tennxb]) VALUES (7, N'NXB Chính tri quốc gia')
INSERT [dbo].[Nhaxuatban] ([Manxb], [Tennxb]) VALUES (8, N'NXB Lao động')
INSERT [dbo].[Nhaxuatban] ([Manxb], [Tennxb]) VALUES (9, N'NXB Quân đội')
SET IDENTITY_INSERT [dbo].[Nhaxuatban] OFF
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Macd], [Manxb], [Ngaycapnhat], [Matacgia], [Soluong], [Giakm], [Motangangon]) VALUES (2, N'Autumn a novel', CAST(52 AS Decimal(18, 0)), N'Quyển', N'Đây là mô tả đầy đủ', N'13.jpg', 1, 1, CAST(N'2020-05-18 10:51:00' AS SmallDateTime), 1, 120, CAST(52 AS Decimal(18, 0)), N'Đây là mô tả ngắn gọn')
INSERT [dbo].[Sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Macd], [Manxb], [Ngaycapnhat], [Matacgia], [Soluong], [Giakm], [Motangangon]) VALUES (3, N'Blood in the water', CAST(54 AS Decimal(18, 0)), N'Quyển', N'Đây là mô tả đầy đủ', N'2.jpg', 2, 2, CAST(N'2020-05-18 10:51:00' AS SmallDateTime), 2, 30, CAST(46 AS Decimal(18, 0)), N'Đây là mô tả ngắn gọn')
INSERT [dbo].[Sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Macd], [Manxb], [Ngaycapnhat], [Matacgia], [Soluong], [Giakm], [Motangangon]) VALUES (4, N'Madness overrated', CAST(39 AS Decimal(18, 0)), N'Quyển', N'Đây là mô tả đầy đủ', N'14.jpg', 3, 3, CAST(N'2020-05-18 10:51:00' AS SmallDateTime), 3, 120, CAST(30 AS Decimal(18, 0)), N'Đây là mô tả ngắn gọn')
INSERT [dbo].[Sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Macd], [Manxb], [Ngaycapnhat], [Matacgia], [Soluong], [Giakm], [Motangangon]) VALUES (5, N'I am watching you', CAST(60 AS Decimal(18, 0)), N'Quyển', N'Đây là mô tả đầy đủ', N'15.jpg', 4, 4, CAST(N'2020-05-18 10:51:00' AS SmallDateTime), 4, 120, CAST(50 AS Decimal(18, 0)), N'Đây là mô tả ngắn gọn')
INSERT [dbo].[Sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Macd], [Manxb], [Ngaycapnhat], [Matacgia], [Soluong], [Giakm], [Motangangon]) VALUES (6, N'War of dragon', CAST(46 AS Decimal(18, 0)), N'Quyển', N'Đây là mô tả đầy đủ', N'10.jpg', 5, 5, CAST(N'2020-05-18 10:51:00' AS SmallDateTime), 5, 120, CAST(38 AS Decimal(18, 0)), N'Đây là mô tả ngắn gọn')
INSERT [dbo].[Sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Macd], [Manxb], [Ngaycapnhat], [Matacgia], [Soluong], [Giakm], [Motangangon]) VALUES (7, N'Animals life', CAST(34 AS Decimal(18, 0)), N'Quyển', N'Đây là mô tả đầy đủ', N'3.jpg', 6, 6, CAST(N'2020-05-18 10:51:00' AS SmallDateTime), 1, 120, CAST(30 AS Decimal(18, 0)), N'Đây là mô tả ngắn gọn')
INSERT [dbo].[Sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Macd], [Manxb], [Ngaycapnhat], [Matacgia], [Soluong], [Giakm], [Motangangon]) VALUES (8, N'Alone Walker', CAST(42 AS Decimal(18, 0)), N'Quyển', N'Đây là mô tả đầy đủ', N'11.jpg', 1, 1, CAST(N'2020-05-18 10:51:00' AS SmallDateTime), 2, 120, CAST(36 AS Decimal(18, 0)), N'Đây là mô tả ngắn gọn')
INSERT [dbo].[Sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Macd], [Manxb], [Ngaycapnhat], [Matacgia], [Soluong], [Giakm], [Motangangon]) VALUES (9, N'New world for children', CAST(50 AS Decimal(18, 0)), N'Quyển', N'Đây là mô tả đầy đủ', N'9.jpg', 2, 2, CAST(N'2020-05-18 10:51:00' AS SmallDateTime), 3, 50, CAST(44 AS Decimal(18, 0)), N'Đây là mô tả ngắn gọn')
INSERT [dbo].[Sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Macd], [Manxb], [Ngaycapnhat], [Matacgia], [Soluong], [Giakm], [Motangangon]) VALUES (10, N'Our world our life', CAST(32 AS Decimal(18, 0)), N'Quyển', N'Đây là mô tả đầy đủ', N'1.jpg', 3, 3, CAST(N'2020-05-18 10:51:00' AS SmallDateTime), 4, 12, CAST(30 AS Decimal(18, 0)), N'Đây là mô tả ngắn gọn')
INSERT [dbo].[Sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Macd], [Manxb], [Ngaycapnhat], [Matacgia], [Soluong], [Giakm], [Motangangon]) VALUES (11, N'The hunter house', CAST(34 AS Decimal(18, 0)), N'Quyển', N'Đây là mô tả đầy đủ', N'12.jpg', 4, 4, CAST(N'2020-05-18 10:51:00' AS SmallDateTime), 5, 40, CAST(30 AS Decimal(18, 0)), N'Đây là mô tả ngắn gọn')
INSERT [dbo].[Sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Macd], [Manxb], [Ngaycapnhat], [Matacgia], [Soluong], [Giakm], [Motangangon]) VALUES (12, N'Olio', CAST(43 AS Decimal(18, 0)), N'Quyển', N'Đây là mô tả đầy đủ', N'7.jpg', 5, 5, CAST(N'2020-05-18 10:51:00' AS SmallDateTime), 1, 125, CAST(36 AS Decimal(18, 0)), N'Đây là mô tả ngắn gọn')
INSERT [dbo].[Sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Macd], [Manxb], [Ngaycapnhat], [Matacgia], [Soluong], [Giakm], [Motangangon]) VALUES (13, N'Art of illustrator', CAST(42 AS Decimal(18, 0)), N'Quyển', N'Đây là mô tả đầy đủ', N'8.jpg', 6, 6, CAST(N'2020-05-18 10:51:00' AS SmallDateTime), 2, 120, CAST(36 AS Decimal(18, 0)), N'Đây là mô tả ngắn gọn')
SET IDENTITY_INSERT [dbo].[Sach] OFF
SET IDENTITY_INSERT [dbo].[Tacgia] ON 

INSERT [dbo].[Tacgia] ([Matacgia], [Tentacgia]) VALUES (1, N'Ernest Miller Hemingway')
INSERT [dbo].[Tacgia] ([Matacgia], [Tentacgia]) VALUES (2, N'Franz Kafka')
INSERT [dbo].[Tacgia] ([Matacgia], [Tentacgia]) VALUES (3, N'J.R.R.Tolkien')
INSERT [dbo].[Tacgia] ([Matacgia], [Tentacgia]) VALUES (4, N'Gabriel Garcia Marquez')
INSERT [dbo].[Tacgia] ([Matacgia], [Tentacgia]) VALUES (5, N'Harper Lee')
SET IDENTITY_INSERT [dbo].[Tacgia] OFF
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_Giohangkh] FOREIGN KEY([GiohangkhID])
REFERENCES [dbo].[Giohangkh] ([GiohangkhID])
GO
ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_ChiTietGioHang_Giohangkh]
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_Sach] FOREIGN KEY([Masach])
REFERENCES [dbo].[Sach] ([Masach])
GO
ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_ChiTietGioHang_Sach]
GO
ALTER TABLE [dbo].[Giohangkh]  WITH CHECK ADD  CONSTRAINT [FK_Giohangkh_Khachhang] FOREIGN KEY([Makh])
REFERENCES [dbo].[Khachhang] ([Makh])
GO
ALTER TABLE [dbo].[Giohangkh] CHECK CONSTRAINT [FK_Giohangkh_Khachhang]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_Chude] FOREIGN KEY([Macd])
REFERENCES [dbo].[Chude] ([Macd])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_Chude]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_Nhaxuatban] FOREIGN KEY([Manxb])
REFERENCES [dbo].[Nhaxuatban] ([Manxb])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_Nhaxuatban]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_Tacgia] FOREIGN KEY([Matacgia])
REFERENCES [dbo].[Tacgia] ([Matacgia])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_Tacgia]
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanSachbyMinh] SET  READ_WRITE 
GO
