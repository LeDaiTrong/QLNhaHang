IF OBJECT_ID('QuanLyATC_HueTam', 'P')IS NOT NULL
	DROP PROC HT_tuyendung
GO

IF DB_ID('QuanLyATC_HueTam') IS NULL 
	CREATE DATABASE QuanLyATC_HueTam
GO

USE QuanLyATC_HueTam
GO
CREATE TABLE [dbo].[CHUCVU](
	[ID_ChucVu] [nvarchar](5) NOT NULL,
	[Ten_ChucVu] [nvarchar](20) NULL,
	[HeSoLuong] [int] NULL,
 CONSTRAINT [PK_CHUCVU] PRIMARY KEY CLUSTERED 
(
	[ID_ChucVu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHUCVU] ([ID_ChucVu], [Ten_ChucVu], [HeSoLuong]) VALUES (N'BT', N'Bếp trưởng', 150000)
INSERT [dbo].[CHUCVU] ([ID_ChucVu], [Ten_ChucVu], [HeSoLuong]) VALUES (N'BV', N'Bảo vệ', 100000)
INSERT [dbo].[CHUCVU] ([ID_ChucVu], [Ten_ChucVu], [HeSoLuong]) VALUES (N'PB', N'Phụ bếp', 80000)
INSERT [dbo].[CHUCVU] ([ID_ChucVu], [Ten_ChucVu], [HeSoLuong]) VALUES (N'PV', N'Phục vụ', 60000)
INSERT [dbo].[CHUCVU] ([ID_ChucVu], [Ten_ChucVu], [HeSoLuong]) VALUES (N'QL', N'Quản lý', 160000)
INSERT [dbo].[CHUCVU] ([ID_ChucVu], [Ten_ChucVu], [HeSoLuong]) VALUES (N'TV', N'Tạp vụ', 60000)
/****** Object:  Table [dbo].[LOAI_NVL]    Script Date: 12/14/2016 22:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_NVL](
	[ID_LoaiNVL] [nvarchar](5) NOT NULL,
	[Ten_LoaiNVL] [nvarchar](50) NULL,
	[MoTa] [nvarchar](100) NULL,
 CONSTRAINT [PK_LOAI_NVL] PRIMARY KEY CLUSTERED 
(
	[ID_LoaiNVL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LOAI_NVL] ([ID_LoaiNVL], [Ten_LoaiNVL], [MoTa]) VALUES (N'LNVL1', N'Rau', NULL)
INSERT [dbo].[LOAI_NVL] ([ID_LoaiNVL], [Ten_LoaiNVL], [MoTa]) VALUES (N'LNVL2', N'Củ', NULL)
INSERT [dbo].[LOAI_NVL] ([ID_LoaiNVL], [Ten_LoaiNVL], [MoTa]) VALUES (N'LNVL3', N'Nấm', NULL)
INSERT [dbo].[LOAI_NVL] ([ID_LoaiNVL], [Ten_LoaiNVL], [MoTa]) VALUES (N'LNVL4', N'Gia vị', NULL)
INSERT [dbo].[LOAI_NVL] ([ID_LoaiNVL], [Ten_LoaiNVL], [MoTa]) VALUES (N'LNVL5', N'Hàng đông lạnh', NULL)
INSERT [dbo].[LOAI_NVL] ([ID_LoaiNVL], [Ten_LoaiNVL], [MoTa]) VALUES (N'LNVL6', N'Hàng khô', NULL)
INSERT [dbo].[LOAI_NVL] ([ID_LoaiNVL], [Ten_LoaiNVL], [MoTa]) VALUES (N'LNVL7', N'Đậu', NULL)
/****** Object:  Table [dbo].[LOAI_MON]    Script Date: 12/14/2016 22:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_MON](
	[ID_LoaiMon] [nvarchar](5) NOT NULL,
	[Ten_LoaiMon] [nchar](25) NOT NULL,
	[MoTa] [nchar](100) NULL,
 CONSTRAINT [PK_LOAI_MON] PRIMARY KEY CLUSTERED 
(
	[ID_LoaiMon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LOAI_MON] ([ID_LoaiMon], [Ten_LoaiMon], [MoTa]) VALUES (N'C', N'Canh                     ', NULL)
INSERT [dbo].[LOAI_MON] ([ID_LoaiMon], [Ten_LoaiMon], [MoTa]) VALUES (N'CC', N'Cơm chiên các loại       ', NULL)
INSERT [dbo].[LOAI_MON] ([ID_LoaiMon], [Ten_LoaiMon], [MoTa]) VALUES (N'G', N'Gỏi                      ', NULL)
INSERT [dbo].[LOAI_MON] ([ID_LoaiMon], [Ten_LoaiMon], [MoTa]) VALUES (N'K', N'Món khác                 ', NULL)
INSERT [dbo].[LOAI_MON] ([ID_LoaiMon], [Ten_LoaiMon], [MoTa]) VALUES (N'KV', N'Khai Vị                  ', NULL)
INSERT [dbo].[LOAI_MON] ([ID_LoaiMon], [Ten_LoaiMon], [MoTa]) VALUES (N'L', N'Lẩu                      ', NULL)
INSERT [dbo].[LOAI_MON] ([ID_LoaiMon], [Ten_LoaiMon], [MoTa]) VALUES (N'MC', N'Món chính                ', NULL)
INSERT [dbo].[LOAI_MON] ([ID_LoaiMon], [Ten_LoaiMon], [MoTa]) VALUES (N'MCn', N'Món cuốn                 ', NULL)
INSERT [dbo].[LOAI_MON] ([ID_LoaiMon], [Ten_LoaiMon], [MoTa]) VALUES (N'ML', N'Món luộc                 ', NULL)
INSERT [dbo].[LOAI_MON] ([ID_LoaiMon], [Ten_LoaiMon], [MoTa]) VALUES (N'MM', N'Món mặn                  ', NULL)
INSERT [dbo].[LOAI_MON] ([ID_LoaiMon], [Ten_LoaiMon], [MoTa]) VALUES (N'MX', N'Mỳ miến xào các loại     ', NULL)
INSERT [dbo].[LOAI_MON] ([ID_LoaiMon], [Ten_LoaiMon], [MoTa]) VALUES (N'PZ', N'Pizza                    ', NULL)
INSERT [dbo].[LOAI_MON] ([ID_LoaiMon], [Ten_LoaiMon], [MoTa]) VALUES (N'RX', N'Món xào                  ', NULL)
INSERT [dbo].[LOAI_MON] ([ID_LoaiMon], [Ten_LoaiMon], [MoTa]) VALUES (N'S', N'Súp                      ', NULL)
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/14/2016 22:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[ID_KH] [int] IDENTITY(1,1) NOT NULL,
	[Ho_KH] [nvarchar](50) NULL,
	[Ten_KH] [nvarchar](50) NOT NULL,
	[GioiTinh_KH] [bit] NULL,
	[SDT_KH] [nvarchar](15) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[ID_KH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (1, N'Lê Thị', N'Phượng', 0, N'0909658163')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (2, N'Trần Minh', N'Quân', 1, N'0933764907')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (3, N'Nguyễn Đạt', N'Nghĩa', 1, N'0911870552')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (4, N'Phạm Anh', N'Tài', 1, N'01269833531')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (6, N'Đặng Thị Mỹ', N'Anh', 0, N'01274693760')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (7, N'Ngô Thị Thanh', N'Tú', 0, N'01268749915')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (8, N'Nguyễn Ngọc', N'Vũ', 1, N'01223783936')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (9, N'Nguyễn Thị', N'Tuyết', 0, N'01663775925')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (10, N'Đỗ Nguyễn Tường', N'Vy', 0, N'01235875093')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (11, N'Lê Huy', N'Khôi', 1, N'0903778436')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (12, N'Nguyễn Nữ Hồng', N'Vân', 0, N'0906498612')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (13, N'Quản Đình', N'Trung', 1, N'01284875003')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (14, N'Huỳnh Tấn', N'Vương', 1, N'0933759355')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (15, N'Dương Thị Kiều', N'Nhi', 0, N'0939665381')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (16, N'Nguyễn Sơn', N'Tùng', 1, N'01228674459')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (17, N'Phạm Thị', N'Diễm', 0, N'0903768493')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (18, N'Nguyễn Lê Anh', N'Tuấn', 1, N'01269847724')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (19, N'Lê Vũ Anh', N'Phong', 1, N'01289977538')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (20, N'Hồ Trường', N'Phận', 1, N'0902896457')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (22, N'Phạm Thị Ngọc', N'Xuân', 0, N'0937784389')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (23, N'Lê Thị Hồng', N'Vinh', 0, N'01204605246')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (24, N'Phạm Ngọc', N'Lợi', 1, N'0901386498')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (25, N'Lê Hữu', N'Phước', 1, N'0938512488')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (26, N'Hồ Trường', N'Quy', 1, N'0905879547')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (27, N'Quách Gia', N'Hân', 0, NULL)
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (28, N'Nguyễn Lê Anh', N'Tú', 1, N'01209688345')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (29, N'Hồ Thị Thúy', N'Kiều', 0, N'0933650965')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (30, N'Lê Thị Tuyết', N'Nhung', 0, N'01268675936')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (31, N'Lê Bội', N'Trân', 0, NULL)
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (32, N'Quách Gia', N'Bảo', 1, NULL)
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (33, N'Hồ Thị Thúy', N'Vân', 0, N'0909998283')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (34, N'Phạm Ngọc', N'Tài', 1, N'0905774398')
INSERT [dbo].[KHACHHANG] ([ID_KH], [Ho_KH], [Ten_KH], [GioiTinh_KH], [SDT_KH]) VALUES (43, N'Le Dai', N'Trong', 1, N'0477')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 12/14/2016 22:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[ID_NCC] [nvarchar](5) NOT NULL,
	[Ten_NCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [nvarchar](15) NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[ID_NCC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NHACUNGCAP] ([ID_NCC], [Ten_NCC], [DiaChi], [SDT]) VALUES (N'NCC1', N'Âu Lạc', N'Nguyễn Kiệm, Gò Vấp, HCM', N'083123456')
INSERT [dbo].[NHACUNGCAP] ([ID_NCC], [Ten_NCC], [DiaChi], [SDT]) VALUES (N'NCC2', N'Hương Vị', N'39 Thạnh Phú, Thuận An, Bình Dương', N'06503799577')
INSERT [dbo].[NHACUNGCAP] ([ID_NCC], [Ten_NCC], [DiaChi], [SDT]) VALUES (N'NCC3', N'Ngọc Liên', N'72 Trần Tấn, Tân Phú, HCM', N'0838105182')
INSERT [dbo].[NHACUNGCAP] ([ID_NCC], [Ten_NCC], [DiaChi], [SDT]) VALUES (N'NCC4', N'Bình Tây', N'KCX Tân Thuận, P.Tân Thuận Đông, Quận 7', N'083770940')
/****** Object:  StoredProcedure [dbo].[uspXoaKH]    Script Date: 12/14/2016 22:07:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspXoaKH]
	@Ma int
	
AS
	delete KHACHHANG
	where ID_KH = @Ma
GO
/****** Object:  Table [dbo].[NGUYENVATLIEU]    Script Date: 12/14/2016 22:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUYENVATLIEU](
	[ID_NVL] [nvarchar](10) NOT NULL,
	[Ten_NVL] [nvarchar](50) NOT NULL,
	[ID_LoaiNVL] [nvarchar](5) NOT NULL,
	[QuyCach] [nvarchar](50) NULL,
	[DonViTinh] [nvarchar](15) NULL,
	[SoLuongCon] [float] NULL,
	[ToiThieuDatLai] [float] NULL,
 CONSTRAINT [PK_NGUYENVATLIEU] PRIMARY KEY CLUSTERED 
(
	[ID_NVL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C01', N'Củ hủ dừa', N'LNVL2', N'Củ', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C02', N'Khoai môn', N'LNVL2', N'Củ', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C03', N'Khoai lang', N'LNVL2', N'Củ', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C04', N'Khoai sắn', N'LNVL2', N'Củ', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C05', N'Cà tím', N'LNVL2', N'Quả', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C06', N'Cà chua', N'LNVL2', N'Quả', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C07', N'Đậu bắp', N'LNVL2', N'Quả', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C08', N'Gừng', N'LNVL2', N'Củ', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C09', N'Củ hành', N'LNVL2', N'Củ', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C10', N'Củ tỏi', N'LNVL2', N'Củ', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C11', N'Khoai tây', N'LNVL2', N'Củ', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C12', N'Hành tây', N'LNVL2', N'Củ', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C13', N'Ớt chuông', N'LNVL2', N'Quả', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C14', N'Cà rốt', N'LNVL2', N'Củ', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C15', N'Đậu ve', N'LNVL2', N'Quả', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C16', N'Khổ qua', N'LNVL2', N'Quả', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C17', N'Dưa leo', N'LNVL2', N'Quả', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C18', N'Bắp non', N'LNVL2', N'Quả', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C19', N'Bắp trái', N'LNVL2', N'Quả', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'C20', N'Thơm', N'LNVL2', N'Trái', N'Trái', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'D01', N'Mè trắng', N'LNVL7', N'Bịch đóng gói', N'kg', 2, 0)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'D02', N'Mè đen', N'LNVL7', N'Bịch đóng gói', N'kg', 2, 0)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'D03', N'Hạt điều màu', N'LNVL7', N'Bịch đóng gói', N'kg', 2, 0)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'D04', N'Đậu phộng', N'LNVL7', N'Bịch đóng gói', N'kg', 2, 0)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'D05', N'Đậu xanh', N'LNVL7', N'Bịch đóng gói', N'kg', 2, 0)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'D06', N'Đậu trắng', N'LNVL7', N'Bịch đóng gói', N'kg', 2, 0)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'D07', N'Đậu bo', N'LNVL7', N'Bịch đóng gói', N'kg', 2, 0)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'D08', N'Hạt sen', N'LNVL7', N'Bịch đóng gói', N'kg', 2, 0)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'DL01', N'Cánh Gà', N'LNVL5', N'Bịch đóng gói', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'DL02', N'Chân nấm', N'LNVL5', N'Bịch đóng gói', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'DL03', N'Sườn xá xíu', N'LNVL5', N'Bịch đóng gói', N'Kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'DL04', N'Hem', N'LNVL5', N'Cây đóng gói', N'Kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'DL05', N'Chả lụa', N'LNVL5', N'Cây đóng gói', N'kg', 10, 2)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'DL06', N'Bò lúc lắc', N'LNVL5', N'Bịch đóng gói', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'DL07', N'Chả cá', N'LNVL5', N'Bịch đóng gói', N'kg', 10, 2)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'DL08', N'Pizza', N'LNVL5', N'Bịch đóng gói', N'cái', 20, 5)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'DL09', N'Heo quay', N'LNVL5', N'Bịch đóng gói', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'DL10', N'Đậu hủ chiên', N'LNVL5', N'Miếng', N'kg', 1, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'DL11', N'Đậu hủ non', N'LNVL5', N'Hộp đóng gói', N'hộp', 2, 2)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'DL12', N'Phô mai', N'LNVL5', N'Hộp đóng gói', N'hộp', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'DL13', N'Bách quả', N'LNVL5', N'Bịch đóng gói', N'bịch', 3, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV01', N'Nước mắm', N'LNVL4', N'Chai', N'chai', 10, 2)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV02', N'Nước tương', N'LNVL4', N'Chai', N'chai', 10, 2)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV03', N'Tương ớt', N'LNVL4', N'Bình', N'bình', 3, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV04', N'Tương xí muội', N'LNVL4', N'Bình', N'bình', 3, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV05', N'Tương cà', N'LNVL4', N'Bình', N'bình', 3, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV06', N'Tương đen', N'LNVL4', N'Bình', N'bình', 3, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV07', N'Mayonnaise', N'LNVL4', N'Bình', N'bình', 3, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV08', N'Hạt nêm', N'LNVL4', N'Bịch đóng gói', N'kg', 3, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV09', N'Mì chính', N'LNVL4', N'Bịch đóng gói', N'kg', 3, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV10', N'Đường', N'LNVL4', N'Bịch đóng gói', N'kg', 3, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV11', N'Tiêu', N'LNVL4', N'Bịch đóng gói', N'kg', 1, 0)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV12', N'Mắm nêm', N'LNVL4', N'Chai', N'chai', 3, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV13', N'Dầu ăn', N'LNVL4', N'Bình', N'bình', 3, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV14', N'Dầu hào', N'LNVL4', N'Chai', N'chai', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV15', N'Sa tế', N'LNVL4', N'Bình', N'bình', 2, 0)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV16', N'Sốt xá xíu', N'LNVL4', N'Lon', N'lon', 1, 0)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV17', N'Sốt sacha', N'LNVL4', N'Lon', N'lon', 3, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV18', N'Vị lẩu thái', N'LNVL4', N'Chai', N'chai', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV19', N'Vị lẩu nấm', N'LNVL4', N'Lô 10 hộp', N'lô', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV20', N'Sữa tươi', N'LNVL4', N'Hộp', N'hộp', 3, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV21', N'Sữa đặc', N'LNVL4', N'Hộp', N'hộp', 3, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'GV22', N'Chao', N'LNVL4', N'Hủ', N'hủ', 5, 2)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'HK01', N'Mì xào giòn', N'LNVL6', N'Bịch đóng gói', N'gói', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'HK02', N'Miến', N'LNVL6', N'Bó', N'Bó', 5, 2)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'HK03', N'Mì', N'LNVL6', N'Bịch đóng gói', N'kg', 5, 2)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'HK04', N'Bột giòn', N'LNVL6', N'Bịch đóng gói', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'HK05', N'Bột xù', N'LNVL6', N'Bịch đóng gói', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'HK06', N'Bột năng', N'LNVL6', N'Bịch đóng gói', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'HK07', N'Rong biển lá', N'LNVL6', N'Bịch đóng gói', N'bịch', 1, 0)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'HK08', N'Rong biến miếng', N'LNVL6', N'Bịch đóng gói', N'kg', 1, 0)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'HK09', N'Chà bông', N'LNVL6', N'Bịch đóng gói', N'kg', 1, 0)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'HK10', N'Tóc tiên', N'LNVL6', N'Bịch đóng gói', N'bịch', 1, 0)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'HK11', N'Bánh tráng', N'LNVL6', N'Bịch đóng gói', N'bịch', 10, 2)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'HK12', N'Gạo', N'LNVL6', N'Bao đóng gói', N'kg', 10, 3)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'HK13', N'Bánh phồng', N'LNVL6', N'Bịch đóng gói', N'bịch', 5, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'HK14', N'Bột bánh xèo', N'LNVL6', N'Bịch đóng gói', N'kg', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'HK15', N'Trứng', N'LNVL6', N'Vỉ đóng gói', N'Vỉ', 2, 0)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'HK16', N'Mì Ý', N'LNVL6', N'Bịch đóng gói', N'bịch', 2, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'N01', N'Nấm linh chi', N'LNVL3', N'Hộp đóng gói', N'hộp', 5, 5)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'N02', N'Nấm bào ngư', N'LNVL3', N'Bịch đóng gói', N'kg', 2, 5)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'N03', N'Nấm đông cô', N'LNVL3', N'Bịch đóng gói', N'bịch', 5, 3)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'N04', N'Nấm đùi gà', N'LNVL3', N'Bịch đóng gói', N'kg', 2, 3)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'N05', N'Nấm rơm', N'LNVL3', N'Bịch đóng gói', N'kg', 1, 1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'N06', N'Nấm kim chi', N'LNVL3', N'Bịch đóng gói', N'bịch', 3, 2)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'R01', N'Cải thảo', N'LNVL1', N'Bẹ', N'kg', 1, 0.5)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'R02', N'Cải thìa', N'LNVL1', N'Bó', N'kg', 1, 0.5)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'R03', N'Xà lách', N'LNVL1', N'Bó', N'kg', 1, 0.5)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'R04', N'Cần nước', N'LNVL1', N'Bó', N'kg', 1, 0.5)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'R05', N'Rau muống', N'LNVL1', N'Bó', N'kg', 1, 0.5)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'R06', N'Rau nhút', N'LNVL1', N'Bó', N'kg', 1, 0.5)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'R07', N'Tần ô', N'LNVL1', N'Bó', N'kg', 1, 0.5)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'R08', N'Mồng tơi', N'LNVL1', N'Bó', N'kg', 1, 0.5)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'R09', N'Cải xanh', N'LNVL1', N'Bó', N'kg', 1, 0.5)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'R10', N'Cải ngọt', N'LNVL1', N'Bó', N'kg', 1, 0.5)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'R11', N'Rau sống', N'LNVL1', N'Nhiều loại', N'kg', 1, 0.5)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'R12', N'Xà lách xoong', N'LNVL1', N'Bịch đóng gói', N'kg', 1, 0.5)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'R13', N'Bông thiên lý', N'LNVL1', N'Bịch đóng gói', N'kg', 1, 0.5)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'R14', N'Ngò gai', N'LNVL1', N'Bó', N'kg', 1, 0.1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'R15', N'Ngò rí', N'LNVL1', N'Bó', N'kg', 1, 0.1)
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'R16', N'Cần', N'LNVL1', N'Bó', N'kg', 1, 0.1)
GO
print 'Processed 100 total records'
INSERT [dbo].[NGUYENVATLIEU] ([ID_NVL], [Ten_NVL], [ID_LoaiNVL], [QuyCach], [DonViTinh], [SoLuongCon], [ToiThieuDatLai]) VALUES (N'R17', N'Rau răm', N'LNVL1', N'Bó', N'Bó', 1, 0.1)
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12/14/2016 22:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[ID_NV] [int] IDENTITY(1,1) NOT NULL,
	[Ho_NV] [nvarchar](50) NOT NULL,
	[Ten_NV] [nvarchar](25) NOT NULL,
	[ID_ChucVu] [nvarchar](5) NULL,
	[GioiTinh_NV] [bit] NULL,
	[NgayBatDauLam] [date] NULL,
	[SoCaLam] [int] NULL,
	[DiaChi_NV] [nvarchar](100) NULL,
	[SDT_NV] [nvarchar](15) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[ID_NV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (1, N'Võ Thành', N'Đức', N'BT', 1, CAST(0x9B2D0B00 AS Date), 14, N'HCM', N'0903847657')
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (2, N'Nguyễn Thị Thanh', N'Nhàn', N'BT', 0, CAST(0xFF2F0B00 AS Date), 14, N'HCM', N'0938987864')
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (3, N'Trần Ngọc', N'Mỹ', N'BT', 0, CAST(0xE4310B00 AS Date), 25, N'Long An', N'0904978564')
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (5, N'Lê Đạt', N'Trọng', N'BT', 1, CAST(0xC0390B00 AS Date), 23, N'Bình Định', N'01267990544')
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (6, N'Lê Thị', N'Hoa', N'QL', 0, CAST(0x5C3B0B00 AS Date), 29, N'Quảng Trị', N'01228975482')
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (7, N'Nguyễn Anh', N'Tùng', N'PB', 1, CAST(0x583A0B00 AS Date), 17, N'HCM', N'01213650912')
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (8, N'Lê Văn', N'Thông', N'PB', 1, CAST(0x60380B00 AS Date), 16, N'Khánh Hòa', N'01208675388')
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (9, N'Dương Thị Mỹ', N'Yên', N'PB', 0, CAST(0xD13B0B00 AS Date), 18, N'Nghệ An', N'0901249268')
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (10, N'Bùi Ngọc', N'Thịnh', N'PB', 1, CAST(0x4C390B00 AS Date), 13, N'Đắc Lắc', N'0909457397')
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (11, N'Huỳnh Tấn', N'Quang', N'PV', 1, CAST(0x8C3B0B00 AS Date), 22, N'Khánh Hòa', N'01218974552')
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (12, N'Nguyễn Thị', N'Dung', N'PV', 0, CAST(0x913A0B00 AS Date), 25, N'Đắc Nông', N'01287699332')
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (13, N'Phạm Như', N'Quỳnh', N'PV', 0, CAST(0x98380B00 AS Date), 17, N'Thừa Thiên Huế', N'01211879326')
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (14, N'Lương Thị Huỳnh', N'Đan', N'PV', 0, CAST(0x0D3A0B00 AS Date), 28, N'Cà Mau', N'01289896653')
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (15, N'Lê Minh Thanh', N'Tâm', N'PV', 0, CAST(0xD73A0B00 AS Date), 5, N'Bình Định', N'0936877046')
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (16, N'Doãn Chí', N'Hoàng', N'PV', 1, CAST(0x903B0B00 AS Date), 11, N'Đồng Nai', N'0907567534')
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (17, N'Võ Thị Thảo', N'My', N'TV', 0, CAST(0xC6320B00 AS Date), 9, N'HCM', N'0903867493')
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (18, N'Võ Nhẫn', N'Đức', N'BV', 1, CAST(0xF3330B00 AS Date), 24, N'HCM', N'01204788944')
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (33, N'Le', N'A', N'PV', 1, CAST(0x583B0B00 AS Date), 4, N'SG', N'1234')
INSERT [dbo].[NHANVIEN] ([ID_NV], [Ho_NV], [Ten_NV], [ID_ChucVu], [GioiTinh_NV], [NgayBatDauLam], [SoCaLam], [DiaChi_NV], [SDT_NV]) VALUES (35, N'Le', N'A', N'PV', 1, CAST(0x583B0B00 AS Date), 4, N'SG', N'1234')
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
/****** Object:  StoredProcedure [dbo].[uspThemKH]    Script Date: 12/14/2016 22:07:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspThemKH]
	@Ho nvarchar(50),
	@Ten nvarchar (50),
	@GioiTinh bit,
	@DienThoai nvarchar (15)
AS
	INSERT INTO KHACHHANG(Ho_KH, Ten_KH, GioiTinh_KH, SDT_KH)
	VALUES (@Ho, @Ten, @GioiTinh, @DienThoai)
GO
/****** Object:  Table [dbo].[MON]    Script Date: 12/14/2016 22:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MON](
	[ID_Mon] [nvarchar](8) NOT NULL,
	[Ten_Mon] [nvarchar](50) NOT NULL,
	[QuyCach] [nvarchar](50) NULL,
	[NuocCham] [nvarchar](50) NULL,
	[MonKemTheo] [nvarchar](50) NULL,
	[DonGia] [money] NULL,
	[ChuThich] [nvarchar](100) NULL,
	[ID_LoaiMon] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_MON] PRIMARY KEY CLUSTERED 
(
	[ID_Mon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'C01', N'Canh chua', N'Phần 2 người', NULL, NULL, 30000.0000, NULL, N'C')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'C02', N'Canh rong biển', N'Phần 2 người', NULL, NULL, 30000.0000, NULL, N'C')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'C03', N'Canh xà lách xoong', N'Phần 2 người', NULL, NULL, 30000.0000, NULL, N'C')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'C04', N'Canh tần ô', N'Phần 2 người', NULL, NULL, 30000.0000, NULL, N'C')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'C05', N'Canh nấm', N'Phần 1 người', NULL, NULL, 30000.0000, NULL, N'C')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'C06', N'Canh thiên lý', N'Phần 2 người', NULL, NULL, 30000.0000, NULL, N'C')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'C07', N'Canh khổ qua', N'Phần 2 người', NULL, NULL, 30000.0000, NULL, N'C')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'CC01', N'Cơm chiên dương châu', N'Phần 1 người', N'Nước tương', NULL, 35000.0000, NULL, N'CC')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'CC02', N'Cơm chiên thái', N'Phần 1 người', N'Nước tương', NULL, 35000.0000, NULL, N'CC')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'CC03', N'Cơm chiên xá xíu', N'Phần 1 người', N'Nước tương', NULL, 35000.0000, NULL, N'CC')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'CC04', N'Cơm niêu', N'Phần 2 người', N'Nước tương', NULL, 50000.0000, NULL, N'CC')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'CC05', N'Cơm cá mặn', N'Phần 2 người', N'Nước tương', NULL, 50000.0000, NULL, N'CC')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'CC06', N'Cơm xào thập cẩm', N'Phần 1 người', N'Nước tương', NULL, 35000.0000, NULL, N'CC')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'CC07', N'Cơm nướng giấy bạc', N'Phần 1 người', N'Nước tương', NULL, 35000.0000, NULL, N'CC')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'CC08', N'Cơm chiên sen', N'Phần 1 người', N'Nước tương', NULL, 35000.0000, NULL, N'CC')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'G01', N'Gỏi củ hủ dừa', NULL, N'Nước mắm ngọt', N'Bánh phồng', 35000.0000, NULL, N'G')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'G02', N'Gỏi bào ngư', NULL, N'Nước mắm ngọt', N'Bánh phồng', 40000.0000, NULL, N'G')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'G03', N'Gỏi Ngó sen', NULL, N'Nước mắm ngọt', N'Bánh phồng', 35000.0000, NULL, N'G')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'G04', N'Gỏi thiên lý', NULL, N'Nước mắm ngọt', N'Bánh phồng', 35000.0000, NULL, N'G')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'G05', N'Gỏi rau nhút', NULL, N'Nước mắm ngọt', N'Bánh phồng', 35000.0000, NULL, N'G')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'G06', N'Gỏi nấm tuyết', NULL, N'Nước mắm ngọt', N'Bánh phồng', 35000.0000, NULL, N'G')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'G07', N'Xà lách Nga trộn', NULL, N'Mayonnaise, nước mắm ngọt', NULL, 30000.0000, NULL, N'G')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'K01', N'Rau lẩu lớn thêm', N'phần 4 người', NULL, NULL, 25000.0000, NULL, N'K')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'K02', N'Rau lẩu nhỏ thêm', N'Phần 2 người', NULL, NULL, 20000.0000, NULL, N'K')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'K03', N'Rau bánh xèo thêm', NULL, NULL, NULL, 15000.0000, NULL, N'K')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'K04', N'Rau chả bắp thêm', NULL, NULL, NULL, 15000.0000, NULL, N'K')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'K05', N'Bún lẩu lớn thêm', N'Phần 4 người', NULL, NULL, 15000.0000, NULL, N'K')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'K06', N'Bún lẩu nhỏ thêm', N'Phần 2 người', NULL, NULL, 10000.0000, NULL, N'K')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'K07', N'Bánh mì thêm', NULL, NULL, NULL, 5000.0000, NULL, N'K')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'K08', N'Cơm trắng thố lớn', NULL, NULL, NULL, 20000.0000, NULL, N'K')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'K09', N'Cơm trắng thố nhỏ', NULL, NULL, NULL, 15000.0000, NULL, N'K')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'K10', N'Rau bún đậu thêm', NULL, NULL, NULL, 10000.0000, NULL, N'K')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'K11', N'Bún bún đậu thêm', NULL, NULL, NULL, 15000.0000, NULL, N'K')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'K12', N'Bánh tráng thêm', N'Phần bánh xèo', NULL, NULL, 5000.0000, NULL, N'K')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'K13', N'Bánh phồng thêm', NULL, NULL, NULL, 5000.0000, NULL, N'K')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'KV01', N'Bào ngư chiên xù', N'Phần 5 cái', N'Tương xí muội', NULL, 35000.0000, NULL, N'KV')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'KV02', N'Đậu hủ chiên xù', N'Phần 5 cái', N'Tương xí muội', NULL, 35000.0000, NULL, N'KV')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'KV03', N'Chả giò Huệ Tâm', N'Phần 5 cuốn', N'Tương ớt, mayonnaise', NULL, 35000.0000, NULL, N'KV')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'KV04', N'Bắp non chiên xù', N'Phần 6 cái', N'Tương xí muội', NULL, 35000.0000, NULL, N'KV')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'KV05', N'Sushi chiên xù', N'Phần 1 cuốn', N'Tương xí muội', NULL, 35000.0000, NULL, N'KV')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'L01', N'Lấu thái lớn', N'Phần 4 người', N'Nước mắm mặn', N'Rau, bún (mì)', 300000.0000, NULL, N'L')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'L02', N'Lẩu thái nhỏ', N'Phần 2 người', N'Chao', N'Rau, bún (mì)', 130000.0000, NULL, N'L')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'L03', N'Lẩu nấm lớn', N'Phần 4 người', N'Chao', N'Rau, bún (mì)', 300000.0000, NULL, N'L')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'L04', N'Lẩu nấm nhỏ', N'Phần 2 người', N'Chao', N'Rau, bún (mì)', 130000.0000, NULL, N'L')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'L05', N'Lẩu sacha lớn', N'Phần 4 người', N'Chao', N'Rau, bún (mì)', 300000.0000, NULL, N'L')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'L06', N'Lẩu sacha nhỏ', N'Phần 2 người', N'Chao', N'Rau, bún (mì)', 130000.0000, NULL, N'L')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'L07', N'Lẩu thập cẩm lớn', N'Phần 4 người', N'Chao', N'Rau, bún (mì)', 300000.0000, NULL, N'L')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'L08', N'Lẩu thập cẩm nhỏ', N'Phần 2 người', N'Chao', N'Rau, bún (mì)', 130000.0000, NULL, N'L')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'L09', N'Lẩu rong biển lớn', N'Phần 4 người', N'Nước tương', N'Rau, bún (mì)', 300000.0000, NULL, N'L')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'L10', N'Lẩu rong biến nhỏ', N'Phần 2 người', N'Nước tương', N'Rau, bún (mì)', 130000.0000, NULL, N'L')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'L11', N'Lẩu môn lớn', N'Phần 4 người', N'Chao', N'Rau, bún (mì)', 300000.0000, NULL, N'L')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'L12', N'Lẩu môn nhỏ', N'Phần 2 người', N'Chao', N'Rau, bún (mì)', 130000.0000, NULL, N'L')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MC01', N'Cà ri thái', N'', NULL, N'Bánh mì, bún', 60000.0000, NULL, N'MC')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MC02', N'Lagu', NULL, NULL, N'Bánh mì, bún, cơm', 60000.0000, NULL, N'MC')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MC03', N'Heo quay Hồng Kông', NULL, NULL, N'Bánh bao', 60000.0000, NULL, N'MC')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MC04', N'Bò lúc lắc khoai tây', NULL, N'Nước tương', N'Khoai tây chiên', 60000.0000, NULL, N'MC')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MC05', N'Gà roti xôi phồng', NULL, N'Nước tương', N'Xôi phồng', 60000.0000, NULL, N'MC')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MC06', N'Nấm sốt giấy bạc', NULL, NULL, N'Bánh mì', 60000.0000, NULL, N'MC')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MC07', N'Bún đậu mắm tôm', NULL, N'Mắm nêm', N'Rau sống, bún', 50000.0000, NULL, N'MC')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MC08', N'Bát hoa hầm tóc tiên', NULL, NULL, N'Bánh mì', 60000.0000, NULL, N'MC')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MCn01', N'Gỏi cuốn', N'Phần 5 cuốn', N'Mắm nên', NULL, 35000.0000, NULL, N'MCn')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MCn02', N'Bì cuốn', N'Phần 5 cuốn', N'Nước mắm ngọt', NULL, 35000.0000, NULL, N'MCn')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MCn03', N'Chả bắp cuốn rau sống', N'Phần 5 cuốn', N'Nước mắm ngọt', NULL, 35000.0000, NULL, N'MCn')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MCn04', N'Bánh xèo Huệ Tâm', NULL, N'Nước mắm ngọt', NULL, 40000.0000, NULL, N'MCn')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MCn05', N'Sushi', NULL, N'Nước tương', NULL, 35000.0000, NULL, N'MCn')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MCn06', N'Trứng cuộn Nhật Bản', NULL, N'Nước tương', NULL, 35000.0000, NULL, N'MCn')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'ML01', N'Đậu bắp luộc', NULL, N'Chao', NULL, 25000.0000, NULL, N'ML')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'ML02', N'Đậu que luộc', NULL, N'Chao', NULL, 25000.0000, NULL, N'ML')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'ML03', N'Rau luộc thập cẩm', NULL, N'Chao', NULL, 25000.0000, NULL, N'ML')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MM01', N'Chân nấm kho tộ', N'Thố', NULL, N'Cơm trắng', 50000.0000, NULL, N'MM')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MM02', N'Linh chi kho tộ', N'Thố', NULL, N'Cơm trắng', 40000.0000, NULL, N'MM')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MM03', N'Nấm rơm kho tộ', N'Thố', NULL, N'Cơm trắng', 40000.0000, NULL, N'MM')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MM04', N'Đông cô kho phô mai', N'Thố', NULL, N'Cơm trắng', 40000.0000, NULL, N'MM')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MM05', N'Chân nấm xào sả ớt', NULL, NULL, N'Cơm trắng', 50000.0000, NULL, N'MM')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MM06', N'Nấm rơm xào sả ớt', NULL, NULL, N'Cơm trắng', 40000.0000, NULL, N'MM')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MM07', N'Bào ngư xào sả ớt', NULL, NULL, N'Cơm trắng', 40000.0000, NULL, N'MM')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MM08', N'Chả cá sốt cà', NULL, NULL, N'Cơm trắng', 40000.0000, NULL, N'MM')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MM09', N'Đậu hủ rim mè', NULL, NULL, N'Cơm trắng', 40000.0000, NULL, N'MM')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MM10', N'Sườn ram mè', NULL, NULL, N'Cơm trắng', 40000.0000, NULL, N'MM')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MM11', N'Cánh gà chiên nước mắm', NULL, NULL, N'Cơm trắng', 40000.0000, NULL, N'MM')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MM12', N'Đậu hủ chiên sả', NULL, NULL, N'Cơm trắng', 40000.0000, NULL, N'MM')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MX01', N'Mì xào thập cẩm', N'Phần 1 người', N'Nước tương', NULL, 35000.0000, NULL, N'MX')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MX02', N'Miến xào thập cẩm', N'Phần 1 người', N'Nước tương', NULL, 35000.0000, NULL, N'MX')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MX03', N'Miến xào Hàn Quốc', N'Phần 1 người', N'Nước tương', NULL, 35000.0000, NULL, N'MX')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MX04', N'Miến xào Singapore', N'Phần 1 người', N'Nước tương', NULL, 35000.0000, NULL, N'MX')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MX05', N'Miến sốt chua ngọt', N'Phần 1 người', N'Nước tương', NULL, 35000.0000, NULL, N'MX')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MX06', N'Mì xào giòn', N'Phần 2 người', N'Nước tương', NULL, 50000.0000, NULL, N'MX')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'MX07', N'Mì Ý', N'Phần 1 người', N'Nước tương, tương ớt', NULL, 50000.0000, NULL, N'MX')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'PZ01', N'Pizza phô mai', NULL, N'Mayonnaise, tương cà', NULL, 40000.0000, NULL, N'PZ')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'PZ02', N'Pizza bắp', NULL, N'Mayonnase, tương cà', NULL, 40000.0000, NULL, N'PZ')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'RX01', N'Rau xào ngũ sắc', NULL, N'', NULL, 25000.0000, NULL, N'RX')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'RX02', N'Cải thìa xào nấm', NULL, N'', NULL, 25000.0000, NULL, N'RX')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'RX03', N'Cải thìa sốt đông cô', NULL, NULL, NULL, 30000.0000, NULL, N'RX')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'RX04', N'Đậu que xào', NULL, N'', NULL, 25000.0000, NULL, N'RX')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'RX05', N'Rau muống xào tỏi', NULL, N'', NULL, 25000.0000, NULL, N'RX')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'RX06', N'Rau muống xào chao', NULL, NULL, NULL, 25000.0000, NULL, N'RX')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'S01', N'Súp sen', NULL, NULL, NULL, 22000.0000, NULL, N'S')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'S02', N'Súp bào ngư', NULL, NULL, NULL, 22000.0000, NULL, N'S')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'S03', N'Súp nấm', NULL, NULL, NULL, 22000.0000, NULL, N'S')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'S04', N'Súp rong biển', NULL, NULL, NULL, 22000.0000, NULL, N'S')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'S05', N'Súp tóc tiên', NULL, NULL, NULL, 22000.0000, NULL, N'S')
GO
print 'Processed 100 total records'
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'S06', N'Súp bắp', NULL, NULL, NULL, 22000.0000, NULL, N'S')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'S07', N'Súp bách quả', NULL, NULL, NULL, 22000.0000, NULL, N'S')
INSERT [dbo].[MON] ([ID_Mon], [Ten_Mon], [QuyCach], [NuocCham], [MonKemTheo], [DonGia], [ChuThich], [ID_LoaiMon]) VALUES (N'S08', N'Súp trái dừa', NULL, NULL, NULL, 22000.0000, NULL, N'S')
/****** Object:  Table [dbo].[ORDERS]    Script Date: 12/14/2016 22:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDERS](
	[ID_Orders] [int] IDENTITY(1,1) NOT NULL,
	[ID_KH] [int] NOT NULL,
	[ID_NV] [int] NOT NULL,
	[NgayGioDat] [datetime] NOT NULL,
	[BanSo] [nvarchar](3) NULL,
 CONSTRAINT [PK_ORDERS] PRIMARY KEY CLUSTERED 
(
	[ID_Orders] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ORDERS] ON
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (1, 2, 11, CAST(0x000097E200E6B680 AS DateTime), N'A01')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (3, 1, 11, CAST(0x0000A59601206420 AS DateTime), N'B01')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (4, 3, 12, CAST(0x0000A65300986F70 AS DateTime), N'A02')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (5, 4, 12, CAST(0x0000A5BA00AFC800 AS DateTime), N'B02')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (11, 6, 11, CAST(0x0000A6AE00B964F0 AS DateTime), N'A03')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (13, 7, 11, CAST(0x0000A6BB00B84BB0 AS DateTime), N'B03')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (14, 8, 11, CAST(0x0000A604015F9000 AS DateTime), N'A04')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (15, 9, 12, CAST(0x0000A66901549380 AS DateTime), N'B04')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (16, 10, 12, CAST(0x0000A686013FFA10 AS DateTime), N'A05')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (17, 11, 12, CAST(0x0000A6420130DEE0 AS DateTime), N'B05')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (18, 12, 12, CAST(0x0000A6A201457850 AS DateTime), N'A06')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (19, 13, 13, CAST(0x0000A67B01499700 AS DateTime), N'B06')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (20, 14, 13, CAST(0x0000A9FF00BAC480 AS DateTime), N'A07')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (21, 15, 13, CAST(0x0000A5EC00C88020 AS DateTime), N'B07')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (22, 16, 13, CAST(0x0000A59C011F0490 AS DateTime), N'A08')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (23, 17, 13, CAST(0x0000A5C1011567A0 AS DateTime), N'B08')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (24, 18, 14, CAST(0x0000A62300DE7920 AS DateTime), N'A09')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (25, 19, 14, CAST(0x0000A66C00B80560 AS DateTime), N'B09')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (26, 20, 14, CAST(0x0000A67D00B3E6B0 AS DateTime), N'A10')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (28, 22, 14, CAST(0x0000A6A2009C8E20 AS DateTime), N'B10')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (29, 23, 14, CAST(0x0000A6C8008ED280 AS DateTime), N'A01')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (30, 24, 15, CAST(0x0000A60C00E975A0 AS DateTime), N'B01')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (31, 25, 15, CAST(0x0000A5EF01457850 AS DateTime), N'A02')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (32, 26, 15, CAST(0x0000A640015A11C0 AS DateTime), N'B02')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (33, 27, 15, CAST(0x0000A67C0167CD60 AS DateTime), N'A03')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (34, 28, 15, CAST(0x0000A62E00CB3F40 AS DateTime), N'B03')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (35, 29, 16, CAST(0x0000A6510142B930 AS DateTime), N'A04')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (36, 30, 16, CAST(0x0000A660014AF690 AS DateTime), N'B04')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (37, 31, 16, CAST(0x0000A6B20125E260 AS DateTime), N'A05')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (38, 32, 16, CAST(0x0000A63801090B90 AS DateTime), N'B05')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (39, 33, 16, CAST(0x0000A66500F73140 AS DateTime), N'A06')
INSERT [dbo].[ORDERS] ([ID_Orders], [ID_KH], [ID_NV], [NgayGioDat], [BanSo]) VALUES (40, 34, 15, CAST(0x0000A67A00C5C100 AS DateTime), N'B06')
SET IDENTITY_INSERT [dbo].[ORDERS] OFF
/****** Object:  Table [dbo].[CUNGCAP]    Script Date: 12/14/2016 22:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUNGCAP](
	[ID_NVL] [nvarchar](10) NOT NULL,
	[ID_NCC] [nvarchar](5) NOT NULL,
	[DonGia] [money] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_CUNGCAP] PRIMARY KEY CLUSTERED 
(
	[ID_NVL] ASC,
	[ID_NCC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'C01', N'NCC3', 35000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'C02', N'NCC3', 20000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'C05', N'NCC3', 15000.0000, 3)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'C12', N'NCC3', 10000.0000, 4)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'C13', N'NCC3', 18000.0000, 3)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'C14', N'NCC3', 18000.0000, 3)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'C15', N'NCC3', 20000.0000, 1)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'C16', N'NCC3', 17000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'C17', N'NCC3', 8000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'C18', N'NCC3', 21000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'C19', N'NCC3', 30000.0000, 1)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'D03', N'NCC3', 90000.0000, 1)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'D04', N'NCC3', 25000.0000, 1)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'D05', N'NCC3', 40000.0000, 1)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'D06', N'NCC3', 37000.0000, 1)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'D08', N'NCC3', 200000.0000, 1)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'DL01', N'NCC1', 70000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'DL02', N'NCC1', 150000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'DL03', N'NCC1', 75000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'DL04', N'NCC1', 91000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'DL05', N'NCC1', 40000.0000, 3)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'DL06', N'NCC1', 67000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'DL07', N'NCC1', 69000.0000, 5)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'DL08', N'NCC1', 20000.0000, 15)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'DL09', N'NCC1', 53000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'DL10', N'NCC1', 15000.0000, 5)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'DL11', N'NCC1', 12000.0000, 5)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'GV01', N'NCC2', 20000.0000, 10)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'GV02', N'NCC2', 8000.0000, 10)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'GV03', N'NCC2', 25000.0000, 4)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'GV04', N'NCC2', 27000.0000, 4)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'GV05', N'NCC2', 27000.0000, 4)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'GV06', N'NCC2', 26000.0000, 4)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'GV07', N'NCC2', 35000.0000, 4)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'GV08', N'NCC2', 30000.0000, 4)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'GV09', N'NCC2', 27000.0000, 4)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'GV10', N'NCC2', 16000.0000, 3)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'GV12', N'NCC2', 30000.0000, 4)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'GV13', N'NCC2', 105000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'GV14', N'NCC2', 45000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'GV16', N'NCC2', 51000.0000, 4)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'GV17', N'NCC2', 51000.0000, 4)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'GV18', N'NCC2', 18000.0000, 4)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'GV19', N'NCC2', 18000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'GV22', N'NCC2', 8000.0000, 10)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'HK01', N'NCC2', 50000.0000, 3)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'HK02', N'NCC2', 30000.0000, 3)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'HK03', N'NCC2', 27000.0000, 3)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'HK04', N'NCC2', 12000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'HK05', N'NCC2', 89000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'HK06', N'NCC2', 12000.0000, 4)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'HK07', N'NCC2', 30000.0000, 3)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'HK08', N'NCC2', 90000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'HK09', N'NCC2', 130000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'HK10', N'NCC2', 41000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'HK11', N'NCC2', 5000.0000, 10)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'HK12', N'NCC2', 18000.0000, 50)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'HK13', N'NCC2', 7000.0000, 10)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'HK14', N'NCC2', 34000.0000, 3)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'HK15', N'NCC2', 21000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'N01', N'NCC4', 10000.0000, 10)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'N02', N'NCC4', 13000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'N03', N'NCC4', 50000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'N04', N'NCC4', 12000.0000, 3)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'N05', N'NCC4', 28000.0000, 4)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'N06', N'NCC4', 16000.0000, 3)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'R01', N'NCC3', 10000.0000, 3)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'R02', N'NCC3', 11000.0000, 3)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'R03', N'NCC3', 9000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'R04', N'NCC3', 12000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'R05', N'NCC3', 7000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'R06', N'NCC3', 14000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'R07', N'NCC3', 21000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'R08', N'NCC3', 20000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'R09', N'NCC3', 25000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'R10', N'NCC3', 24000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'R11', N'NCC3', 27000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'R12', N'NCC3', 51000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'R13', N'NCC3', 55000.0000, 2)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'R14', N'NCC3', 10000.0000, 1)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'R15', N'NCC3', 14000.0000, 1)
INSERT [dbo].[CUNGCAP] ([ID_NVL], [ID_NCC], [DonGia], [SoLuong]) VALUES (N'R16', N'NCC3', 14000.0000, 1)
/****** Object:  StoredProcedure [dbo].[uspXoaNV]    Script Date: 12/14/2016 22:07:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspXoaNV]
	@Ma int
	
AS
	delete NHANVIEN
	where ID_NV = @Ma
GO
/****** Object:  Table [dbo].[MON_NVL]    Script Date: 12/14/2016 22:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MON_NVL](
	[ID_Mon] [nvarchar](8) NOT NULL,
	[ID_NVL] [nvarchar](10) NOT NULL,
	[CheBien] [nvarchar](100) NULL,
 CONSTRAINT [PK_MON_NVL] PRIMARY KEY CLUSTERED 
(
	[ID_Mon] ASC,
	[ID_NVL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C01', N'C01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C01', N'C06', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C01', N'C07', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C01', N'DL11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C01', N'N05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C01', N'R04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C01', N'R06', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C01', N'R14', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C02', N'C14', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C02', N'DL11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C02', N'HK08', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C02', N'N05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C04', N'DL11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C04', N'N05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C04', N'R07', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C06', N'DL11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C06', N'N05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C06', N'R13', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C07', N'C16', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C07', N'DL11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'C07', N'N05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC01', N'C14', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC01', N'C15', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC01', N'C19', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC01', N'DL04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC01', N'DL05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC02', N'C13', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC02', N'C14', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC02', N'C15', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC02', N'C19', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC02', N'C20', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC03', N'C11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC03', N'DL03', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC04', N'C14', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC04', N'C15', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC04', N'C18', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC04', N'DL04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC04', N'DL05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC04', N'N03', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC04', N'N04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'CC04', N'R16', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'G01', N'C01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'G01', N'C14', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'G01', N'D04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'G01', N'DL04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'G01', N'R17', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'G02', N'C12', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'G02', N'C14', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'G02', N'D04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'G02', N'DL04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'G02', N'N02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'G02', N'R17', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'G04', N'C12', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'G04', N'C14', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'G04', N'D04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'G04', N'DL04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'G04', N'R13', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'G04', N'R17', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'KV01', N'HK05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'KV01', N'N02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'KV02', N'DL11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'KV02', N'HK05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'KV04', N'C18', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'KV04', N'HK05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L02', N'C01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L02', N'C18', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L02', N'DL07', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L02', N'DL11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L02', N'N01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L02', N'N02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L02', N'N03', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L02', N'N04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L02', N'N05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L04', N'C01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L04', N'C18', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L04', N'DL07', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L04', N'DL11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L04', N'N01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L04', N'N02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L04', N'N03', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L04', N'N04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L04', N'N05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L06', N'C01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L06', N'C18', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L06', N'DL07', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L06', N'DL11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L06', N'N01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L06', N'N02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L06', N'N03', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L06', N'N04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'L06', N'N05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MC01', N'C05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MC01', N'C06', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MC01', N'C07', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MC01', N'C12', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MC01', N'C13', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MC01', N'DL02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MC01', N'GV20', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MC03', N'C06', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MC03', N'DL09', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MC03', N'R03', NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MC04', N'C06', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MC04', N'C11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MC04', N'C12', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MC04', N'C13', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MC04', N'C17', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MC04', N'D06', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MCn01', N'DL04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MCn01', N'DL05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MCn01', N'DL10', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MCn01', N'HK11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MCn01', N'R03', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MCn01', N'R11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MCn04', N'C01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MCn04', N'DL02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MCn04', N'DL10', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MCn04', N'HK14', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MCn04', N'N02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'ML01', N'C07', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'ML03', N'C07', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'ML03', N'C14', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'ML03', N'C15', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'ML03', N'R01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'ML03', N'R02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MM01', N'DL02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MM01', N'GV02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MM03', N'GV02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MM03', N'N05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MM04', N'DL12', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MM04', N'N03', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MM08', N'C06', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MM08', N'DL07', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MM08', N'GV05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MM10', N'C12', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MM10', N'D01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MM10', N'DL03', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MM11', N'C06', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MM11', N'C17', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MM11', N'DL01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MM11', N'GV01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MM11', N'R03', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX01', N'C01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX01', N'C14', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX01', N'C15', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX01', N'HK03', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX01', N'R01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX01', N'R02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX02', N'C01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX02', N'C14', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX02', N'C15', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX02', N'HK02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX02', N'R01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX02', N'R02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX06', N'C01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX06', N'C14', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX06', N'C15', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX06', N'HK01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX06', N'R01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX06', N'R02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX06', N'R12', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX07', N'C01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX07', N'C13', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX07', N'C14', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX07', N'C15', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX07', N'HK16', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'MX07', N'R03', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'PZ01', N'DL08', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'PZ02', N'DL08', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'RX01', N'C14', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'RX01', N'C15', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'RX01', N'C16', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'RX01', N'R01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'RX01', N'R02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'RX02', N'N01', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'RX02', N'R02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'RX03', N'N03', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'RX03', N'R02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'RX04', N'C15', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'RX04', N'N05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'RX05', N'C10', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'RX05', N'R05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'RX06', N'GV22', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'RX06', N'R05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S01', N'D08', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S01', N'DL04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S01', N'DL11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S01', N'N03', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S01', N'N05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S02', N'D06', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S02', N'DL04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S02', N'DL11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S02', N'N02', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S02', N'N03', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S02', N'N05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S04', N'D07', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S04', N'DL04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S04', N'DL11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S04', N'HK08', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S04', N'N03', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S04', N'N05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S05', N'D06', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S05', N'DL04', NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S05', N'DL11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S05', N'HK10', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S05', N'N03', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S05', N'N05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S06', N'C19', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S06', N'D07', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S06', N'DL04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S06', N'DL11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S06', N'N03', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S06', N'N05', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S07', N'DL04', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S07', N'DL11', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S07', N'DL13', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S07', N'N03', NULL)
INSERT [dbo].[MON_NVL] ([ID_Mon], [ID_NVL], [CheBien]) VALUES (N'S07', N'N05', NULL)
/****** Object:  StoredProcedure [dbo].[uspXemNV]    Script Date: 12/14/2016 22:07:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspXemNV]
AS
	SELECT ID_NV, (Ho_NV + ' ' + Ten_NV) AS HoTenNV, cv.Ten_ChucVu, GioiTinh_NV, DiaChi_NV,NgayBatDauLam, SDT_NV
	FROM NHANVIEN nv JOIN CHUCVU cv ON nv.ID_ChucVu = cv.ID_ChucVu
GO
/****** Object:  StoredProcedure [dbo].[uspTinhLuongNV]    Script Date: 12/14/2016 22:07:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspTinhLuongNV]
AS
	SELECT ID_NV, (Ho_NV + ' ' + Ten_NV) AS HoTenNV, GioiTinh_NV, cv.Ten_ChucVu, SoCaLam, HeSoLuong, (SoCaLam * HeSoLuong) AS LuongThang, SDT_NV
	FROM NHANVIEN nv JOIN CHUCVU cv ON nv.ID_ChucVu = cv.ID_ChucVu
GO
/****** Object:  StoredProcedure [dbo].[uspThamNV]    Script Date: 12/14/2016 22:07:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspThamNV]
	@Ho nvarchar(50),
	@Ten nvarchar(25),
	@Chucvu nvarchar(5),
	@Gioitinh bit,
	@Ngayvaolam date,
	@Socalam int,
	@Diachi nvarchar(100),
	@SDT nvarchar(15)
AS
	INSERT INTO NHANVIEN(Ho_NV, Ten_NV, ID_ChucVu, GioiTinh_NV,NgayBatDauLam,SoCaLam, DiaChi_NV, SDT_NV)
	VALUES (@Ho, @Ten, @Chucvu, @Gioitinh,@Ngayvaolam, @Socalam, @Diachi,@SDT)
GO
/****** Object:  StoredProcedure [dbo].[uspDatHang]    Script Date: 12/14/2016 22:07:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspDatHang]
AS
SELECT nvl.ID_NVL, Ten_NVL, Ten_LoaiNVL, Ten_NCC, QuyCach, SoLuongCon, DonViTinh FROM CUNGCAP cc
	JOIN NGUYENVATLIEU nvl ON nvl.ID_NVL = cc.ID_NVL
	JOIN NHACUNGCAP ncc ON cc.ID_NCC = ncc.ID_NCC 
	JOIN LOAI_NVL loaiVNL ON nvl.ID_LoaiNVL = loaiVNL.ID_LoaiNVL
	WHERE SoLuongCon <= ToiThieuDatLai
GO
/****** Object:  Table [dbo].[MON_ORDERS]    Script Date: 12/14/2016 22:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MON_ORDERS](
	[ID_Orders] [int] NOT NULL,
	[ID_Mon] [nvarchar](8) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [money] NOT NULL,
 CONSTRAINT [PK_MON_ORDERS] PRIMARY KEY CLUSTERED 
(
	[ID_Orders] ASC,
	[ID_Mon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (1, N'C01', 1, 30000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (1, N'CC02', 1, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (3, N'G03', 1, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (3, N'MC07', 1, 50000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (4, N'KV03', 2, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (4, N'L01', 1, 300000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (5, N'G01', 1, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (5, N'MC01', 1, 60000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (11, N'C02', 1, 30000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (11, N'K08', 1, 20000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (11, N'MM06', 1, 40000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (13, N'MX01', 1, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (13, N'MX02', 2, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (14, N'MCn04', 1, 40000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (14, N'MX07', 1, 50000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (15, N'MCn04', 2, 40000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (15, N'S04', 4, 22000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (16, N'PZ02', 2, 40000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (16, N'S07', 2, 22000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (17, N'C06', 1, 30000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (17, N'K08', 1, 20000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (17, N'RX05', 1, 25000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (18, N'KV05', 1, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (18, N'L04', 1, 130000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (19, N'G02', 1, 40000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (19, N'MC06', 1, 60000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (20, N'MC04', 1, 60000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (20, N'MCn06', 1, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (21, N'K08', 1, 20000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (21, N'MM09', 1, 40000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (22, N'MX05', 2, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (22, N'S03', 2, 22000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (23, N'MCn01', 1, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (23, N'PZ01', 1, 40000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (24, N'G06', 1, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (24, N'L10', 1, 130000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (25, N'MC01', 1, 60000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (25, N'MCn03', 1, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (26, N'C07', 1, 30000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (26, N'K08', 1, 20000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (26, N'RX01', 1, 25000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (28, N'G02', 1, 40000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (28, N'MC05', 1, 60000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (29, N'L08', 1, 130000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (29, N'S04', 2, 22000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (30, N'KV03', 1, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (30, N'MC03', 1, 60000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (31, N'KV01', 2, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (31, N'MX01', 3, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (32, N'C05', 1, 30000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (32, N'K08', 1, 20000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (32, N'MM05', 1, 50000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (33, N'MX07', 2, 50000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (34, N'PZ02', 2, 40000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (34, N'S01', 1, 22000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (34, N'S05', 1, 22000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (35, N'C04', 1, 30000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (35, N'K08', 1, 20000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (35, N'MM08', 1, 40000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (36, N'C03', 1, 30000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (36, N'CC07', 2, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (37, N'K02', 1, 20000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (37, N'L06', 1, 130000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (38, N'K07', 2, 5000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (38, N'MC01', 1, 60000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (39, N'KV02', 1, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (39, N'MX02', 1, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (39, N'MX05', 1, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (40, N'G05', 1, 35000.0000)
INSERT [dbo].[MON_ORDERS] ([ID_Orders], [ID_Mon], [SoLuong], [DonGia]) VALUES (40, N'MC04', 1, 60000.0000)
/****** Object:  StoredProcedure [dbo].[uspThanhToanTongHD]    Script Date: 12/14/2016 22:07:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspThanhToanTongHD]
AS
	--(SELECT ID_Orders, ID_Mon, SoLuong, DonGia, (DonGia*SoLuong) AS TinhTien, ThanhTien = SUM(DonGia*SoLuong) FROM MON_ORDERS mo
	--GROUP BY ID_Orders, ID_Mon, SoLuong, DonGia)
	SELECT ID_Orders, COUNT(ID_Mon) AS TongMon, SUM(DonGia*SoLuong) AS ThanhTien FROM MON_ORDERS
	GROUP BY ID_Orders;
GO
/****** Object:  StoredProcedure [dbo].[uspThanhToanHD]    Script Date: 12/14/2016 22:07:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspThanhToanHD]
AS
	--(SELECT ID_Orders, ID_Mon, SoLuong, DonGia, (DonGia*SoLuong) AS TinhTien, ThanhTien = SUM(DonGia*SoLuong) FROM MON_ORDERS mo
	--GROUP BY ID_Orders, ID_Mon, SoLuong, DonGia)
	SELECT ID_Orders, COUNT(ID_Mon) AS TongMon, SUM(DonGia*SoLuong) AS ThanhTien FROM MON_ORDERS
	GROUP BY ID_Orders;
GO
/****** Object:  StoredProcedure [dbo].[uspThanhToanCTHD]    Script Date: 12/14/2016 22:07:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspThanhToanCTHD]
AS
	SELECT ID_Orders, ID_Mon, SoLuong, DonGia, (DonGia*SoLuong) AS TinhTien FROM MON_ORDERS mo
	GROUP BY ID_Orders, ID_Mon, SoLuong, DonGia
	--SELECT ID_Orders, COUNT(ID_Mon) AS TongMon, SUM(DonGia*SoLuong) AS ThanhTien FROM MON_ORDERS
	--GROUP BY ID_Orders;
GO
/****** Object:  ForeignKey [FK_CUNGCAP_NGUYENVATLIEU]    Script Date: 12/14/2016 22:07:12 ******/
ALTER TABLE [dbo].[CUNGCAP]  WITH CHECK ADD  CONSTRAINT [FK_CUNGCAP_NGUYENVATLIEU] FOREIGN KEY([ID_NVL])
REFERENCES [dbo].[NGUYENVATLIEU] ([ID_NVL])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CUNGCAP] CHECK CONSTRAINT [FK_CUNGCAP_NGUYENVATLIEU]
GO
/****** Object:  ForeignKey [FK_CUNGCAP_NHACUNGCAP]    Script Date: 12/14/2016 22:07:12 ******/
ALTER TABLE [dbo].[CUNGCAP]  WITH CHECK ADD  CONSTRAINT [FK_CUNGCAP_NHACUNGCAP] FOREIGN KEY([ID_NCC])
REFERENCES [dbo].[NHACUNGCAP] ([ID_NCC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CUNGCAP] CHECK CONSTRAINT [FK_CUNGCAP_NHACUNGCAP]
GO
/****** Object:  ForeignKey [FK_MON_LOAI_MON]    Script Date: 12/14/2016 22:07:12 ******/
ALTER TABLE [dbo].[MON]  WITH CHECK ADD  CONSTRAINT [FK_MON_LOAI_MON] FOREIGN KEY([ID_LoaiMon])
REFERENCES [dbo].[LOAI_MON] ([ID_LoaiMon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MON] CHECK CONSTRAINT [FK_MON_LOAI_MON]
GO
/****** Object:  ForeignKey [FK_MON_NVL_MON]    Script Date: 12/14/2016 22:07:12 ******/
ALTER TABLE [dbo].[MON_NVL]  WITH CHECK ADD  CONSTRAINT [FK_MON_NVL_MON] FOREIGN KEY([ID_Mon])
REFERENCES [dbo].[MON] ([ID_Mon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MON_NVL] CHECK CONSTRAINT [FK_MON_NVL_MON]
GO
/****** Object:  ForeignKey [FK_MON_NVL_NGUYENVATLIEU]    Script Date: 12/14/2016 22:07:12 ******/
ALTER TABLE [dbo].[MON_NVL]  WITH CHECK ADD  CONSTRAINT [FK_MON_NVL_NGUYENVATLIEU] FOREIGN KEY([ID_NVL])
REFERENCES [dbo].[NGUYENVATLIEU] ([ID_NVL])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MON_NVL] CHECK CONSTRAINT [FK_MON_NVL_NGUYENVATLIEU]
GO
/****** Object:  ForeignKey [FK_MON_ORDERS_MON]    Script Date: 12/14/2016 22:07:12 ******/
ALTER TABLE [dbo].[MON_ORDERS]  WITH CHECK ADD  CONSTRAINT [FK_MON_ORDERS_MON] FOREIGN KEY([ID_Mon])
REFERENCES [dbo].[MON] ([ID_Mon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MON_ORDERS] CHECK CONSTRAINT [FK_MON_ORDERS_MON]
GO
/****** Object:  ForeignKey [FK_MON_ORDERS_ORDERS]    Script Date: 12/14/2016 22:07:12 ******/
ALTER TABLE [dbo].[MON_ORDERS]  WITH CHECK ADD  CONSTRAINT [FK_MON_ORDERS_ORDERS] FOREIGN KEY([ID_Orders])
REFERENCES [dbo].[ORDERS] ([ID_Orders])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MON_ORDERS] CHECK CONSTRAINT [FK_MON_ORDERS_ORDERS]
GO
/****** Object:  ForeignKey [FK_NGUYENVATLIEU_LOAI_NVL]    Script Date: 12/14/2016 22:07:12 ******/
ALTER TABLE [dbo].[NGUYENVATLIEU]  WITH CHECK ADD  CONSTRAINT [FK_NGUYENVATLIEU_LOAI_NVL] FOREIGN KEY([ID_LoaiNVL])
REFERENCES [dbo].[LOAI_NVL] ([ID_LoaiNVL])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NGUYENVATLIEU] CHECK CONSTRAINT [FK_NGUYENVATLIEU_LOAI_NVL]
GO
/****** Object:  ForeignKey [FK_NHANVIEN_CHUCVU]    Script Date: 12/14/2016 22:07:12 ******/
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_CHUCVU] FOREIGN KEY([ID_ChucVu])
REFERENCES [dbo].[CHUCVU] ([ID_ChucVu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_CHUCVU]
GO
/****** Object:  ForeignKey [FK_ORDERS_KHACHHANG]    Script Date: 12/14/2016 22:07:12 ******/
ALTER TABLE [dbo].[ORDERS]  WITH CHECK ADD  CONSTRAINT [FK_ORDERS_KHACHHANG] FOREIGN KEY([ID_KH])
REFERENCES [dbo].[KHACHHANG] ([ID_KH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ORDERS] CHECK CONSTRAINT [FK_ORDERS_KHACHHANG]
GO
/****** Object:  ForeignKey [FK_ORDERS_NHANVIEN]    Script Date: 12/14/2016 22:07:12 ******/
ALTER TABLE [dbo].[ORDERS]  WITH CHECK ADD  CONSTRAINT [FK_ORDERS_NHANVIEN] FOREIGN KEY([ID_NV])
REFERENCES [dbo].[NHANVIEN] ([ID_NV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ORDERS] CHECK CONSTRAINT [FK_ORDERS_NHANVIEN]
GO
