create database hotel;
USE [hotel]
GO

/****** Object:  Table [dbo].[Accounts]    Script Date: 12/11/2023 6:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NULL,
	[IDCard] [varchar](10) NULL,
	[Phone] [varchar](10) NULL,
	[Password] [varchar](max) NULL,
	[Available] [bit] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Authorities]    Script Date: 12/11/2023 6:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Roles] [nvarchar](10) NULL,
 CONSTRAINT [PK_Authority] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Booking]    Script Date: 12/11/2023 6:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[check_in] [date] NULL,
	[check_out] [date] NULL,
	[total_price] [float] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Bookings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[BookingDetail]    Script Date: 12/11/2023 6:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingDetail](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BookingId] [bigint] NULL,
	[Roomid] [int] NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
	[check_in] [datetime] NULL,
	[check_out] [datetime] NULL,
 CONSTRAINT [PK_BookingDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Roles]    Script Date: 12/11/2023 6:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Room]    Script Date: 12/11/2023 6:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[Policy] [nvarchar](max) NULL,
	[Images] [varchar](10) NULL,
	[Roomtype] [int] NULL,
	[Available] [bit] NULL,
	[Bed] [nvarchar](50) NULL,
	[Size] [int] NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


/****** Object:  Table [dbo].[RoomType]    Script Date: 12/11/2023 6:28:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomType](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Describe] [nvarchar](max) NULL,
	[Policy] [nvarchar](max) NULL,
	[Size] [int] NULL,
	[Bed] [nvarchar](50) NULL,
	[Image1] [varchar](10) NULL,
	[Image2] [varchar](10) NULL,
	[Image3] [varchar](10) NULL,
	[Image4] [varchar](10) NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_RoomType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


INSERT [dbo].[Accounts] ([Username], [Fullname], [IDCard], [Phone], [Password], [Available]) VALUES (N'admintest@gmail.com', N'admintest', N'1234565867', N'0909907024', N'123', 1)
INSERT [dbo].[Accounts] ([Username], [Fullname], [IDCard], [Phone], [Password], [Available]) VALUES (N'cus@gmail.com', N'CUS', N'12', N'1214323536', N'123', 1)
INSERT [dbo].[Accounts] ([Username], [Fullname], [IDCard], [Phone], [Password], [Available]) VALUES (N'cus3@gmail.com', N'test Role', N'123', N'0703138224', NULL, 1)
INSERT [dbo].[Accounts] ([Username], [Fullname], [IDCard], [Phone], [Password], [Available]) VALUES (N'custestpass@gmail.com', N'Phượng', N'0246954', N'0703138222', N'123', 1)
INSERT [dbo].[Accounts] ([Username], [Fullname], [IDCard], [Phone], [Password], [Available]) VALUES (N'dire@gmail.com', N'DireTest', N'1234567869', N'0938334556', N'123', 1)
INSERT [dbo].[Accounts] ([Username], [Fullname], [IDCard], [Phone], [Password], [Available]) VALUES (N'nguyen02@gmail.com', N'Nguyen Phuong', N'123456', N'0767038890', N'123', 1)
INSERT [dbo].[Accounts] ([Username], [Fullname], [IDCard], [Phone], [Password], [Available]) VALUES (N'nguyen020392@gmail.com', N'Phượng Nguyễn', N'123456', N'0767038890', N'123', 1)
INSERT [dbo].[Accounts] ([Username], [Fullname], [IDCard], [Phone], [Password], [Available]) VALUES (N'nguyenTest@gmail.com', N'CTY test', N'1234', N'0767038890', N'123', 1)
INSERT [dbo].[Accounts] ([Username], [Fullname], [IDCard], [Phone], [Password], [Available]) VALUES (N'phuongnguyentk2392@gmail.com
', N'Thanh Trúc', N'1234567891', N'0938334551', N'123', 1)
INSERT [dbo].[Accounts] ([Username], [Fullname], [IDCard], [Phone], [Password], [Available]) VALUES (N'phuongntk2392@gmail.com', N'Nguyễn Thị Phượng', N'1234567892', N'0938334567', N'123', 1)
INSERT [dbo].[Accounts] ([Username], [Fullname], [IDCard], [Phone], [Password], [Available]) VALUES (N'staff@gmail.com', N'CTY CP DL VIET NAM VNTRAVEL', N'123456', N'0767038890', N'123', 1)
INSERT [dbo].[Accounts] ([Username], [Fullname], [IDCard], [Phone], [Password], [Available]) VALUES (N'TestRole@gmail.com', N'CTY CP DL VIET NAM VNTRAVEL', N'123456', N'0767038890', N'123', 0)
INSERT [dbo].[Accounts] ([Username], [Fullname], [IDCard], [Phone], [Password], [Available]) VALUES (N'TestRole2@gmail.com', N'TestRole2', N'0246954', N'0703138222', N'123', 0)
GO


SET IDENTITY_INSERT [dbo].[Authorities] ON 
INSERT [dbo].[Authorities] ([Id], [Username], [Roles]) VALUES (3, N'TestRole@gmail.com', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [Roles]) VALUES (4, N'TestRole2@gmail.com', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [Roles]) VALUES (5, N'cus3@gmail.com', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [Roles]) VALUES (6, N'nguyen020392@gmail.com', N'DIRE')
INSERT [dbo].[Authorities] ([Id], [Username], [Roles]) VALUES (7, N'custestpass@gmail.com', N'CUST')
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO


SET IDENTITY_INSERT [dbo].[Booking] ON 
INSERT [dbo].[Booking] ([Id], [Username], [CreateDate], [check_in], [check_out], [total_price], [Status]) VALUES (177, N'phuongntk2392@gmail.com', CAST(N'2023-11-25T05:53:33.433' AS DateTime), CAST(N'2023-11-25' AS Date), CAST(N'2023-11-28' AS Date), 1364000, 1)
INSERT [dbo].[Booking] ([Id], [Username], [CreateDate], [check_in], [check_out], [total_price], [Status]) VALUES (184, N'phuongntk2392@gmail.com', CAST(N'2023-11-25T06:10:53.337' AS DateTime), CAST(N'2023-11-25' AS Date), CAST(N'2023-11-29' AS Date), 1364000, 0)
INSERT [dbo].[Booking] ([Id], [Username], [CreateDate], [check_in], [check_out], [total_price], [Status]) VALUES (185, N'phuongntk2392@gmail.com', CAST(N'2023-11-25T06:11:10.107' AS DateTime), CAST(N'2023-11-25' AS Date), CAST(N'2023-11-29' AS Date), 1364000, 0)
INSERT [dbo].[Booking] ([Id], [Username], [CreateDate], [check_in], [check_out], [total_price], [Status]) VALUES (186, N'phuongntk2392@gmail.com', CAST(N'2023-11-25T06:13:16.880' AS DateTime), CAST(N'2023-11-26' AS Date), CAST(N'2023-11-29' AS Date), 1637000, 0)
INSERT [dbo].[Booking] ([Id], [Username], [CreateDate], [check_in], [check_out], [total_price], [Status]) VALUES (187, N'phuongntk2392@gmail.com', CAST(N'2023-11-25T06:22:10.127' AS DateTime), CAST(N'2023-11-25' AS Date), CAST(N'2023-11-30' AS Date), 1850000, 0)
INSERT [dbo].[Booking] ([Id], [Username], [CreateDate], [check_in], [check_out], [total_price], [Status]) VALUES (188, N'phuongntk2392@gmail.com', CAST(N'2023-11-25T12:02:25.373' AS DateTime), CAST(N'2023-11-25' AS Date), CAST(N'2023-11-29' AS Date), 1637000, 0)
INSERT [dbo].[Booking] ([Id], [Username], [CreateDate], [check_in], [check_out], [total_price], [Status]) VALUES (189, N'phuongntk2392@gmail.com', CAST(N'2023-11-25T12:03:23.050' AS DateTime), CAST(N'2023-11-25' AS Date), CAST(N'2023-11-30' AS Date), 1364000, 0)
INSERT [dbo].[Booking] ([Id], [Username], [CreateDate], [check_in], [check_out], [total_price], [Status]) VALUES (190, N'phuongntk2392@gmail.com', CAST(N'2023-11-25T23:46:30.290' AS DateTime), CAST(N'2023-11-28' AS Date), CAST(N'2023-11-30' AS Date), 1637000, 0)
INSERT [dbo].[Booking] ([Id], [Username], [CreateDate], [check_in], [check_out], [total_price], [Status]) VALUES (191, N'phuongntk2392@gmail.com', CAST(N'2023-11-26T22:17:36.810' AS DateTime), CAST(N'2023-11-27' AS Date), CAST(N'2023-11-30' AS Date), 2364000, 0)
INSERT [dbo].[Booking] ([Id], [Username], [CreateDate], [check_in], [check_out], [total_price], [Status]) VALUES (192, N'phuongntk2392@gmail.com', CAST(N'2023-11-26T22:20:36.183' AS DateTime), CAST(N'2023-11-27' AS Date), CAST(N'2023-11-30' AS Date), 1364000, 0)
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO


SET IDENTITY_INSERT [dbo].[BookingDetail] ON 
INSERT [dbo].[BookingDetail] ([Id], [BookingId], [Roomid], [Price], [Quantity], [check_in], [check_out]) VALUES (14, 177, 101, 1364000, 1, CAST(N'2023-11-25T00:00:00.000' AS DateTime), CAST(N'2023-11-28T00:00:00.000' AS DateTime))
INSERT [dbo].[BookingDetail] ([Id], [BookingId], [Roomid], [Price], [Quantity], [check_in], [check_out]) VALUES (16, 191, NULL, 2364000, 1, CAST(N'2023-11-27T00:00:00.000' AS DateTime), CAST(N'2023-11-30T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[BookingDetail] OFF
GO


INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'CUST', N'Customers')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'DIRE', N'Directors')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'STAF', N'Staffs')
GO


INSERT [dbo].[Room] ([Id], [Name], [Price], [Policy], [Images], [Roomtype], [Available], [Bed], [Size]) VALUES (101, N'Classic Double Ocean View', 1364000, N'Free Breakfast, Non-smoking', N'1.jpg', 1, 1, N'1 Double Bed', 22)
INSERT [dbo].[Room] ([Id], [Name], [Price], [Policy], [Images], [Roomtype], [Available], [Bed], [Size]) VALUES (102, N'Classic Double Ocean View', 1364000, N'Free Breakfast, Non-smoking', N'1.jpg', 1, 0, N'1 Double Bed', 22)
INSERT [dbo].[Room] ([Id], [Name], [Price], [Policy], [Images], [Roomtype], [Available], [Bed], [Size]) VALUES (103, N'Classic Double Ocean View', 1364000, N'Free Breakfast, Non-smoking', N'1.jpg', 1, 0, N'1 Double Bed', 22)
INSERT [dbo].[Room] ([Id], [Name], [Price], [Policy], [Images], [Roomtype], [Available], [Bed], [Size]) VALUES (104, N'Deluxe Twin Ocean View', 1637000, N'Free Breakfast, Non-smoking', N'2.jpg', 2, 0, N'1 Twin Bed Or 1 Queen Bed', 28)
INSERT [dbo].[Room] ([Id], [Name], [Price], [Policy], [Images], [Roomtype], [Available], [Bed], [Size]) VALUES (105, N'Deluxe Twin Ocean View', 1637000, N'Free Breakfast, Non-smoking', N'2.jpg', 2, 0, N'1 Twin Bed Or 1 Queen Bed', 28)
INSERT [dbo].[Room] ([Id], [Name], [Price], [Policy], [Images], [Roomtype], [Available], [Bed], [Size]) VALUES (106, N'Deluxe Twin Ocean View', 1637000, N'Free Breakfast, Non-smoking', N'2.jpg', 2, 0, N'1 Twin Bed Or 1 Queen Bed', 28)
INSERT [dbo].[Room] ([Id], [Name], [Price], [Policy], [Images], [Roomtype], [Available], [Bed], [Size]) VALUES (107, N'Signature Suite', 1850000, N'Free Breakfast, Non-smoking', N'3.jpg', 3, 0, N'1 king bed', 35)
INSERT [dbo].[Room] ([Id], [Name], [Price], [Policy], [Images], [Roomtype], [Available], [Bed], [Size]) VALUES (108, N'Signature Suite', 1850000, N'Free Breakfast, Non-smoking', N'3.jpg', 3, 0, N'1 king bed', 35)
INSERT [dbo].[Room] ([Id], [Name], [Price], [Policy], [Images], [Roomtype], [Available], [Bed], [Size]) VALUES (109, N'Connecting With Ocean View', 2683000, N'Free Breakfast, Non-smoking', N'6.jpg', 6, 0, N'2 twin beds or queen bed', 45)
INSERT [dbo].[Room] ([Id], [Name], [Price], [Policy], [Images], [Roomtype], [Available], [Bed], [Size]) VALUES (201, N'Classic Double Ocean View', 1364000, N'Free Breakfast, Non-smoking', N'1.jpg', 1, 0, N'1 Double Bed', 22)
GO


INSERT [dbo].[RoomType] ([Id], [Name], [Describe], [Policy], [Size], [Bed], [Image1], [Image2], [Image3], [Image4], [Price]) VALUES (1, N'Classic Double Ocean View', N'Comfy beds, 8.5 – Based on 76 reviews The light-filled room is delicately designed, combined with a Double bed. Looking through the glass door, the beautiful scenery of the beach seems to invite you to explore and save beautiful memories during the trip. This double room has a soundproofing, bathrobe and mini-bar. This double room includes: - Discount 10% on floating tray, afternoon tea and breakfast at room service - Discount 10% on dinner at Aura 69 Restaurant - Price Promotion for Welcome fruit: VND 150,000/plate', N'Free Breakfast, Non-smoking, Non-refundable', 25, N'1 king bed', N'1.jpg', N'1-1.jpg', N'1-2.jpg', N'1-3.jpg', 1364000)
INSERT [dbo].[RoomType] ([Id], [Name], [Describe], [Policy], [Size], [Bed], [Image1], [Image2], [Image3], [Image4], [Price]) VALUES (2, N'Deluxe Twin Ocean View', N'Comfy beds, 8.5 – Based on 76 reviews
The light-filled room is delicately designed, combined with a Double bed. Looking through the glass door, the beautiful scenery of the beach seems to invite you to explore and save beautiful memories during the trip.
This double room has a soundproofing, bathrobe and mini-bar.
This double room includes: 
- Discount 10% on floating tray, afternoon tea and breakfast at room service 
- Discount 10% on dinner at Aura 69 Restaurant 
- Price Promotion for Welcome fruit: VND 150,000/plate', N'Free Breakfast, Non-smoking,  Non-refundable', 28, N'1 Twin Bed Or 1 Queen Bed', N'2.jpg', N'2-1.jpg', N'2-2.jpg', N'2-3.jpg', 1637000)
INSERT [dbo].[RoomType] ([Id], [Name], [Describe], [Policy], [Size], [Bed], [Image1], [Image2], [Image3], [Image4], [Price]) VALUES (3, N'Signature Suite', N'Comfy beds, 8.5 – Based on 76 reviews
The light-filled room is delicately designed, combined with a Double bed. Looking through the glass door, the beautiful scenery of the beach seems to invite you to explore and save beautiful memories during the trip.
This double room has a soundproofing, bathrobe and mini-bar.
This double room includes: 
- Discount 10% on floating tray, afternoon tea and breakfast at room service 
- Discount 10% on dinner at Aura 69 Restaurant 
- Price Promotion for Welcome fruit: VND 150,000/plate', N'Free Breakfast, Non-smoking,  Non-refundable', 35, N'1 king bed', N'3.jpg', N'3-1.jpg', N'3-2.jpg', N'3-3.jpg', 1850000)
INSERT [dbo].[RoomType] ([Id], [Name], [Describe], [Policy], [Size], [Bed], [Image1], [Image2], [Image3], [Image4], [Price]) VALUES (4, N'King Room with Sea View', N'Comfy beds, 8.5 – Based on 76 reviews
The light-filled room is delicately designed, combined with a Double bed. Looking through the glass door, the beautiful scenery of the beach seems to invite you to explore and save beautiful memories during the trip.
This double room has a soundproofing, bathrobe and mini-bar.
This double room includes: 
- Discount 10% on floating tray, afternoon tea and breakfast at room service 
- Discount 10% on dinner at Aura 69 Restaurant 
- Price Promotion for Welcome fruit: VND 150,000/plate', N'Free Breakfast, Non-smoking,  Non-refundable', 35, N'1 queen bed', N'4.jpg', N'4-1.jpg', N'4-2.jpg', N'4-3.jpg', 2364000)
INSERT [dbo].[RoomType] ([Id], [Name], [Describe], [Policy], [Size], [Bed], [Image1], [Image2], [Image3], [Image4], [Price]) VALUES (5, N'Presidential Suite', N'Comfy beds, 8.5 – Based on 76 reviews
The light-filled room is delicately designed, combined with a Double bed. Looking through the glass door, the beautiful scenery of the beach seems to invite you to explore and save beautiful memories during the trip.
This double room has a soundproofing, bathrobe and mini-bar.
This double room includes: 
- Discount 10% on floating tray, afternoon tea and breakfast at room service 
- Discount 10% on dinner at Aura 69 Restaurant 
- Price Promotion for Welcome fruit: VND 150,000/plate', N'Free Breakfast, Non-smoking,  Non-refundable', 180, N'2 queen bed', N'5.jpg', N'5-1.jpg', N'5-2.jpg', N'5-3.jpg', 5731000)
INSERT [dbo].[RoomType] ([Id], [Name], [Describe], [Policy], [Size], [Bed], [Image1], [Image2], [Image3], [Image4], [Price]) VALUES (6, N'Triple Room', N'Comfy beds, 8.5 – Based on 76 reviews The light-filled room is delicately designed, combined with a Double bed. Looking through the glass door, the beautiful scenery of the beach seems to invite you to explore and save beautiful memories during the trip. This double room has a soundproofing, bathrobe and mini-bar. This double room includes:  - Discount 10% on floating tray, afternoon tea and breakfast at room service  - Discount 10% on dinner at Aura 69 Restaurant  - Price Promotion for Welcome fruit: VND 150,000/plate', N'Free Breakfast, Non-smoking,  Non-refundable', 45, N'2 queen bed', N'6.jpg', N'6-1.jpg', N'6-2.jpg', N'6-3.jpg', 5731000)
GO


ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authority_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authority_Accounts]
GO


ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authority_Roles] FOREIGN KEY([Roles])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authority_Roles]
GO


ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Accounts]
GO


ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetail_Booking] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Booking] ([Id])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK_BookingDetail_Booking]
GO


ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetail_Room] FOREIGN KEY([Roomid])
REFERENCES [dbo].[Room] ([Id])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK_BookingDetail_Room]
GO


ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_RoomType] FOREIGN KEY([Roomtype])
REFERENCES [dbo].[RoomType] ([Id])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_RoomType]
GO
