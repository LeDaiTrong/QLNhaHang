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
EXEC uspXoaKH 35

--ThemKH
IF OBJECT_ID ('uspThemNV', 'P') IS NOT NULL
	DROP PROCEDURE uspThemNV;
GO
CREATE PROCEDURE uspThemNV
	@Ho nvarchar(50),
	@Ten nvarchar (50),
	@ChucVu nvarchar (5),
	@GioiTinh bit,
	@NgayVaoLam date,
	@SoCaLam int,
	@DiaChi nvarchar (100),
	@DienThoai nvarchar (15)
AS
	INSERT INTO NHANVIEN(Ho_NV, Ten_NV, ID_ChucVu, GioiTinh_NV, NgayBatDauLam, SoCaLam, DiaChi_NV, SDT_NV)
	VALUES (@Ho, @Ten, @ChucVu, @GioiTinh, @NgayVaoLam, @SoCaLam, @DiaChi ,@DienThoai)
GO
EXEC uspThemNV N'Le Dai', N'Trong', 'BT', 1, '2016-5-5', 4, 'HCM', N'0477'