USE [master]
GO
/****** Object:  Database [BDQUANLYLUONG]    Script Date: 7/4/2018 11:46:57 PM ******/
CREATE DATABASE [BDQUANLYLUONG]
GO
USE [BDQUANLYLUONG]
GO
/****** Object:  Table [dbo].[BacLuong]    Script Date: 7/4/2018 11:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BacLuong](
	[MaBacLuong] [int] IDENTITY(1,1) NOT NULL,
	[MaChucVu] [int] NULL,
	[TenBacLuong] [nvarchar](255) NULL,
	[HSLuong] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBacLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CauHinh]    Script Date: 7/4/2018 11:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CauHinh](
	[Khoa] [varchar](255) NOT NULL,
	[GiaTri] [nvarchar](255) NULL,
	[MoTa] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Khoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChamCong]    Script Date: 7/4/2018 11:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChamCong](
	[MaNhanVien] [int] NOT NULL,
	[Ngay] [date] NOT NULL,
	[SoNgayTangCa] [int] NULL DEFAULT ((0)),
	[SoNgayLam] [int] NULL DEFAULT ((0)),
	[DiMuon] [int] NULL DEFAULT ((0)),
	[VeSom] [int] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC,
	[Ngay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 7/4/2018 11:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [int] IDENTITY(1,1) NOT NULL,
	[TenChucVu] [nvarchar](255) NULL,
	[HSLuong] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 7/4/2018 11:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDong](
	[MaHopDong] [int] IDENTITY(1,1) NOT NULL,
	[NgayKy] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[TinhTrang] [bit] NULL,
	[MaNhanVien] [int] NULL,
	[LoaiHopDong] [int] NULL,
	[MaChucVu] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhenThuong]    Script Date: 7/4/2018 11:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhenThuong](
	[MaKhenThuong] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [int] NULL,
	[NgayKhenThuong] [date] NULL,
	[TienThuong] [float] NULL,
	[LyDo] [nvarchar](255) NULL,
	[TrangThai] [bit] NULL DEFAULT ((0)),
	[HinhThuc] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhenThuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KyLuat]    Script Date: 7/4/2018 11:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KyLuat](
	[MaKyLuat] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [int] NULL,
	[NgayKyLuat] [date] NULL,
	[TienPhat] [float] NULL,
	[LyDo] [nvarchar](255) NULL,
	[TrangThai] [bit] NULL DEFAULT ((0)),
	[HinhThuc] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKyLuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiTaiKhoan]    Script Date: 7/4/2018 11:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoan](
	[MaLoaiTaiKhoan] [int] NOT NULL,
	[TenLoaiTaiKhoan] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LuongNhanVien]    Script Date: 7/4/2018 11:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongNhanVien](
	[MaLNV] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [int] NULL,
	[LuongCoBan] [float] NULL,
	[Thuong] [float] NULL,
	[KyLuat] [float] NULL,
	[LuongTDNN] [float] NULL,
	[LuongTDHV] [float] NULL,
	[HSPCChucVu] [float] NULL,
	[NghiViec] [float] NULL,
	[DieuChinh] [float] NULL,
	[Thue] [float] NULL,
	[LuongThucLinh] [float] NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[NgayTraLuong] [datetime] NULL,
	[TamUng] [int] NULL,
	[LuongThamNien] [float] NULL,
	[PhatNghiViec] [float] NULL,
	[LuongChucVu] [float] NULL,
	[TienBaoHiem] [float] NULL,
	[SoNgayLamViec] [float] NULL DEFAULT ((0)),
	[SoNgayTangCa] [float] NULL DEFAULT ((0)),
	[LuongLamViec] [float] NULL DEFAULT ((0)),
	[LuongTangCa] [float] NULL DEFAULT ((0)),
	[SoLanDiMuonVeSom] [int] NULL DEFAULT ((0)),
	[PhatDiMuonVeSom] [float] NULL DEFAULT ((0)),
	[SoNgayNghi] [int] NULL DEFAULT ((0)),
	[PhiCongDoan] [float] NULL DEFAULT ((0)),
	[LuongSauThue] [float] NULL DEFAULT ((0)),
	[ThuViec] [bit] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[MaLNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NghiViec]    Script Date: 7/4/2018 11:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NghiViec](
	[MaNghiViec] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [int] NULL,
	[ThoiGian] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNghiViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 7/4/2018 11:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](255) NULL,
	[HinhAnh] [varchar](255) NULL,
	[GioiTinh] [nvarchar](255) NULL,
	[NgaySinh] [date] NULL,
	[CMTND] [varchar](255) NULL,
	[DanToc] [nvarchar](255) NULL,
	[TonGiao] [nvarchar](255) NULL,
	[QuocTich] [nvarchar](255) NULL,
	[QueQuan] [nvarchar](255) NULL,
	[DienThoai] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[TinhTrangHonNhan] [nvarchar](255) NULL,
	[ThanhPhanXuatThan] [nvarchar](255) NULL,
	[NangKhieu] [nvarchar](255) NULL,
	[TinhTrangSucKhoe] [nvarchar](255) NULL,
	[BoPhan] [nvarchar](255) NULL,
	[SoQD] [nvarchar](255) NULL,
	[MaPhongBan] [int] NULL,
	[MaChucVu] [int] NULL,
	[MaTrinhDoHocVan] [int] NULL,
	[MaTrinhDoNgoaiNgu] [int] NULL,
	[TinhTrang] [nvarchar](255) NULL,
	[NgayVaoLam] [datetime] NULL,
	[MaBacLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 7/4/2018 11:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPB] [int] IDENTITY(1,1) NOT NULL,
	[TenPB] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuaTrinhCongTac]    Script Date: 7/4/2018 11:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuaTrinhCongTac](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NgayCapNhat] [datetime] NULL,
	[MaNhanVien] [int] NULL,
	[MaChucVu] [int] NULL,
	[MaPhongBan] [int] NULL,
	[MaTrinhDoHocVan] [int] NULL,
	[MaTrinhDoNgoaiNgu] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuaTrinhLuong]    Script Date: 7/4/2018 11:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuaTrinhLuong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NgayCapNhat] [datetime] NULL,
	[MaNhanVien] [int] NULL,
	[MaChucVu] [int] NULL,
	[MaBacLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 7/4/2018 11:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [int] NOT NULL,
	[TenDangNhap] [varchar](255) NULL,
	[MatKhau] [varchar](255) NULL,
	[MaLoaiTaiKhoan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrinhDoHocVan]    Script Date: 7/4/2018 11:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDoHocVan](
	[MaTDHV] [int] IDENTITY(1,1) NOT NULL,
	[TenTDHV] [nvarchar](255) NULL,
	[Luong] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTDHV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrinhDoNgoaiNgu]    Script Date: 7/4/2018 11:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDoNgoaiNgu](
	[MaTDNgoaiNgu] [int] IDENTITY(1,1) NOT NULL,
	[TenTDNgoaiNgu] [nvarchar](255) NULL,
	[Luong] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTDNgoaiNgu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BacLuong] ON 

INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (2, 1, N'Bậc 1', 4.25)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (3, 1, N'Bậc 2', 5.02)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (4, 1, N'Bậc 3', 5.52)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (5, 1, N'Bậc 4', 6.02)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (6, 1, N'Bậc 5', 6.52)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (7, 1, N'Bậc 6', 7.02)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (8, 2, N'Bậc 1', 2.6)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (9, 2, N'Bậc 2', 3)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (10, 2, N'Bậc 3', 3.4)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (11, 2, N'Bậc 4', 3.8)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (12, 2, N'Bậc 5', 4.2)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (13, 2, N'Bậc 6', 4.6)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (14, 2, N'Bậc 7', 5)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (15, 3, N'Bậc 1', 2.6)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (16, 3, N'Bậc 2', 3)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (17, 3, N'Bậc 3', 3.4)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (18, 3, N'Bậc 4', 3.8)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (19, 3, N'Bậc 5', 4.2)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (20, 3, N'Bậc 6', 4.6)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (21, 3, N'Bậc 7', 5)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (22, 6, N'Bậc 1', 2.4)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (23, 6, N'Bậc 2', 2.73)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (24, 6, N'Bậc 3', 3.06)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (25, 6, N'Bậc 4', 3.39)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (26, 6, N'Bậc 5', 3.72)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (27, 6, N'Bậc 6', 4.05)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (28, 6, N'Bậc 7', 4.38)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (29, 9, N'Bậc 1', 2.4)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (30, 9, N'Bậc 2', 2.73)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (31, 9, N'Bậc 3', 3.06)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (32, 9, N'Bậc 4', 3.39)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (33, 9, N'Bậc 5', 3.72)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (34, 9, N'Bậc 6', 4.05)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (35, 9, N'Bậc 7', 4.38)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (36, 10, N'Bậc 1', 2.4)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (37, 10, N'Bậc 2', 2.73)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (38, 10, N'Bậc 3', 3.06)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (39, 10, N'Bậc 4', 3.39)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (40, 10, N'Bậc 5', 3.72)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (41, 10, N'Bậc 6', 4.05)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (42, 10, N'Bậc 7', 4.38)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (43, 11, N'Bậc 1', 2.4)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (44, 11, N'Bậc 2', 2.73)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (45, 11, N'Bậc 3', 3.06)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (46, 11, N'Bậc 4', 3.39)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (47, 11, N'Bậc 5', 3.72)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (48, 11, N'Bậc 6', 4.05)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (49, 11, N'Bậc 7', 4.38)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (50, 12, N'Bậc 1', 3.2)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (51, 12, N'Bậc 2', 3.75)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (52, 12, N'Bậc 3', 4.39)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (53, 12, N'Bậc 4', 5.15)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (57, 13, N'Bậc 1', 1.78)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (58, 13, N'Bậc 2', 2.1)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (59, 13, N'Bậc 3', 2.48)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (60, 13, N'Bậc 4', 2.92)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (61, 13, N'Bậc 5', 3.45)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (62, 13, N'Bậc 6', 4.07)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (63, 13, N'Bậc 7', 4.8)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (64, 14, N'Bậc 1', 2)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (65, 14, N'Bậc 2', 2.2)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (66, 14, N'Bậc 3', 2.45)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (67, 14, N'Bậc 4', 2.8)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (68, 14, N'Bậc 5', 3.05)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (69, 14, N'Bậc 6', 3.4)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (70, 14, N'Bậc 7', 3.7)
INSERT [dbo].[BacLuong] ([MaBacLuong], [MaChucVu], [TenBacLuong], [HSLuong]) VALUES (71, 1, N'Bậc 7', 7.52)
SET IDENTITY_INSERT [dbo].[BacLuong] OFF
INSERT [dbo].[CauHinh] ([Khoa], [GiaTri], [MoTa]) VALUES (N'BaoHiem', N'5%', N'Bảo hiểm')
INSERT [dbo].[CauHinh] ([Khoa], [GiaTri], [MoTa]) VALUES (N'CongDoan', N'2%', N'Chi phí công đoàn')
INSERT [dbo].[CauHinh] ([Khoa], [GiaTri], [MoTa]) VALUES (N'GioNghi', N'17:30', N'Giờ nghỉ làm')
INSERT [dbo].[CauHinh] ([Khoa], [GiaTri], [MoTa]) VALUES (N'GioVaoLam', N'8:00', N'Giờ vào làm')
INSERT [dbo].[CauHinh] ([Khoa], [GiaTri], [MoTa]) VALUES (N'LCB', N'1300000', N'Lương cơ bản')
INSERT [dbo].[CauHinh] ([Khoa], [GiaTri], [MoTa]) VALUES (N'LuongThamNienTrenNam', N'200000', N'LƯơng thâm niên trong một năm')
INSERT [dbo].[CauHinh] ([Khoa], [GiaTri], [MoTa]) VALUES (N'MocTraLuong', N'25', N'Bắt đầu trả lương từ ngày')
INSERT [dbo].[CauHinh] ([Khoa], [GiaTri], [MoTa]) VALUES (N'Thue', N'5%', N'Thuế')
INSERT [dbo].[ChamCong] ([MaNhanVien], [Ngay], [SoNgayTangCa], [SoNgayLam], [DiMuon], [VeSom]) VALUES (2, CAST(N'2018-07-01' AS Date), 5, 22, 10, 6)
INSERT [dbo].[ChamCong] ([MaNhanVien], [Ngay], [SoNgayTangCa], [SoNgayLam], [DiMuon], [VeSom]) VALUES (3, CAST(N'2018-07-01' AS Date), 0, 0, 0, 0)
INSERT [dbo].[ChamCong] ([MaNhanVien], [Ngay], [SoNgayTangCa], [SoNgayLam], [DiMuon], [VeSom]) VALUES (4, CAST(N'2018-07-01' AS Date), 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[ChucVu] ON 

INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [HSLuong]) VALUES (1, N'Giám đốc', 3)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [HSLuong]) VALUES (2, N'Phó GĐ tài chính', 1.7)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [HSLuong]) VALUES (3, N'Phó GĐ vận tải', 1.5)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [HSLuong]) VALUES (6, N'Trưởng phòng KH - KD', 1.2)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [HSLuong]) VALUES (9, N'Trưởng phòng tài chính', 1.2)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [HSLuong]) VALUES (10, N'Trưởng phòng xuất nhập khẩu', 1.2)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [HSLuong]) VALUES (11, N'Trưởng phòng kỹ thuật', 1.2)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [HSLuong]) VALUES (12, N'Lái xe', 1.2)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [HSLuong]) VALUES (13, N'Công nhân', 1.2)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [HSLuong]) VALUES (14, N'Nhân viên', 1.2)
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [HSLuong]) VALUES (15, N'Bảo vệ', 0)
SET IDENTITY_INSERT [dbo].[ChucVu] OFF
SET IDENTITY_INSERT [dbo].[HopDong] ON 

INSERT [dbo].[HopDong] ([MaHopDong], [NgayKy], [NgayKetThuc], [TinhTrang], [MaNhanVien], [LoaiHopDong], [MaChucVu]) VALUES (3, CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(N'2019-01-01 00:00:00.000' AS DateTime), 1, 4, 0, 2)
SET IDENTITY_INSERT [dbo].[HopDong] OFF
SET IDENTITY_INSERT [dbo].[KhenThuong] ON 

INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaNhanVien], [NgayKhenThuong], [TienThuong], [LyDo], [TrangThai], [HinhThuc]) VALUES (1, 2, CAST(N'2018-05-01' AS Date), 1000000, N'Vui là chính', 1, N'')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaNhanVien], [NgayKhenThuong], [TienThuong], [LyDo], [TrangThai], [HinhThuc]) VALUES (2, 2, CAST(N'2018-05-02' AS Date), 3000000, N'Double', 1, N'')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaNhanVien], [NgayKhenThuong], [TienThuong], [LyDo], [TrangThai], [HinhThuc]) VALUES (3, 2, CAST(N'2018-06-08' AS Date), 1000000, N'Vui là chính', NULL, N'123')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaNhanVien], [NgayKhenThuong], [TienThuong], [LyDo], [TrangThai], [HinhThuc]) VALUES (4, 3, CAST(N'2018-06-08' AS Date), 1000000, N'Vui là chính', NULL, N'')
SET IDENTITY_INSERT [dbo].[KhenThuong] OFF
SET IDENTITY_INSERT [dbo].[KyLuat] ON 

INSERT [dbo].[KyLuat] ([MaKyLuat], [MaNhanVien], [NgayKyLuat], [TienPhat], [LyDo], [TrangThai], [HinhThuc]) VALUES (2, 3, CAST(N'2018-06-02' AS Date), 1000000, N'123123', 1, N'')
SET IDENTITY_INSERT [dbo].[KyLuat] OFF
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTaiKhoan], [TenLoaiTaiKhoan]) VALUES (1, N'Quản trị viên')
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTaiKhoan], [TenLoaiTaiKhoan]) VALUES (2, N'Nhân Viên')
SET IDENTITY_INSERT [dbo].[LuongNhanVien] ON 

INSERT [dbo].[LuongNhanVien] ([MaLNV], [MaNhanVien], [LuongCoBan], [Thuong], [KyLuat], [LuongTDNN], [LuongTDHV], [HSPCChucVu], [NghiViec], [DieuChinh], [Thue], [LuongThucLinh], [NgayBatDau], [NgayKetThuc], [NgayTraLuong], [TamUng], [LuongThamNien], [PhatNghiViec], [LuongChucVu], [TienBaoHiem], [SoNgayLamViec], [SoNgayTangCa], [LuongLamViec], [LuongTangCa], [SoLanDiMuonVeSom], [PhatDiMuonVeSom], [SoNgayNghi], [PhiCongDoan], [LuongSauThue], [ThuViec]) VALUES (13, 2, 4000000, 4000000, 0, 500000, 1000000, 3, 0, 0, 0, 17100000, CAST(N'2018-05-01' AS Date), CAST(N'2018-05-31' AS Date), CAST(N'2018-06-08 13:28:16.407' AS DateTime), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17100000, 0)
INSERT [dbo].[LuongNhanVien] ([MaLNV], [MaNhanVien], [LuongCoBan], [Thuong], [KyLuat], [LuongTDNN], [LuongTDHV], [HSPCChucVu], [NghiViec], [DieuChinh], [Thue], [LuongThucLinh], [NgayBatDau], [NgayKetThuc], [NgayTraLuong], [TamUng], [LuongThamNien], [PhatNghiViec], [LuongChucVu], [TienBaoHiem], [SoNgayLamViec], [SoNgayTangCa], [LuongLamViec], [LuongTangCa], [SoLanDiMuonVeSom], [PhatDiMuonVeSom], [SoNgayNghi], [PhiCongDoan], [LuongSauThue], [ThuViec]) VALUES (14, 3, 4000000, 0, 0, 500000, 500000, 1.7, 0, 0, 0, 7800000, CAST(N'2018-05-01' AS Date), CAST(N'2018-05-31' AS Date), CAST(N'2018-06-08 13:44:51.153' AS DateTime), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7800000, 0)
INSERT [dbo].[LuongNhanVien] ([MaLNV], [MaNhanVien], [LuongCoBan], [Thuong], [KyLuat], [LuongTDNN], [LuongTDHV], [HSPCChucVu], [NghiViec], [DieuChinh], [Thue], [LuongThucLinh], [NgayBatDau], [NgayKetThuc], [NgayTraLuong], [TamUng], [LuongThamNien], [PhatNghiViec], [LuongChucVu], [TienBaoHiem], [SoNgayLamViec], [SoNgayTangCa], [LuongLamViec], [LuongTangCa], [SoLanDiMuonVeSom], [PhatDiMuonVeSom], [SoNgayNghi], [PhiCongDoan], [LuongSauThue], [ThuViec]) VALUES (15, 4, 4000000, 0, 0, 500000, 1000000, 1.2, 0, 1000, 0, 6301000, CAST(N'2018-05-01' AS Date), CAST(N'2018-05-31' AS Date), CAST(N'2018-06-08 13:46:20.897' AS DateTime), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6301000, 0)
INSERT [dbo].[LuongNhanVien] ([MaLNV], [MaNhanVien], [LuongCoBan], [Thuong], [KyLuat], [LuongTDNN], [LuongTDHV], [HSPCChucVu], [NghiViec], [DieuChinh], [Thue], [LuongThucLinh], [NgayBatDau], [NgayKetThuc], [NgayTraLuong], [TamUng], [LuongThamNien], [PhatNghiViec], [LuongChucVu], [TienBaoHiem], [SoNgayLamViec], [SoNgayTangCa], [LuongLamViec], [LuongTangCa], [SoLanDiMuonVeSom], [PhatDiMuonVeSom], [SoNgayNghi], [PhiCongDoan], [LuongSauThue], [ThuViec]) VALUES (16, 2, 1300000, 1000000, 0, 500000, 1000000, 6.52, 0, 0, 298350, 5967000, CAST(N'2018-06-01' AS Date), CAST(N'2018-06-30' AS Date), NULL, 0, 600000, 0, 120000, 65000, 3, 3, 1128000, 564000, 3, 60000, 25, 119340, 5549310, 0)
INSERT [dbo].[LuongNhanVien] ([MaLNV], [MaNhanVien], [LuongCoBan], [Thuong], [KyLuat], [LuongTDNN], [LuongTDHV], [HSPCChucVu], [NghiViec], [DieuChinh], [Thue], [LuongThucLinh], [NgayBatDau], [NgayKetThuc], [NgayTraLuong], [TamUng], [LuongThamNien], [PhatNghiViec], [LuongChucVu], [TienBaoHiem], [SoNgayLamViec], [SoNgayTangCa], [LuongLamViec], [LuongTangCa], [SoLanDiMuonVeSom], [PhatDiMuonVeSom], [SoNgayNghi], [PhiCongDoan], [LuongSauThue], [ThuViec]) VALUES (17, 3, 1300000, 1000000, 0, 300000, 1000000, 3.8, 0, 0, 240750, 4815000, CAST(N'2018-06-01' AS Date), CAST(N'2018-06-30' AS Date), NULL, 0, 600000, 0, 68000, 65000, 3, 0, 720000, 0, 2, 40000, 25, 96300, 4477950, 0)
INSERT [dbo].[LuongNhanVien] ([MaLNV], [MaNhanVien], [LuongCoBan], [Thuong], [KyLuat], [LuongTDNN], [LuongTDHV], [HSPCChucVu], [NghiViec], [DieuChinh], [Thue], [LuongThucLinh], [NgayBatDau], [NgayKetThuc], [NgayTraLuong], [TamUng], [LuongThamNien], [PhatNghiViec], [LuongChucVu], [TienBaoHiem], [SoNgayLamViec], [SoNgayTangCa], [LuongLamViec], [LuongTangCa], [SoLanDiMuonVeSom], [PhatDiMuonVeSom], [SoNgayNghi], [PhiCongDoan], [LuongSauThue], [ThuViec]) VALUES (18, 4, 1300000, 0, 0, 600000, 1000000, 2.45, 0, 0, 185625, 3712500, CAST(N'2018-06-01' AS Date), CAST(N'2018-06-30' AS Date), NULL, 0, 400000, 0, 48000, 65000, 3, 0, 517500, 0, 2, 40000, 25, 74250, 3452625, 0)
INSERT [dbo].[LuongNhanVien] ([MaLNV], [MaNhanVien], [LuongCoBan], [Thuong], [KyLuat], [LuongTDNN], [LuongTDHV], [HSPCChucVu], [NghiViec], [DieuChinh], [Thue], [LuongThucLinh], [NgayBatDau], [NgayKetThuc], [NgayTraLuong], [TamUng], [LuongThamNien], [PhatNghiViec], [LuongChucVu], [TienBaoHiem], [SoNgayLamViec], [SoNgayTangCa], [LuongLamViec], [LuongTangCa], [SoLanDiMuonVeSom], [PhatDiMuonVeSom], [SoNgayNghi], [PhiCongDoan], [LuongSauThue], [ThuViec]) VALUES (19, 2, 1300000, 1000000, 0, 500000, 1000000, 6.52, 0, 0, 661350, 13227000, CAST(N'2018-07-01' AS Date), CAST(N'2018-07-31' AS Date), NULL, 0, 600000, 0, NULL, 65000, 22, 5, 8272000, 940000, 16, 320000, 0, 264540, 12301110, 0)
INSERT [dbo].[LuongNhanVien] ([MaLNV], [MaNhanVien], [LuongCoBan], [Thuong], [KyLuat], [LuongTDNN], [LuongTDHV], [HSPCChucVu], [NghiViec], [DieuChinh], [Thue], [LuongThucLinh], [NgayBatDau], [NgayKetThuc], [NgayTraLuong], [TamUng], [LuongThamNien], [PhatNghiViec], [LuongChucVu], [TienBaoHiem], [SoNgayLamViec], [SoNgayTangCa], [LuongLamViec], [LuongTangCa], [SoLanDiMuonVeSom], [PhatDiMuonVeSom], [SoNgayNghi], [PhiCongDoan], [LuongSauThue], [ThuViec]) VALUES (20, 3, 1300000, 1000000, 0, 300000, 1000000, 3.8, 0, 0, 206750, 4135000, CAST(N'2018-07-01' AS Date), CAST(N'2018-07-31' AS Date), NULL, 0, 600000, 0, NULL, 65000, 0, 0, 0, 0, 0, 0, 0, 82700, 3845550, 0)
INSERT [dbo].[LuongNhanVien] ([MaLNV], [MaNhanVien], [LuongCoBan], [Thuong], [KyLuat], [LuongTDNN], [LuongTDHV], [HSPCChucVu], [NghiViec], [DieuChinh], [Thue], [LuongThucLinh], [NgayBatDau], [NgayKetThuc], [NgayTraLuong], [TamUng], [LuongThamNien], [PhatNghiViec], [LuongChucVu], [TienBaoHiem], [SoNgayLamViec], [SoNgayTangCa], [LuongLamViec], [LuongTangCa], [SoLanDiMuonVeSom], [PhatDiMuonVeSom], [SoNgayNghi], [PhiCongDoan], [LuongSauThue], [ThuViec]) VALUES (21, 4, 1300000, 0, 0, 600000, 1000000, 2.45, 0, 0, 161750, 3235000, CAST(N'2018-07-01' AS Date), CAST(N'2018-07-31' AS Date), NULL, 0, 400000, 0, NULL, 65000, 0, 0, 0, 0, 0, 0, 0, 64700, 3008550, 0)
SET IDENTITY_INSERT [dbo].[LuongNhanVien] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [HinhAnh], [GioiTinh], [NgaySinh], [CMTND], [DanToc], [TonGiao], [QuocTich], [QueQuan], [DienThoai], [Email], [TinhTrangHonNhan], [ThanhPhanXuatThan], [NangKhieu], [TinhTrangSucKhoe], [BoPhan], [SoQD], [MaPhongBan], [MaChucVu], [MaTrinhDoHocVan], [MaTrinhDoNgoaiNgu], [TinhTrang], [NgayVaoLam], [MaBacLuong]) VALUES (2, N'Phí Kim Dũng', NULL, N'Nam', CAST(N'1975-11-25' AS Date), N'152122342', NULL, NULL, N'Việt Nam', N'Hà Nội', N'0966810905', N'phikimdung@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 2, NULL, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 6)
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [HinhAnh], [GioiTinh], [NgaySinh], [CMTND], [DanToc], [TonGiao], [QuocTich], [QueQuan], [DienThoai], [Email], [TinhTrangHonNhan], [ThanhPhanXuatThan], [NangKhieu], [TinhTrangSucKhoe], [BoPhan], [SoQD], [MaPhongBan], [MaChucVu], [MaTrinhDoHocVan], [MaTrinhDoNgoaiNgu], [TinhTrang], [NgayVaoLam], [MaBacLuong]) VALUES (3, N'Phí Trường Hùng', NULL, N'Nam', CAST(N'1981-11-19' AS Date), N'152122342234', NULL, NULL, N'Việt Nam', N'Hà Nội', N'0966817892', N'phitruonghung@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, 2, 1, NULL, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 18)
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [HinhAnh], [GioiTinh], [NgaySinh], [CMTND], [DanToc], [TonGiao], [QuocTich], [QueQuan], [DienThoai], [Email], [TinhTrangHonNhan], [ThanhPhanXuatThan], [NangKhieu], [TinhTrangSucKhoe], [BoPhan], [SoQD], [MaPhongBan], [MaChucVu], [MaTrinhDoHocVan], [MaTrinhDoNgoaiNgu], [TinhTrang], [NgayVaoLam], [MaBacLuong]) VALUES (4, N'Nguyễn Thị Quỳnh Chi', NULL, N'Nữ', CAST(N'1992-05-26' AS Date), N'152122342', NULL, NULL, N'Việt Nam', N'Thái BÌnh', N'0966845687', N'quynhchi2605@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 2, 14, 2, 3, NULL, CAST(N'2016-01-01 00:00:00.000' AS DateTime), 66)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[PhongBan] ON 

INSERT [dbo].[PhongBan] ([MaPB], [TenPB]) VALUES (1, N'Phòng Giám Đốc')
INSERT [dbo].[PhongBan] ([MaPB], [TenPB]) VALUES (2, N'Phòng KH - KD')
INSERT [dbo].[PhongBan] ([MaPB], [TenPB]) VALUES (3, N'Phòng Tài Chính')
INSERT [dbo].[PhongBan] ([MaPB], [TenPB]) VALUES (4, N'Phòng Xuất nhập khẩu')
INSERT [dbo].[PhongBan] ([MaPB], [TenPB]) VALUES (5, N'Phòng Kỹ thuật')
INSERT [dbo].[PhongBan] ([MaPB], [TenPB]) VALUES (6, N'Bộ phận ATGT')
INSERT [dbo].[PhongBan] ([MaPB], [TenPB]) VALUES (7, N'Đội xe')
INSERT [dbo].[PhongBan] ([MaPB], [TenPB]) VALUES (8, N'Bảo vệ')
SET IDENTITY_INSERT [dbo].[PhongBan] OFF
SET IDENTITY_INSERT [dbo].[QuaTrinhCongTac] ON 

INSERT [dbo].[QuaTrinhCongTac] ([ID], [NgayCapNhat], [MaNhanVien], [MaChucVu], [MaPhongBan], [MaTrinhDoHocVan], [MaTrinhDoNgoaiNgu]) VALUES (1, CAST(N'2018-05-24 21:38:44.547' AS DateTime), 3, 2, 2, 2, 6)
INSERT [dbo].[QuaTrinhCongTac] ([ID], [NgayCapNhat], [MaNhanVien], [MaChucVu], [MaPhongBan], [MaTrinhDoHocVan], [MaTrinhDoNgoaiNgu]) VALUES (2, CAST(N'2018-06-02 14:31:01.840' AS DateTime), 2, 1, 3, 2, 6)
INSERT [dbo].[QuaTrinhCongTac] ([ID], [NgayCapNhat], [MaNhanVien], [MaChucVu], [MaPhongBan], [MaTrinhDoHocVan], [MaTrinhDoNgoaiNgu]) VALUES (3, CAST(N'2018-06-02 14:31:07.913' AS DateTime), 4, 6, 1, 2, 6)
INSERT [dbo].[QuaTrinhCongTac] ([ID], [NgayCapNhat], [MaNhanVien], [MaChucVu], [MaPhongBan], [MaTrinhDoHocVan], [MaTrinhDoNgoaiNgu]) VALUES (4, CAST(N'2018-06-23 22:17:34.513' AS DateTime), 2, 1, 1, 2, 2)
INSERT [dbo].[QuaTrinhCongTac] ([ID], [NgayCapNhat], [MaNhanVien], [MaChucVu], [MaPhongBan], [MaTrinhDoHocVan], [MaTrinhDoNgoaiNgu]) VALUES (5, CAST(N'2018-06-23 22:20:29.897' AS DateTime), 3, 3, 1, 2, 1)
INSERT [dbo].[QuaTrinhCongTac] ([ID], [NgayCapNhat], [MaNhanVien], [MaChucVu], [MaPhongBan], [MaTrinhDoHocVan], [MaTrinhDoNgoaiNgu]) VALUES (6, CAST(N'2018-06-23 22:27:59.977' AS DateTime), 4, 14, 2, 2, 3)
SET IDENTITY_INSERT [dbo].[QuaTrinhCongTac] OFF
SET IDENTITY_INSERT [dbo].[QuaTrinhLuong] ON 

INSERT [dbo].[QuaTrinhLuong] ([ID], [NgayCapNhat], [MaNhanVien], [MaChucVu], [MaBacLuong]) VALUES (1, CAST(N'2018-06-20 22:46:33.500' AS DateTime), 2, 1, 2)
INSERT [dbo].[QuaTrinhLuong] ([ID], [NgayCapNhat], [MaNhanVien], [MaChucVu], [MaBacLuong]) VALUES (2, CAST(N'2018-06-20 22:46:45.437' AS DateTime), 2, 1, 3)
INSERT [dbo].[QuaTrinhLuong] ([ID], [NgayCapNhat], [MaNhanVien], [MaChucVu], [MaBacLuong]) VALUES (3, CAST(N'2018-06-20 22:46:50.683' AS DateTime), 2, 1, 4)
INSERT [dbo].[QuaTrinhLuong] ([ID], [NgayCapNhat], [MaNhanVien], [MaChucVu], [MaBacLuong]) VALUES (4, CAST(N'2018-06-20 23:12:53.077' AS DateTime), 3, 2, 7)
INSERT [dbo].[QuaTrinhLuong] ([ID], [NgayCapNhat], [MaNhanVien], [MaChucVu], [MaBacLuong]) VALUES (5, CAST(N'2018-06-20 23:12:57.477' AS DateTime), 4, 6, 11)
INSERT [dbo].[QuaTrinhLuong] ([ID], [NgayCapNhat], [MaNhanVien], [MaChucVu], [MaBacLuong]) VALUES (6, CAST(N'2018-06-23 22:17:34.520' AS DateTime), 2, 1, 6)
INSERT [dbo].[QuaTrinhLuong] ([ID], [NgayCapNhat], [MaNhanVien], [MaChucVu], [MaBacLuong]) VALUES (7, CAST(N'2018-06-23 22:20:29.897' AS DateTime), 3, 3, 18)
INSERT [dbo].[QuaTrinhLuong] ([ID], [NgayCapNhat], [MaNhanVien], [MaChucVu], [MaBacLuong]) VALUES (8, CAST(N'2018-06-23 22:27:59.980' AS DateTime), 4, 14, 66)
SET IDENTITY_INSERT [dbo].[QuaTrinhLuong] OFF
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaLoaiTaiKhoan]) VALUES (2, N'thuha1', N'12345', 2)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaLoaiTaiKhoan]) VALUES (3, N'admin', N'123456', 1)
SET IDENTITY_INSERT [dbo].[TrinhDoHocVan] ON 

INSERT [dbo].[TrinhDoHocVan] ([MaTDHV], [TenTDHV], [Luong]) VALUES (2, N'Đại học', 1000000)
INSERT [dbo].[TrinhDoHocVan] ([MaTDHV], [TenTDHV], [Luong]) VALUES (3, N'Cao Đẳng', 500000)
INSERT [dbo].[TrinhDoHocVan] ([MaTDHV], [TenTDHV], [Luong]) VALUES (4, N'Trung cấp', 1000000)
INSERT [dbo].[TrinhDoHocVan] ([MaTDHV], [TenTDHV], [Luong]) VALUES (5, N'Sau đại học', 0)
INSERT [dbo].[TrinhDoHocVan] ([MaTDHV], [TenTDHV], [Luong]) VALUES (6, N'Lao động phổ thông', 0)
SET IDENTITY_INSERT [dbo].[TrinhDoHocVan] OFF
SET IDENTITY_INSERT [dbo].[TrinhDoNgoaiNgu] ON 

INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTDNgoaiNgu], [TenTDNgoaiNgu], [Luong]) VALUES (1, N'Toeic 450', 300000)
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTDNgoaiNgu], [TenTDNgoaiNgu], [Luong]) VALUES (2, N'Toeic 550', 500000)
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTDNgoaiNgu], [TenTDNgoaiNgu], [Luong]) VALUES (3, N'Toeic 650', 600000)
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTDNgoaiNgu], [TenTDNgoaiNgu], [Luong]) VALUES (4, N'Toeic 750', 700000)
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTDNgoaiNgu], [TenTDNgoaiNgu], [Luong]) VALUES (5, N'Toeic 850', 800000)
INSERT [dbo].[TrinhDoNgoaiNgu] ([MaTDNgoaiNgu], [TenTDNgoaiNgu], [Luong]) VALUES (6, N'IELS 6.0', 500000)
SET IDENTITY_INSERT [dbo].[TrinhDoNgoaiNgu] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__TaiKhoan__55F68FC05F24673F]    Script Date: 7/4/2018 11:46:57 PM ******/
ALTER TABLE [dbo].[TaiKhoan] ADD UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BacLuong]  WITH CHECK ADD FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChamCong]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[KhenThuong]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[KyLuat]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[LuongNhanVien]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[NghiViec]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaBacLuong])
REFERENCES [dbo].[BacLuong] ([MaBacLuong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaPhongBan])
REFERENCES [dbo].[PhongBan] ([MaPB])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaTrinhDoHocVan])
REFERENCES [dbo].[TrinhDoHocVan] ([MaTDHV])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaTrinhDoNgoaiNgu])
REFERENCES [dbo].[TrinhDoNgoaiNgu] ([MaTDNgoaiNgu])
GO
ALTER TABLE [dbo].[QuaTrinhCongTac]  WITH CHECK ADD FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[QuaTrinhCongTac]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[QuaTrinhCongTac]  WITH CHECK ADD FOREIGN KEY([MaPhongBan])
REFERENCES [dbo].[PhongBan] ([MaPB])
GO
ALTER TABLE [dbo].[QuaTrinhCongTac]  WITH CHECK ADD FOREIGN KEY([MaTrinhDoHocVan])
REFERENCES [dbo].[TrinhDoHocVan] ([MaTDHV])
GO
ALTER TABLE [dbo].[QuaTrinhCongTac]  WITH CHECK ADD FOREIGN KEY([MaTrinhDoNgoaiNgu])
REFERENCES [dbo].[TrinhDoNgoaiNgu] ([MaTDNgoaiNgu])
GO
ALTER TABLE [dbo].[QuaTrinhLuong]  WITH CHECK ADD FOREIGN KEY([MaBacLuong])
REFERENCES [dbo].[BacLuong] ([MaBacLuong])
GO
ALTER TABLE [dbo].[QuaTrinhLuong]  WITH CHECK ADD FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[QuaTrinhLuong]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([MaLoaiTaiKhoan])
REFERENCES [dbo].[LoaiTaiKhoan] ([MaLoaiTaiKhoan])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
USE [master]
GO
ALTER DATABASE [BDQUANLYLUONG] SET  READ_WRITE 
GO
