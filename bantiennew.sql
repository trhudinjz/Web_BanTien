USE [master]
GO
CREATE DATABASE [BANTIEN]
go
USE [BANTIEN]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[MaAD] [int] IDENTITY(1,1) NOT NULL,
	[HoAD] [nvarchar](10) NULL,
	[TenAD] [nvarchar](30) NULL,
	[UsernameAD] [varchar](50) NULL,
	[gioitinh] [char](1) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[AnhDaiDien] [varchar](50) NULL,
	[DienThoai] [varchar](10) NULL,
	[NgaySinh] [date] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[MaAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGiaTien](
	[MaTien] [int] NOT NULL,
	[MaKH] [int] NOT NULL,
	[NoiDungDanhGia] [nvarchar](200) NULL,
	[ThoiGianDang] [datetime] NULL,
 CONSTRAINT [PK_DanhGiaTien] PRIMARY KEY CLUSTERED 
(
	[MaTien] ASC,
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaGH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[MaTien] [int] NULL,
	[SoLuong] [int] NULL,
	[Thoigian] [datetime] NULL,
	[ThanhTien] [float] NULL,
	[MaDH] [int] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[MaGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayLapHD] [datetime] NULL,
	[TongTien] [float] NULL,
	[TenKhach] [nvarchar](50) NULL,
	[SDTDatHang] [char](10) NULL,
	[EmailXacNhan] [varchar](50) NULL,
	[DiaChiNhanHang] [nvarchar](200) NULL,
	[GiamGia] [int] NULL,
	[TongThanhToan] [float] NULL,
	[TrangThai] [nvarchar](50) NULL,
	[NgayNhanHang] [date] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoKH] [nvarchar](20) NULL,
	[TenKH] [nvarchar](30) NULL,
	[UsernameKH] [varchar](50) NULL,
	[gioitinh] [char](1) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[AnhDaiDien] [varchar](50) NULL,
	[DienThoai] [varchar](10) NULL,
	[NgaySinh] [date] NULL,
	[GiamGia] [int] NULL,
	[SoLanHuyDon] [smallint] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTien](
	[MaLoai] [varchar](50) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiTien_1] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SanPham](
	[MaTien] [int] IDENTITY(1,1) NOT NULL,
	[TenTien] [nvarchar](100) NULL,
	[MoTaTien] [varchar](50) NULL,
	[TheLoai] [varchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
	[AnhMinhHoa] [varchar](60) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaTien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](100) NULL,
	[Role] [varchar](10) NULL,
	[Email] [varchar](50) NULL,
	[Latest_Login] [datetime] NULL,
	[block] [bit] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([MaAD], [HoAD], [TenAD], [UsernameAD], [gioitinh], [DiaChi], [AnhDaiDien], [DienThoai], [NgaySinh]) VALUES (2, N'Tran', N'Thong', N'thongne', N'M', N'Đắk Lắk', N'/Hinhanh/tranthong.jpg', N'0347933844', CAST(N'2001-05-26' AS Date))
INSERT [dbo].[Admin] ([MaAD], [HoAD], [TenAD], [UsernameAD], [gioitinh], [DiaChi], [AnhDaiDien], [DienThoai], [NgaySinh]) VALUES (3, N'Nguyen', N'Ka', N'kane', N'M', N'TP HCM', N'/Hinhanh/ngka.jpg', N'0326246343', CAST(N'2001-01-31' AS Date))
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([MaGH], [MaKH], [MaTien], [SoLuong], [Thoigian], [ThanhTien], [MaDH]) VALUES (24, 1, 3, 3, CAST(N'2022-10-25T17:32:38.253' AS DateTime), 60000, 7)
INSERT [dbo].[GioHang] ([MaGH], [MaKH], [MaTien], [SoLuong], [Thoigian], [ThanhTien], [MaDH]) VALUES (25, 10, 3, 1, CAST(N'2022-10-25T17:34:08.853' AS DateTime), 20000, 8)
INSERT [dbo].[GioHang] ([MaGH], [MaKH], [MaTien], [SoLuong], [Thoigian], [ThanhTien], [MaDH]) VALUES (26, 10, 3, 1, CAST(N'2022-10-25T17:34:12.023' AS DateTime), 20000, 8)
INSERT [dbo].[GioHang] ([MaGH], [MaKH], [MaTien], [SoLuong], [Thoigian], [ThanhTien], [MaDH]) VALUES (27, 1, 3, 1, CAST(N'2022-10-25T22:22:15.783' AS DateTime), 20000, NULL)
SET IDENTITY_INSERT [dbo].[GioHang] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayLapHD], [TongTien], [TenKhach], [SDTDatHang], [EmailXacNhan], [DiaChiNhanHang], [GiamGia], [TongThanhToan], [TrangThai], [NgayNhanHang]) VALUES (7, 1, CAST(N'2022-10-25T17:32:46.527' AS DateTime), 54000, N'Nguyễn Văn Đức Tính', N'0316848645', N'ngthong@gmail.com', N'Đắk Lắk', 10, 69000, N'Đã giao hàng', CAST(N'2022-12-20' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayLapHD], [TongTien], [TenKhach], [SDTDatHang], [EmailXacNhan], [DiaChiNhanHang], [GiamGia], [TongThanhToan], [TrangThai], [NgayNhanHang]) VALUES (8, 10, CAST(N'2022-10-25T17:34:39.110' AS DateTime), 39200, N'Phạm Lê Anh Tú', N'0111222222', N'tupham@gmail.com', N'Hồ Chí Minh', 2, 54200, N'Đã nhận đơn', CAST(N'2022-12-20' AS Date))
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [UsernameKH], [gioitinh], [DiaChi], [AnhDaiDien], [DienThoai], [NgaySinh], [GiamGia], [SoLanHuyDon]) VALUES (1, N'Lê Văn ', N'A', N'thong', N'M', N'Ho Chi Minh', N'/images/avatar_icon.png', N'0111111111', CAST(N'2001-05-26' AS Date), 10, 3)
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [UsernameKH], [gioitinh], [DiaChi], [AnhDaiDien], [DienThoai], [NgaySinh], [GiamGia], [SoLanHuyDon]) VALUES (7, N'Lê Văn', N'B', N'thongh', N'M', N'Ho Chi Minh', N'/images/avatar_icon.png', N'0111111111', CAST(N'2001-06-26' AS Date), 10, 0)
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [UsernameKH], [gioitinh], [DiaChi], [AnhDaiDien], [DienThoai], [NgaySinh], [GiamGia], [SoLanHuyDon]) VALUES (8, N'Trần ', N'Tính', N'thonghh', N'M', N'Ho Chi Minh', N'/images/avatar_icon.png', N'0111222222', CAST(N'2001-01-01' AS Date), 10, 0)
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [UsernameKH], [gioitinh], [DiaChi], [AnhDaiDien], [DienThoai], [NgaySinh], [GiamGia], [SoLanHuyDon]) VALUES (10, N'Nguyễn', N'Hoa', N'thonghhh', N'M', N'Đắk Lăk', N'/images/avatar_icon.png', N'0111222222', CAST(N'2001-12-13' AS Date), 2, 0)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO

insert into [LoaiTien]([MaLoai],[TenLoai])
	values 
		(N'TVNXu',N'Giai đoạn 1975 - 1994'),
		(N'TVN1975',N'Giai đoạn 1975 - 1994'),
		(N'TVN1945',N'Giai đoạnn 1945 - 1975'),
		(N'TVN1898',N'Giai đoạn 1898  - 1945'),
		(N'USD',N'Tiền 2 đô mỹ'),
		(N'THQ',N'Tiền Hàn Quốc'),
		(N'TNB',N'Tiền Nhật Bản'),
		(N'TTB',N'Tiền theo bộ'),
		(N'TQG',N'Tiền theo quốc gia'),
		(N'TTQ',N'Tiền Trung Quốc')

go









--SET IDENTITY_INSERT [dbo].[SanPham] ON 

--INSERT [dbo].[SanPham] ([MaTien], [TenTien], [MoTaTien], [TheLoai], [SoLuong], [DonGia], [AnhMinhHoa]) VALUES (1, N'Tiền 2 USD năm 1928',N'Tiền cũ quý hiếm', N'USD', 98, 1000000, N'/images/SanPham/redheart.jpg')
--INSERT [dbo].[SanPham] ([MaTien], [TenTien], [MoTaTien], [TheLoai], [SoLuong], [DonGia], [AnhMinhHoa]) VALUES (2, N'Tiền 2 USD năm 1953',N'Tiền cũ quý hiếm', N'USD', 98, 900000, N'/images/SanPham/sunrise.jpg')
--INSERT [dbo].[SanPham] ([MaTien], [TenTien], [MoTaTien], [TheLoai], [SoLuong], [DonGia], [AnhMinhHoa]) VALUES (3, N'Tiền 2 USD năm 1976',N'Tiền cũ quý hiếm', N'USD', 98, 3500000, N'/images/SanPham/sweetheart.jpg')

SET IDENTITY_INSERT [dbo].[SanPham] ON 
insert into [SanPham]([MaTien], [TenTien],[MoTaTien],[TheLoai],[SoLuong],[DonGia],[AnhMinhHoa])
	values
		(1, N'Tiền 2 USD năm 1928',N'Tiền cũ quý hiếm',N'USD',100,600000,'https://gdURL.com/yeD9'),
		(2,N'Tiền 2 USD năm 1953',N'Tiền cũ quý hiếm',N'USD',100,300000,'https://gdURL.com/muWn'),
		(3, N'Tiền 2 USD năm 1976',N'Tiền cũ quý hiếm',N'USD',100,250000,'https://gdURL.com/Eu-a'),
		(4, N'Tiền 2 USD 12 Bang',N'Tiền 12 Bang của Châu Âu',N'USD',100,2500000,'https://gdURL.com/vyAy'),
		(5, N'Tiền 2 USD năm 1917',N'Tiền cũ quý hiếm',N'USD',100,4000000,'https://gdURL.com/g1st'),
		(6, N'Tiền 2 USD làm bằng vàng 24k',N'Tiền quý hiếm',N'USD',10,1000000,'https://gdURL.com/DM6F'),
		(7, N'Tiền 1000 won',N'Tiền Hàn Quốc',N'THQ',100,1000000,'https://gdURL.com/UYii')
		
		
		
		,
		(8, N'Tiền 5000 won',N'Tiền Hàn Quốc',N'THQ',100,500000,'https://gdURL.com/ZX0o'),
		(9, N'Tiền 5 won',N'Tiền Hàn Quốc',N'THQ',100,4500000,'https://gdURL.com/J_Mh'),
		(10, N'Tiền 5000 won',N'Tiền Hàn Quốc cũ',N'THQ',100,5000000,'https://gdURL.com/uSbF'),
		(12,N'Tiền 50 won',N'Tiền Hàn Quốc',N'THQ',100,500000,'https://gdURL.com/vqNn'),
		(13,N'Tiền 5000 won',N'Tiền Hàn Quốc',N'THQ',100,2000000,'https://gdURL.com/IIbb'),
		(14,N'Tiền 100 Yên',N'Tiền Nhật Bản',N'TNB',100,40000,'https://gdURL.com/TvGuQ'),
		(15,N'Tiền 100 Yên năm 1950',N'Tiền Nhật Bản',N'TNB',100,250000,'https://gdURL.com/T4LS'),
		(16,N'Tiền 100 Yên',N'Tiền Nhật Bản',N'TNB',100,40000,'https://gdURL.com/2iTi'),
		(17,N'Tiền 1 Yên',N'Tiền Nhật Bản',N'TNB',100,20000,'https://gdURL.com/vMIn'),



		(18,N'Tiền 500 Yên',N'Tiền Nhật Bản',N'TNB',100,25000,'https://gdURL.com/Gbww'),
		(19,N'Tiền 1000 Yên',N'Tiền Nhật Bản',N'TNB',100,400000,'https://gdURL.com/njSH'),
		(20,N'Tiền 2000 Yên',N'Tiền Nhật Bản',N'TNB',100,800000,'https://gdURL.com/aU2Q'),
		(21,N'Tiền 5000 Yên',N'Tiền Nhật Bản',N'TNB',100,10000000,'https://gdURL.com/lFLt'),
		(22,N'Tiền 500 Won',N'Tiền Hàn Quốc',N'THQ',100,40000,'https://gdURL.com/dwSZ'),



		(23,N'Tiền 28 Quốc gia',N'Tiền 28 Quốc gia',N'TTB',10,15000000,'https://gdURL.com/ZSUX'),
		(24,N'Tiền 50 Quốc gia',N'Tiền 50 Quốc gia',N'TTB',10,30000000,'https://gdURL.com/92aH'),
		(25,N'Tiền 100 Quốc gia',N'Tiền 100 Quốc gia',N'TTB',10,55000000,'https://gdURL.com/1dYO'),


		(26,N'Tiền 100 BangCo',N'Tiền BangCo',N'TQG',100,195000,'https://gdURL.com/udyP'),
		(27,N'Tiền 20 Ma Cao',N'Tiền Ma Cao',N'TQG',100,455000,'https://gdURL.com/o4zX'),
		(28,N'Tiền 1 Malaysia năm 1998',N'Tiền Malaysia ',N'TQG',100,350000,'https://gdURL.com/k-Ey'),
		(29,N'Tiền 1 Oman',N'Tiền Oman',N'TQG',100,400000,'https://gdURL.com/h5zL'),
		(30,N'Tiền 20 Philip',N'Tiền PhiLip',N'TQG',100,500000,'https://gdURL.com/M_VR'),
		(31,N'Tiền 1 Thái Lan',N'Tiền Thái Lan',N'TQG',100,200000,'https://gdURL.com/v4W9')



		--(32,N'Tiền 20 Singapore',N'Tiền Singapore',N'TQG','300000',10,'https://gdURL.com/M_VR'),
		--(33,N'Tiền 100 Thái Lan',N'Tiền Thái Lan',N'TQG','400000',10,'https://gdURL.com/iIrw'),
		--(34,N'Tiền 1 Trung Quốc năm 1980',N'Tiền Trung Quốc',N'TTQ','5000',10,'https://gdURL.com/w449'),
		--(35,N'Tiền 1 và 5 Trung Quốc',N'Tiền Trung Quốc',N'TTQ','55000',10,'https://gdURL.com/9y2S'),
		--(36,N'Tiền 5 Trung Quốc',N'Tiền Trung Quốc',N'TTQ','30000',10,'https://gdURL.com/bKII'),
		--(37,N'Tiền 10 Trung Quốc năm 1937',N'Tiền Trung Quốc',N'TTQ','65000',10,'https://gdURL.com/hE8mY'),
		--(38,N'Tiền 50 Trung Quốc năm 1930',N'Tiền Trung Quốc',N'TTQ','75000',10,'https://gdURL.com/hnLf'),
		--(39,N'Tiền 10 Trung Quốc',N'Tiền Trung Quốc',N'TTQ','55000',10,'https://gdURL.com/ISjK'),
		--(40,N'Tiền 2 Trung Quốc năm 1980',N'Tiền Trung Quốc',N'TTQ','65000',10,'https://gdURL.com/2ANw'),
		--(41,N'Tiền 20 Trung Quốc năm 2005',N'Tiền Trung Quốc',N'TTQ','95000',10,'https://gdURL.com/EJCW'),
		--(42,N'Tiền xu Việt Nam',N'Tiền xu Việt Nam',N'TVN','300000',10,'https://gdURL.com/yUwr'),
		--(43,N'Tiền 5 Trung Quốc năm 2005',N'Tiền Trung Quốc',N'TTQ',10,30000,'https://gdURL.com/bgVm')

go



















SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO

INSERT [dbo].[TaiKhoan] ([Username], [Password], [Role], [Email], [Latest_Login], [block]) VALUES (N'thong', N'123', N'user', N'thong@gmail.com', CAST(N'2022-12-14T20:15:57.047' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([Username], [Password], [Role], [Email], [Latest_Login], [block]) VALUES (N'thongh', N'123', N'user', N'thongh@gmail.com', CAST(N'2022-10-25T22:22:07.433' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([Username], [Password], [Role], [Email], [Latest_Login], [block]) VALUES (N'thonghh', N'123', N'user', N'thonghh@gmail.com', CAST(N'2022-12-09T15:26:46.430' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([Username], [Password], [Role], [Email], [Latest_Login], [block]) VALUES (N'thonghhh', N'123', N'user', N'thonghhh@gmail.com', CAST(N'2022-10-25T17:34:03.127' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([Username], [Password], [Role], [Email], [Latest_Login], [block]) VALUES (N'kane', N'1', N'admin', N'kane@gmail.com', CAST(N'2022-10-25T19:29:14.317' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([Username], [Password], [Role], [Email], [Latest_Login], [block]) VALUES (N'tu', N'123', N'user', N'tu@gmail.com', CAST(N'2022-10-25T15:43:11.050' AS DateTime), 0)
INSERT [dbo].[TaiKhoan] ([Username], [Password], [Role], [Email], [Latest_Login], [block]) VALUES (N'thongne', N'1', N'admin', N'thongne@gmail.com', CAST(N'2022-10-25T21:55:44.083' AS DateTime), 0)
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_TaiKhoan] FOREIGN KEY([UsernameAD])
REFERENCES [dbo].[TaiKhoan] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_TaiKhoan]
GO
ALTER TABLE [dbo].[DanhGiaTien]  WITH CHECK ADD  CONSTRAINT [FK_DanhGiaTien_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DanhGiaTien] CHECK CONSTRAINT [FK_DanhGiaTien_KhachHang]
GO
ALTER TABLE [dbo].[DanhGiaTien]  WITH CHECK ADD  CONSTRAINT [FK_DanhGiaTien_SanPham] FOREIGN KEY([MaTien])
REFERENCES [dbo].[SanPham] ([MaTien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DanhGiaTien] CHECK CONSTRAINT [FK_DanhGiaTien_SanPham]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_HoaDon1] FOREIGN KEY([MaDH])
REFERENCES [dbo].[HoaDon] ([MaHD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_HoaDon1]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_KhachHang]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_SanPham] FOREIGN KEY([MaTien])
REFERENCES [dbo].[SanPham] ([MaTien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_SanPham]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_TaiKhoan] FOREIGN KEY([UsernameKH])
REFERENCES [dbo].[TaiKhoan] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_TaiKhoan]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiTien] FOREIGN KEY([TheLoai])
REFERENCES [dbo].[LoaiTien] ([MaLoai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiTien]
GO
USE [master]
GO
ALTER DATABASE [BANTIEN] SET  READ_WRITE 
GO