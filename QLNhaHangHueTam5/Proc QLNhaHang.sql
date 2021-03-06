USE QuanLyATC_HueTam
GO
--ThemKH
IF OBJECT_ID ('uspThemKH', 'P') IS NOT NULL
	DROP PROCEDURE uspThemKH;
GO
CREATE PROCEDURE uspThemKH
	@Ho nvarchar(50),
	@Ten nvarchar (50),
	@GioiTinh bit,
	@DienThoai nvarchar (15)
AS
	INSERT INTO KHACHHANG(Ho_KH, Ten_KH, GioiTinh_KH, SDT_KH)
	VALUES (@Ho, @Ten, @GioiTinh, @DienThoai)
GO
EXEC uspThemKH N'Le Dai', N'Trong', 1, N'0477'

--XoaKH
IF OBJECT_ID ('uspXoaKH', 'P') IS NOT NULL
	DROP PROCEDURE uspXoaKH;
GO
CREATE PROCEDURE uspXoaKH
	@Ma int
	
AS
	delete KHACHHANG
	where ID_KH = @Ma
GO
EXEC uspXoaKH 42

--XemNV
IF OBJECT_ID ('uspXemNV', 'P') IS NOT NULL
	DROP PROCEDURE uspXemNV;
GO
CREATE PROCEDURE uspXemNV
AS
	SELECT ID_NV, Ho_NV, Ten_NV, cv.Ten_ChucVu, cv.ID_ChucVu,GioiTinh_NV, DiaChi_NV,NgayBatDauLam, SoCaLam,SDT_NV
	FROM NHANVIEN nv JOIN CHUCVU cv ON nv.ID_ChucVu = cv.ID_ChucVu
GO
EXEC uspXemNV

--ThemNV
IF OBJECT_ID ('uspThamNV', 'P') IS NOT NULL
	DROP PROCEDURE uspThamNV;
GO
CREATE PROCEDURE uspThamNV
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
EXEC uspThamNV N'Le', N'A', N'PV', 1, '2016-5-5', 4, N'SG', '1234'

--XoaNV
IF OBJECT_ID ('uspXoaNV', 'P') IS NOT NULL
	DROP PROCEDURE uspXoaNV;
GO
CREATE PROCEDURE uspXoaNV
	@Ma int
	
AS
	delete NHANVIEN
	where ID_NV = @Ma
GO
EXEC uspXoaNV 32

--Sua NV
IF OBJECT_ID('uspSuaNV', 'P') IS NOT NULL
	DROP PROCEDURE uspSuaNV;
GO
CREATE PROCEDURE uspSuaNV
	@Ma int,
	@HoNV nvarchar(50),
	@TenNV nvarchar(25),
	@Chucvu nvarchar(5),
	@Gioitinh bit,
	@Ngayvaolam date,
	@Socalam int,
	@Diachi nvarchar(100),
	@SDT nvarchar(15)
AS
	UPDATE NHANVIEN
	SET Ho_NV = @HoNV, Ten_NV = @TenNV, ID_ChucVu = @Chucvu, GioiTinh_NV = @Gioitinh, NgayBatDauLam = @Ngayvaolam, SoCaLam = @Socalam, DiaChi_NV = @Diachi, SDT_NV = @SDT
	WHERE ID_NV = @Ma
GO
EXEC uspSuaNV 18, N'Võ Nhẫn', N'Đực', 'BV', 0, '2011-02-08', 24, 'HCM', '01204788944'

--dat hang NVL
IF OBJECT_ID ('uspDatHang', 'P') IS NOT NULL
	DROP PROCEDURE uspDatHang;
GO
CREATE PROCEDURE uspDatHang
AS
SELECT nvl.ID_NVL, Ten_NVL, Ten_LoaiNVL, Ten_NCC, QuyCach, SoLuongCon, DonViTinh FROM CUNGCAP cc
	JOIN NGUYENVATLIEU nvl ON nvl.ID_NVL = cc.ID_NVL
	JOIN NHACUNGCAP ncc ON cc.ID_NCC = ncc.ID_NCC 
	JOIN LOAI_NVL loaiVNL ON nvl.ID_LoaiNVL = loaiVNL.ID_LoaiNVL
	WHERE SoLuongCon <= ToiThieuDatLai
GO
EXEC uspDatHang

--Xuat nhap kho
IF OBJECT_ID ('uspXuatNhapKho', 'P') IS NOT NULL
	DROP PROCEDURE uspXuatNhapKho;
GO
CREATE PROCEDURE uspXuatNhapKho
AS
	SELECT ID_NVL,Ten_NVL, Ten_LoaiNVL, QuyCach, SoLuongCon, DonViTinh FROM NGUYENVATLIEU nvl JOIN LOAI_NVL lnvl ON lnvl.ID_LoaiNVL = nvl.ID_LoaiNVL
GO
EXEC uspXuatNhapKho

--NVL theo loaiNVL
IF OBJECT_ID ('uspNVL_LoaiNVL', 'P') IS NOT NULL
	DROP PROCEDURE uspNVL_LoaiNVL;
GO
CREATE PROCEDURE uspNVL_LoaiNVL
@MaLoaiNVL nvarchar(5)
AS
	SELECT ID_NVL, Ten_NVL, Ten_LoaiNVL, QuyCach, SoLuongCon, DonViTinh FROM NGUYENVATLIEU nvl JOIN LOAI_NVL lnvl ON lnvl.ID_LoaiNVL = nvl.ID_LoaiNVL
	WHERE lnvl.ID_LoaiNVL = @MaLoaiNVL
GO
EXEC uspNVL_LoaiNVL 'LNVL1'

--Xuat NVL
IF OBJECT_ID ('uspXuatNVL', 'P') IS NOT NULL
	DROP PROCEDURE uspXuatNVL;
GO
CREATE PROCEDURE uspXuatNVL
@MaNVL nvarchar(10),
@Soluongxuat float
AS
	UPDATE NGUYENVATLIEU
	SET SoLuongCon = SoLuongCon - @Soluongxuat
	WHERE ID_NVL = @MaNVL
GO
EXEC uspXuatNVL 'C02', 0.5

--Nhap NVL
IF OBJECT_ID('uspNhapNVL', 'P') IS NOT NULL
	DROP PROCEDURE uspNhapNVL;
GO
CREATE PROCEDURE uspNhapNVL
@MaNVL nvarchar (10),
@Soluongnhap float
AS
	UPDATE NGUYENVATLIEU
	SET SoLuongCon = SoLuongCon + @Soluongnhap
	WHERE ID_NVL = @MaNVL
GO
EXEC uspNhapNVL 'C02', 1

--Tinh luong NV
IF OBJECT_ID ('uspTinhLuongNV', 'P') IS NOT NULL
	DROP PROCEDURE uspTinhLuongNV;
GO
CREATE PROCEDURE uspTinhLuongNV
AS
	SELECT ID_NV, (Ho_NV + ' ' + Ten_NV) AS HoTenNV, GioiTinh_NV, cv.Ten_ChucVu, SoCaLam, HeSoLuong, (SoCaLam * HeSoLuong) AS LuongThang, SDT_NV
	FROM NHANVIEN nv JOIN CHUCVU cv ON nv.ID_ChucVu = cv.ID_ChucVu
GO
EXEC uspTinhLuongNV

--Tinh tong tien tren moi Hoa Don
IF OBJECT_ID ('uspThanhToanTongHD', 'P') IS NOT NULL
	DROP PROCEDURE uspThanhToanTongHD;
GO
CREATE PROCEDURE uspThanhToanTongHD
AS
	--(SELECT ID_Orders, ID_Mon, SoLuong, DonGia, (DonGia*SoLuong) AS TinhTien, ThanhTien = SUM(DonGia*SoLuong) FROM MON_ORDERS mo
	--GROUP BY ID_Orders, ID_Mon, SoLuong, DonGia)
	SELECT ID_Orders, COUNT(ID_Mon) AS TongMon, SUM(DonGia*SoLuong) AS ThanhTien FROM MON_ORDERS
	GROUP BY ID_Orders;
GO
EXEC uspThanhToanTongHD

--Tinh chi tiet hoa don
IF OBJECT_ID ('uspThanhToanCTHD', 'P') IS NOT NULL
	DROP PROCEDURE uspThanhToanCTHD;
GO
CREATE PROCEDURE uspThanhToanCTHD
AS
	SELECT mo.ID_Orders, Ten_Mon, SoLuong, mon.DonGia, (mon.DonGia*SoLuong) AS TinhTien
	FROM MON_ORDERS mo JOIN ORDERS ord ON mo.ID_Orders = ord.ID_Orders
	JOIN MON mon ON mon.ID_Mon = mo.ID_Mon
	GROUP BY mo.ID_Orders, Ten_Mon, SoLuong, mon.DonGia
	--SELECT ID_Orders, COUNT(ID_Mon) AS TongMon, SUM(DonGia*SoLuong) AS ThanhTien FROM MON_ORDERS
	--GROUP BY ID_Orders;
GO
EXEC uspThanhToanCTHD