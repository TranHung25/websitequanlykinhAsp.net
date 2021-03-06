USE [Quanly]
GO
/****** Object:  Table [dbo].[account]    Script Date: 6/23/2022 6:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[id_admin] [nvarchar](50) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[id_admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 6/23/2022 6:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[id_cart] [int] NOT NULL,
	[id_khachhang] [int] IDENTITY(1,1) NOT NULL,
	[code_cart] [int] NULL,
 CONSTRAINT [PK_cart] PRIMARY KEY CLUSTERED 
(
	[id_cart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart_details]    Script Date: 6/23/2022 6:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_details](
	[id_cart_details] [int] IDENTITY(1,1) NOT NULL,
	[code_cart] [int] NULL,
	[id_sanpham] [int] NULL,
	[soluongmua] [int] NULL,
 CONSTRAINT [PK_cart_details] PRIMARY KEY CLUSTERED 
(
	[id_cart_details] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dangky]    Script Date: 6/23/2022 6:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dangky](
	[id_dangky] [int] IDENTITY(1,1) NOT NULL,
	[tenkhachhang] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[matkkhau] [nvarchar](50) NULL,
	[sdt] [int] NULL,
 CONSTRAINT [PK_dangky] PRIMARY KEY CLUSTERED 
(
	[id_dangky] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[danhmuc]    Script Date: 6/23/2022 6:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danhmuc](
	[id_danhmuc] [int] IDENTITY(1,1) NOT NULL,
	[tendanhmuc] [nvarchar](50) NULL,
	[thutu] [int] NULL,
 CONSTRAINT [PK_danhmuc] PRIMARY KEY CLUSTERED 
(
	[id_danhmuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[danhmuc_tin]    Script Date: 6/23/2022 6:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danhmuc_tin](
	[danhmuctin_id] [int] IDENTITY(1,1) NOT NULL,
	[tendanhmuc] [nvarchar](50) NULL,
 CONSTRAINT [PK_danhmuc_tin] PRIMARY KEY CLUSTERED 
(
	[danhmuctin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/23/2022 6:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserId] [int] NULL,
	[Status] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 6/23/2022 6:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 6/23/2022 6:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[id_sanpham] [int] IDENTITY(1,1) NOT NULL,
	[tensanpham] [nvarchar](50) NULL,
	[giasp] [int] NULL,
	[soluong] [int] NULL,
	[hinhanh] [nvarchar](max) NULL,
	[mota] [nvarchar](max) NULL,
	[tinhtrang] [int] NULL,
	[id_danhmuc] [int] NULL,
 CONSTRAINT [PK_sanpham] PRIMARY KEY CLUSTERED 
(
	[id_sanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tintuc]    Script Date: 6/23/2022 6:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tintuc](
	[baiviet_id] [int] IDENTITY(1,1) NOT NULL,
	[tenbaiviet] [nvarchar](max) NULL,
	[mota] [nvarchar](max) NULL,
	[danhmuctin_id] [int] NULL,
	[hinhanh] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tintuc] PRIMARY KEY CLUSTERED 
(
	[baiviet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/23/2022 6:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[IsAdmin] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[account] ([id_admin], [username], [password]) VALUES (N'1', N'hung', N'123')
GO
SET IDENTITY_INSERT [dbo].[danhmuc] ON 

INSERT [dbo].[danhmuc] ([id_danhmuc], [tendanhmuc], [thutu]) VALUES (1, N'KÍNH CẬN', 1)
INSERT [dbo].[danhmuc] ([id_danhmuc], [tendanhmuc], [thutu]) VALUES (2, N'KÍNH RÂM', 2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [tendanhmuc], [thutu]) VALUES (3, N'PHỤ KIỆN', 3)
SET IDENTITY_INSERT [dbo].[danhmuc] OFF
GO
SET IDENTITY_INSERT [dbo].[danhmuc_tin] ON 

INSERT [dbo].[danhmuc_tin] ([danhmuctin_id], [tendanhmuc]) VALUES (1, N'SALE %')
INSERT [dbo].[danhmuc_tin] ([danhmuctin_id], [tendanhmuc]) VALUES (2, N'KÍNH MẮT')
SET IDENTITY_INSERT [dbo].[danhmuc_tin] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (1, N'DonHang-202112đ024513', 2, 1, CAST(N'2021-12-17T02:45:13.900' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (2, N'DonHang-202112đ024530', 2, 1, CAST(N'2021-12-17T02:45:30.330' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (3, N'DonHang-202112đ024545', 2, 1, CAST(N'2021-12-17T02:45:45.970' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (4, N'DonHang-202112đ024547', 2, 1, CAST(N'2021-12-17T02:45:47.397' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (5, N'DonHang-202112đ024548', 2, 1, CAST(N'2021-12-17T02:45:48.327' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (6, N'DonHang-202112đ024710', 2, 1, CAST(N'2021-12-17T02:47:10.487' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (7, N'DonHang-202112đ024711', 2, 1, CAST(N'2021-12-17T02:47:11.557' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (8, N'DonHang-202112đ025005', 2, 1, CAST(N'2021-12-17T02:50:05.117' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (9, N'DonHang-202112đ025218', 2, 1, CAST(N'2021-12-17T02:52:18.283' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (10, N'DonHang-202112đ025246', 2, 1, CAST(N'2021-12-17T02:52:46.727' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (11, N'DonHang-202112đ025413', 2, 1, CAST(N'2021-12-17T02:54:13.753' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (12, N'DonHang-202112đ025444', 2, 1, CAST(N'2021-12-17T02:54:44.027' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (13, N'DonHang-202112đ025444', 2, 1, CAST(N'2021-12-17T02:54:44.830' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (14, N'DonHang-202112đ025445', 2, 1, CAST(N'2021-12-17T02:54:45.087' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (15, N'DonHang-202112đ025655', 2, 1, CAST(N'2021-12-17T02:56:55.503' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (16, N'DonHang-202112đ025706', 2, 1, CAST(N'2021-12-17T02:57:06.497' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (17, N'DonHang-202112đ025754', 2, 1, CAST(N'2021-12-17T02:57:54.887' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (18, N'DonHang-202112đ025949', 2, 1, CAST(N'2021-12-17T02:59:49.590' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (19, N'DonHang-202112đ025950', 2, 1, CAST(N'2021-12-17T02:59:50.307' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (20, N'DonHang-202112đ025950', 2, 1, CAST(N'2021-12-17T02:59:50.673' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (21, N'DonHang-202112đ025951', 2, 1, CAST(N'2021-12-17T02:59:51.030' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (22, N'DonHang-202112đ025951', 2, 1, CAST(N'2021-12-17T02:59:51.390' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (23, N'DonHang-202112đ030127', 2, 1, CAST(N'2021-12-17T03:01:27.180' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (24, N'DonHang-202112đ030156', 2, 1, CAST(N'2021-12-17T03:01:56.570' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (25, N'DonHang-202112đ092147', 2, 1, CAST(N'2021-12-17T09:21:47.510' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (26, N'DonHang-202112đ093026', 2, 1, CAST(N'2021-12-17T09:30:26.263' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (27, N'DonHang-20211217163333', 2, 1, CAST(N'2021-12-17T16:33:33.653' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (28, N'DonHang-20211217172733', 2, 1, CAST(N'2021-12-17T17:27:33.750' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (29, N'DonHang-20211217202441', 2, 1, CAST(N'2021-12-17T20:24:41.053' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (30, N'DonHang-20211217202720', 4, 1, CAST(N'2021-12-17T20:27:20.730' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (31, N'DonHang-20211218022136', 4, 1, CAST(N'2021-12-18T02:21:36.480' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (32, N'DonHang-20211218211121', 5, 1, CAST(N'2021-12-18T21:11:21.670' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (33, N'DonHang-20211220214508', 2, 1, CAST(N'2021-12-20T21:45:08.777' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (1032, N'DonHang-20220111231704', 2, 1, CAST(N'2022-01-11T23:17:05.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (1, 1, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (2, 2, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (3, 3, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (4, 4, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (5, 5, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (6, 6, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (7, 7, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (8, 8, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (9, 9, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (10, 10, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (11, 11, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (12, 12, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (13, 13, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (14, 14, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (15, 15, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (16, 16, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (17, 17, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (18, 18, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (19, 19, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (20, 20, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (21, 21, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (22, 22, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (23, 23, 9, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (24, 24, 9, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (25, 25, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (26, 26, 6, 3)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (27, 27, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (28, 28, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (29, 28, 11, 4)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (30, 29, 6, 6)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (31, 30, 10, 3)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (32, 31, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (33, 32, 6, 7)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (34, 33, 10, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (1033, 1032, 6, 3)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[sanpham] ON 

INSERT [dbo].[sanpham] ([id_sanpham], [tensanpham], [giasp], [soluong], [hinhanh], [mota], [tinhtrang], [id_danhmuc]) VALUES (6, N'Minuet - Rose Gold', 1750000, 5, N'13 (2).jpg', N'Đóng vai trò như một chương chính trong bản Sonata, Minuet đồng thời còn là một điệu nhảy vui tươi có nguồn gốc từ nước Pháp.   Lấy tinh thần lạc quan, sống động và vượt qua khuôn khổ ấy làm cảm hứng, dòng kính Minuet trong BST lần này được chế tác hoàn toàn từ Stainless Steel và sử dụng 3 màu chủ đạo: Rose Gold, Dark Matte, Light Silver.  Ưu điểm của kính Stainless Steel ngoài việc giá thành vừa phải còn là sự bền dẻo, chống chịu nhiệt, oxy hoá,...', 1, 1)
INSERT [dbo].[sanpham] ([id_sanpham], [tensanpham], [giasp], [soluong], [hinhanh], [mota], [tinhtrang], [id_danhmuc]) VALUES (7, N'minuet_dark_matte', 1750000, 9, N'(3).jpg', N'Đóng vai trò như một chương chính trong bản Sonata, Minuet đồng thời còn là một điệu nhảy vui tươi có nguồn gốc từ nước Pháp.   Lấy tinh thần lạc quan, sống động và vượt qua khuôn khổ ấy làm cảm hứng, dòng kính Minuet trong BST lần này được chế tác hoàn toàn từ Stainless Steel và sử dụng 3 màu chủ đạo: Rose Gold, Dark Matte, Light Silver.  Ưu điểm của kính Stainless Steel ngoài việc giá thành vừa phải còn là sự bền dẻo, chống chịu nhiệt, oxy hoá,...', 1, 1)
INSERT [dbo].[sanpham] ([id_sanpham], [tensanpham], [giasp], [soluong], [hinhanh], [mota], [tinhtrang], [id_danhmuc]) VALUES (8, N'Minuet - Light Silver', 1500000, 10, N'(1).jpg', N'Đóng vai trò như một chương chính trong bản Sonata, Minuet đồng thời còn là một điệu nhảy vui tươi có nguồn gốc từ nước Pháp.   Lấy tinh thần lạc quan, sống động và vượt qua khuôn khổ ấy làm cảm hứng, dòng kính Minuet trong BST lần này được chế tác hoàn toàn từ Stainless Steel và sử dụng 3 màu chủ đạo: Rose Gold, Dark Matte, Light Silver.  Ưu điểm của kính Stainless Steel ngoài việc giá thành vừa phải còn là sự bền dẻo, chống chịu nhiệt, oxy hoá,...', 1, 1)
INSERT [dbo].[sanpham] ([id_sanpham], [tensanpham], [giasp], [soluong], [hinhanh], [mota], [tinhtrang], [id_danhmuc]) VALUES (9, N'Eros - Gold Light', 1500000, 9, N'(5) (2).jpg', N'Đóng vai trò như một chương chính trong bản Sonata, Minuet đồng thời còn là một điệu nhảy vui tươi có nguồn gốc từ nước Pháp.   Lấy tinh thần lạc quan, sống động và vượt qua khuôn khổ ấy làm cảm hứng, dòng kính Minuet trong BST lần này được chế tác hoàn toàn từ Stainless Steel và sử dụng 3 màu chủ đạo: Rose Gold, Dark Matte, Light Silver.  Ưu điểm của kính Stainless Steel ngoài việc giá thành vừa phải còn là sự bền dẻo, chống chịu nhiệt, oxy hoá,...', 1, 1)
INSERT [dbo].[sanpham] ([id_sanpham], [tensanpham], [giasp], [soluong], [hinhanh], [mota], [tinhtrang], [id_danhmuc]) VALUES (10, N'Sonata - Dark Brown - Râm Cận', 1750000, 9, N'(10).jpg', N'Nhắc đến Sonata là nhắc đến những bản nhạc thính phòng, những tên tuổi trứ danh như Mozart, Bach,... Sự cổ điển và trọn vẹn của mỗi bản Sonata là cảm hứng chính cho dòng kính Sonata của BST Symphony. Sự kết hợp giữa Acetate và Stainless Steel tạo nên những chiếc kính Sonata bền đẹp, cũng không kém phần ứng dụng với dáng gọng tròn cơ bản, cổ điển phù hợp với hầu hết các khuôn mặt. Dải màu nâu và đen cũng giúp người đeo dễ dàng phối đồ hơn.', 1, 2)
INSERT [dbo].[sanpham] ([id_sanpham], [tensanpham], [giasp], [soluong], [hinhanh], [mota], [tinhtrang], [id_danhmuc]) VALUES (11, N'Wind - Breeze - Râm Cận', 1750000, 9, N'adagio_grey_rc_goc_thang.jpg', N'Dòng Wind trong BST Nature Spirits của Farello là những chiếc kính được phối màu độc đáo và bắt mắt theo tone trầm. Đó là sự âm thầm của những cơn gió, nhẹ nhàng như chính chất liệu Acetate nhưng cũng không kém phần bùng nổ.', 1, 2)
INSERT [dbo].[sanpham] ([id_sanpham], [tensanpham], [giasp], [soluong], [hinhanh], [mota], [tinhtrang], [id_danhmuc]) VALUES (12, N'Khăn Lau Kính Farello', 200000, 5, N'khanlaukinh.jpg', N'Bảo hành 2 năm đối với sản phẩm kính mắt. Miễn phí đổi sang sản phẩm mới nếu có bất cứ lỗi sản xuất nào trong vòng 2 năm. Không áp dụng do thiệt hại bởi sử dụng sai cách, sơ xuất, thiếu cẩn trọng, oxy hoá do mồ hôi của khách hàng. Farello sẽ đổi sang sản phẩm đồng giá khác trong trường hợp sản phẩm đã hết (không áp dụng vưới tròng kính). Chính sách bảo hành không áp dụng với các sản phẩm trong chương trình giảm giá', 3, 3)
INSERT [dbo].[sanpham] ([id_sanpham], [tensanpham], [giasp], [soluong], [hinhanh], [mota], [tinhtrang], [id_danhmuc]) VALUES (13, N'Hộp Da Farello', 100000, 9, N'b.jpg', N'Bảo hành 2 năm đối với sản phẩm kính mắt. Miễn phí đổi sang sản phẩm mới nếu có bất cứ lỗi sản xuất nào trong vòng 2 năm. Không áp dụng do thiệt hại bởi sử dụng sai cách, sơ xuất, thiếu cẩn trọng, oxy hoá do mồ hôi của khách hàng.', 3, 3)
SET IDENTITY_INSERT [dbo].[sanpham] OFF
GO
SET IDENTITY_INSERT [dbo].[tintuc] ON 

INSERT [dbo].[tintuc] ([baiviet_id], [tenbaiviet], [mota], [danhmuctin_id], [hinhanh]) VALUES (1, N'Tháng Tri Ân Thầy Cô- Trao gửi yêu thương bằng món quà ý nghĩa.💌.', N'Bạn vẫn còn phân vân việc tặng gì cho thầy cô? Hãy để Mắt Việt  là cầu nối giúp bạn trao gửi yêu thương qua những món quà cực chất nhé 🎁  💖 Quà Hiệu Giá Hời: giảm đến 50%++ hàng loạt mẫu kính hàng hiệu chính hãng*  💖 Top deal ưu đãi 20% cho cash voucher trị giá 1.000k**  💖 Ưu đãi 10% cho cash voucher trị giá 500k**  💖 Ưu đãi 10% dành cho khách hàng có thư mời đo mắt.*** Đăng ký tại: https://bit.ly/3hMyk0m  ⚡Thời gian áp dụng ưu đãi: 1.11 – 20.11.2021  ⚡ Điều kiện áp dụng:  *Áp dụng cho sản phẩm kính gọng và kính mát trong DMGG  ** Voucher được áp dụng cho tất cả các sản phẩm.  ** Voucher có giá trị như tiền mặt khi sử dụng mua hàng tại các cửa hàng Mắt Việt & I-Look  ** Voucher không được quy đổi thành tiền mặt.  ** Không trả lại tiền thừa khi khách hàng mua chưa hết giá trị voucher.  *** Áp dụng cho khách hàng có thư mời đo mắt.  *** Áp dụng cho sản phẩm nguyên giá.  ☑️ Không áp dụng cùng các chương trình khác tại cửa hàng.  📢 Nhanh chân đến ngay các cửa hàng Mắt Việt gần nhất để được trải nghiệm dịch vụ đo mắt  tiêu chuẩn 𝟓⭐ hàng đầu Việt Nam và  tận hưởng ưu đãi dành riêng cho mình bạn nhé.', 1, N'sale.jfif')
INSERT [dbo].[tintuc] ([baiviet_id], [tenbaiviet], [mota], [danhmuctin_id], [hinhanh]) VALUES (2, N'Bạn có biết kính mắt có nguồn gốc như thế nào? - Lịch sử ra đời của kính mắt hiện nay', N'Kính mắt là gì? Kính mắt hay còn được biết đến là kính đeo mắt là một loại vật dụng gồm các thấu kính thủy tinh hoặc nhựa cứng đặt trong khung để đeo trước mắt, thường với một mối nối qua mũi và hai thanh tựa vào hai tai. Kính mắt thường được dùng chữa các tật khúc xạ của mắt như cận thị và viễn thị.  Kính an toàn bảo vệ mắt chống lại các mảnh vụn bay dành cho công nhân xây dựng hoặc kỹ thuật viên phòng thí nghiệm; kính mắt bảo vệ khi đó có thể được bảo vệ ở cả hai bên mắt cũng như trước thấu kính. Một số loại kính an toàn được sử dụng để bảo vệ chống lại ánh sáng thường hoặc phóng xạ. Kính còn được sử dụng để bảo vệ mắt trong một số môn thể thao, chẳng hạn như squash.  Kính râm cho phép nhìn tốt hơn trong ánh sáng chói vào ban ngày, và có thể bảo vệ đôi mắt chống lại nguy hiểm của tia cực tím. Kính râm tiêu biểu được làm tối đi để bảo vệ chống lại ánh sáng hoặc ánh chớp, một số kính chuyên dụng cho phép nhìn rõ trong điều kiện tối hoặc trong nhà, nhưng chuyển sang kính râm khi ra nắng.  Nguồn gốc ra đời của kính mắt Hình dạng ban đầu của kính mắt được xác định đơn giản chỉ là một thấu kính bằng thạch anh được tìm thấy trong di chỉ khảo cổ ở Iraq. Tuy nhiên, những chiếc kính mắt thực sự được ghi nhận đầu tiên vào năm 1260 tại Ý. Cuối thế kỉ 12, kính đã xuất hiện ở Trung Quốc và châu Âu. Thấu kính của Trung Quốc kích thước to hình tròn được lồng vào khung bằng mai rùa đen với chân gọng kính bằng đồng kẹp vào búi tóc.   Còn những chiếc kính râm ban đầu được xuất hiện ở Trung Hoa với chất liệu mắt được làm bằng đá thạch anh tím, lúc này chỉ đơn thuần là làm dịu mắt dưới ánh nắng mặt trời. Sau này nhờ những sự nghiên cứu của Mỹ mà có thể nhuộm mắt kính sang các màu, cũng như là nhu cầu bảo vệ mắt khỏi nắng của Không Lực Hàng Không Mỹ. Khoảng những năm 1930, những phi công đã được thiết kế riêng một cặp kính để chống lóa và nhất là vẫn nhận diện được với cường độ nắng cao. ', 2, N'farello_2_jide.jpg')
INSERT [dbo].[tintuc] ([baiviet_id], [tenbaiviet], [mota], [danhmuctin_id], [hinhanh]) VALUES (3, N'VUI MÙA GIÁNG SINH - RINH KÍNH FARELLO GIÁ SỐC - SALE UP TO 50%', N'[MẮT VIỆT BLACK FRIDAY]– MUA CÀNG NHIỀU –ƯU ĐÃI CÀNG LỚN  🥳Lễ hội mua sắm lớn nhất năm, Black Friday của Kính mắt FARELLO đã khởi động. Bạn đã sẵn sàng cho cuộc giảm giá lớn nhất chưa bao giờ có của FARELLO chưa?[MẮT VIỆT BLACK FRIDAY]– MUA CÀNG NHIỀU –ƯU ĐÃI CÀNG LỚN  🥳Lễ hội mua sắm lớn nhất năm, Black Friday của Mắt Việt đã khởi động. Bạn đã sẵn sàng cho cuộc giảm giá lớn nhất chưa bao giờ có của Mắt Việt chưa?  ⚡ Còn chờ gì nữa, tận hưởng ngay ƯU ĐÃI ĐẶC BIỆT chỉ có tại Mắt Việt nhé  🔥Ưu đãi 15% khi mua 1 sản phẩm*  🔥Ưu đãi 20% khi mua  sản phẩm thứ 2*  🔥 Ưu đãi 30% khi mua sản phẩm thứ 3 *  🔥Ưu đãi 10% cho tròng kính.  🔥Sở hữu bộ vệ sinh mắt kính cực xin với giá siêu hời chỉ 𝟒𝟗𝐤**  🔥Giảm thêm 10% cho các sản phẩm trong DMGG***  Sản phẩm số lượng rất giới hạn, check ngay DEAL HỜI và săn ngay tại các cửa hàng  ⏰Thời gian khuyến mãi: Từ 24/11 đến hết 30/11/2021  ⭕Lưu ý áp dụng cụ thể từng khuyến mãi:  * Áp dụng cho sản phẩm kính gọng và kính mát  ** Áp dụng cho khách mua kính tại cửa hàng.  *** Áp dụng cho hàng trong DMGG  🏆 Mắt Việt tự hào là CHUỖI BÁN LẺ KÍNH MẮT CHÍNH HÃNG HÀNG ĐẦU Việt Nam từ 1989 với các thương hiệu kính mắt cao cấp trên thế giới: #Gucci #Prada #RayBan #D&G #Vogue #Bvlgari #COACH #Oakley #Bolon #Molsion…Và nhiều thương hiệu khác', 1, N'promotion_1638843647_517.jpg')
INSERT [dbo].[tintuc] ([baiviet_id], [tenbaiviet], [mota], [danhmuctin_id], [hinhanh]) VALUES (4, N'Những điều bạn nên biết về kính mắt', N'Nếu nói rằng đôi mắt là cửa sổ tâm hồn của mỗi người thì có thể nói chiếc mắt kính là những người bạn đồng hành tận tâm, tận tình, cho bạn sự hỗ trợ và giúp đỡ, vừa là vật trang trí duyên dáng cho khung cửa mộng mơ rộng mở ấy. Quả là không hề nói quá về chiếc kính đeo mắt, bởi nó có rất nhiều loại và nhiều công dụng, phù hợp với hầu hết nhu cầu của người dùng ở mọi lứa tuổi. Ví dụ, với những người bị bệnh về mắt, viễn thị, cận thị,.. kính sẽ giúp học khắc phục được những hạn chế của bạn thân, giúp mắt tinh anh hơn. Người bị cận thị có thể nhìn những vật ở xa, người viễn thị nhờ kính mà nhìn được những vật ở gần.  Đối với những bạn có các hoạt động đặc thù như bơi, trượt tuyết, đi xe tốc độ cao,…kính sẽ giúp mắt được bảo vệ, tránh khỏi nước, tuyết, gió, bụi. Những người không bị bệnh về mắt, không hoạt động đặc thù như vừa nêu cũng có thể mang kính thường xuyên khi đi ở bên ngoài để tránh nắng, tránh gió bụi. Bên cạnh đó, kính còn có thể dành cho các bạn yêu thích thời trang như một vật trang trí đơn giản và hữu dụng. Giá trị thẩm mỹ của kính có được bởi sự đa dạng về kiểu dáng và màu sắc.  Chủng loại của kính khá phong phú, tuy thế về cơ bản, cấu tạo của một cặp kính dù là chủng loại nào đa phần đều giống nhau. Một chiếc kính đeo mắt có hai bộ phận:  + Gọng kính:  Gọng kính có chức năng làm khung cho kính và là một bộ phận nâng đỡ tròng kính. Gọng kính gồm có hau phần được nối với nhau bởi một khớp sắt nhỏ.  Phần phía sau gọng kính giúp giữ được kính trên vành tai của bạn, còn phần trước đỡ lấy tròng kính và giúp tròng kính ở vị trí cố định, đảm bảo đúng tâm quang của mắt.  Gọng kính có thể làm bằng kim loại, hoặc từ các chất liệu nhựa bền và nhẹ hơn.', 2, N'dieucanbiet.png')
SET IDENTITY_INSERT [dbo].[tintuc] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (1, N'Tr?n', N'Hùng', N'tranquochung252001@gmail.com', N'8', 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (2, N'Tran', N'Hung', N'tranhung@gmail.com', N'c9f0f895fb98ab9159f51fd0297e236d', NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (3, N'user', N'2', N'tranhung1@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (4, N'Hà Mai', N'Lan', N'lancongchua@gmail.com', N'c9f0f895fb98ab9159f51fd0297e236d', NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (5, N'user', N'123', N'user@gmail.com', N'c9f0f895fb98ab9159f51fd0297e236d', NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (6, N'Hùng', N'Tr?n', N'tranquochung@gmail.com', N'c9f0f895fb98ab9159f51fd0297e236d', NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (7, N'Manh', N'Than', N'thanmanh@gmail.com', N'd253ebbb84ff9183fce6ffdd3f671579', NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[cart_details]  WITH CHECK ADD  CONSTRAINT [FK_cart_details_sanpham] FOREIGN KEY([id_sanpham])
REFERENCES [dbo].[sanpham] ([id_sanpham])
GO
ALTER TABLE [dbo].[cart_details] CHECK CONSTRAINT [FK_cart_details_sanpham]
GO
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_sanpham_danhmuc] FOREIGN KEY([id_danhmuc])
REFERENCES [dbo].[danhmuc] ([id_danhmuc])
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_sanpham_danhmuc]
GO
ALTER TABLE [dbo].[tintuc]  WITH CHECK ADD  CONSTRAINT [FK_tintuc_danhmuc_tin] FOREIGN KEY([danhmuctin_id])
REFERENCES [dbo].[danhmuc_tin] ([danhmuctin_id])
GO
ALTER TABLE [dbo].[tintuc] CHECK CONSTRAINT [FK_tintuc_danhmuc_tin]
GO
