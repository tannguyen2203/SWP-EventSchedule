USE [master]
GO
/****** Object:  Database [EventSchedule]    Script Date: 08/02/2022 10:01:46 ******/
CREATE DATABASE [EventSchedule] ON  PRIMARY 
( NAME = N'EventSchedule', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER04\MSSQL\DATA\EventSchedule.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EventSchedule_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER04\MSSQL\DATA\EventSchedule_log.LDF' , SIZE = 20096KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EventSchedule] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EventSchedule].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EventSchedule] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [EventSchedule] SET ANSI_NULLS OFF
GO
ALTER DATABASE [EventSchedule] SET ANSI_PADDING OFF
GO
ALTER DATABASE [EventSchedule] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [EventSchedule] SET ARITHABORT OFF
GO
ALTER DATABASE [EventSchedule] SET AUTO_CLOSE ON
GO
ALTER DATABASE [EventSchedule] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [EventSchedule] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [EventSchedule] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [EventSchedule] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [EventSchedule] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [EventSchedule] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [EventSchedule] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [EventSchedule] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [EventSchedule] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [EventSchedule] SET  ENABLE_BROKER
GO
ALTER DATABASE [EventSchedule] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [EventSchedule] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [EventSchedule] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [EventSchedule] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [EventSchedule] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [EventSchedule] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [EventSchedule] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [EventSchedule] SET  READ_WRITE
GO
ALTER DATABASE [EventSchedule] SET RECOVERY SIMPLE
GO
ALTER DATABASE [EventSchedule] SET  MULTI_USER
GO
ALTER DATABASE [EventSchedule] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [EventSchedule] SET DB_CHAINING OFF
GO
USE [EventSchedule]
GO
/****** Object:  Table [dbo].[tblLocation]    Script Date: 08/02/2022 10:01:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLocation](
	[location_id] [int] IDENTITY(1,1) NOT NULL,
	[location_detail] [nvarchar](max) NULL,
	[location_status] [char](10) NULL,
 CONSTRAINT [PK__tblLocat__771831EA145C0A3F] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblLocation] ON
INSERT [dbo].[tblLocation] ([location_id], [location_detail], [location_status]) VALUES (1, N'Hội trường B', N'open      ')
INSERT [dbo].[tblLocation] ([location_id], [location_detail], [location_status]) VALUES (2, N'Hội trường A', N'open      ')
INSERT [dbo].[tblLocation] ([location_id], [location_detail], [location_status]) VALUES (3, N'Hội trường C', N'open      ')
INSERT [dbo].[tblLocation] ([location_id], [location_detail], [location_status]) VALUES (4, N'Sảnh trống đồng', N'open      ')
INSERT [dbo].[tblLocation] ([location_id], [location_detail], [location_status]) VALUES (5, N'Lầu 1 sảnh trống đồng', N'open      ')
INSERT [dbo].[tblLocation] ([location_id], [location_detail], [location_status]) VALUES (6, N'Lầu 2 sảnh trống đồng', N'open      ')
INSERT [dbo].[tblLocation] ([location_id], [location_detail], [location_status]) VALUES (7, N'Sân banh', N'open      ')
INSERT [dbo].[tblLocation] ([location_id], [location_detail], [location_status]) VALUES (8, N'Sân võ lầu 5', N'open      ')
INSERT [dbo].[tblLocation] ([location_id], [location_detail], [location_status]) VALUES (9, N'Thư viện', N'open      ')
INSERT [dbo].[tblLocation] ([location_id], [location_detail], [location_status]) VALUES (10, N'Hồ sen', N'open      ')
INSERT [dbo].[tblLocation] ([location_id], [location_detail], [location_status]) VALUES (11, N'Sân trường', N'open      ')
INSERT [dbo].[tblLocation] ([location_id], [location_detail], [location_status]) VALUES (12, N'Google meet', N'open      ')
SET IDENTITY_INSERT [dbo].[tblLocation] OFF
/****** Object:  Table [dbo].[tblUser]    Script Date: 08/02/2022 10:01:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[users_id] [int] IDENTITY(1,1) NOT NULL,
	[users_name] [nvarchar](50) NULL,
	[users_email] [nvarchar](100) NULL,
	[users_phone] [nchar](10) NULL,
	[users_address] [nchar](100) NULL,
 CONSTRAINT [PK__tblUser__EAA7D14B1BFD2C07] PRIMARY KEY CLUSTERED 
(
	[users_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblUser] ON
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2204, N'Cao Hong Hanh (K15 HCM)', N'hanhchse150754@fpt.edu.vn', N'          ', N'                                                                                                    ')
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2205, N'Trần Thị Hải Hà', N'hatthse140352@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2206, N'Huỳnh Nhật Tân', N'tanhnse140399@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2207, N'Phạm Đức Thắng', N'thangpdse140534@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2208, N'Phạm Quốc Anh Khôi', N'khoipqase141009@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2209, N'Nguyễn Trung Tín', N'tinntse150116@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2210, N'Võ Thị Tường Duy', N'duyvttse150159@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2211, N'Phan Hoàng Trung Hiếu', N'hieuphtse151459@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2212, N'Hoàng Minh Tuấn', N'tuanhmse151471@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2213, N'Nguyễn Thành Kiên', N'Nguyễn Thành Kiên', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2214, N'Lê Minh Đức', N'duclmse160145@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2215, N'Vũ Thanh Tùng', N'tungvtse160146@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2216, N'Huỳnh Bảo Phúc', N'phuchbse160159@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2217, N'Trần Quang Thiện', N'thientqse160166@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2218, N'Trần Hoàng Kim Ngân', N'nganthkse160169@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2219, N'Trần Thanh Quang', N'quangttse160182@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2220, N'Trần Vũ Kim Anh', N'anhtvkse161002@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2221, N'Mai Thanh Phương', N'phuongmtse161187@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2222, N'Nguyễn Đỗ Huy Hoàng', N'hoangndhse63556@fpt.edu.vn', NULL, N'                                                                                                    ')
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2223, N'Nguyễn Minh Duy', N'duynmde150406@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2224, N'Nguyễn Lê Nhật Trường', N'truongnlnde160015@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2226, N'Trịnh Minh Tâm', N'tamtmhe160857@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2227, N'Quảng Trọng Nhân', N'nhanqtse140052@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2228, N'Nguyễn Thanh Hoàng', N'hoangntse140088@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2229, N'Trương Anh Khoa', N'khoatase140107@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2230, N'Nguyễn Văn Tâm', N'tamnvse140116@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2231, N'Nguyễn Thanh Thanh Tú', N'tunttse140127@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2232, N'Nguyễn Tường Minh', N'minhntse140261@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2233, N'Lê Đăng Trường', N'truongldse140334@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2234, N'Trần Lê Duy', N'duytlse140829@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2235, N'Lưu Diệu Hoa', N'hoaldse140830@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2236, N'Nguyễn Kế Nam', N'namnkse140831@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2237, N'Nguyễn Mậu Hiếu', N'hieunmse140832@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2238, N'Nguyễn Tuấn Anh', N'anhntse140890@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2239, N'Trần Văn Luân', N'luantvse141093@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2240, N'Nguyễn Sỹ Hoan', N'hoannsse150010@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2241, N'Đặng Hữu Đạt', N'datdhse150011@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2242, N'Nguyễn Trung Hiếu', N'hieuntse150770@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2243, N'Phan Nhật Hoàng', N'hoangpnse150781@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2244, N'Nguyễn Lê Hữu', N'huunlse150800@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2245, N'Nghiêm Gia Huy', N'huyngse150811@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2246, N'Cao Bằng Thảo Nguyên', N'nguyencbtse150951@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2247, N'Trần Minh Nhật', N'nhattmse150956@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2248, N'Nguyễn Minh Tâm', N'tamnmse151041@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2249, N'Nguyễn Lê Thìn', N'thinnlse151075@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2250, N'Nguyễn Đình Bảo Khánh', N'khanhndbse151327@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2251, N'Nguyễn Quốc Bảo', N'baonqse151333@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2252, N'Nguyễn Gia Bảo', N'baongse151364@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2253, N'Đặng Phương Anh', N'anhdpse151396@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2254, N'Nguyễn Thành Nhân', N'nhanntse151405@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2255, N'Nguyễn An Ninh', N'ninhnase151416@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2256, N'Nguyễn Hoàng Huy', N'huynhse151464@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2257, N'Trần Trường Giang', N'giangttse160068@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2258, N'Lê Hữu Thịnh', N'thinhlhse160085@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2259, N'Huỳnh Minh Hà', N'hahmse160137@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2260, N'Nguyễn Lâm Hà', N'hanlse160241@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2261, N'Diệp Anh Vũ', N'vudase160365@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2262, N'Nguyễn Thị Băng Châu', N'chauntbse160578@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2263, N'Vy Vương Vũ', N'vuvvse160830@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2264, N'Hoàng Việt Đức', N'duchvse160887@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2265, N'Lý Nhật Minh', N'minhlnse161004@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2266, N'Shim Jun Woo', N'woosjse161064@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2267, N'Trương Nguyễn Thành Công', N'congtntse161088@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2268, N'Trần Thanh Tuấn', N'tuanttse161095@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2269, N'Nguyễn Tiến Quang', N'quangntse161148@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2270, N'Nguyễn Vũ Anh Quân', N'quannvase161200@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2271, N'Nguyễn Trọng Phúc', N'phucntse161211@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2272, N'Nguyễn Hồng Thái', N'thainhse161457@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2273, N'Trần Lâm Hoàng', N'hoangtlse161565@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2274, N'Phạm Tấn Phát', N'phatptse161575@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2275, N'Ngô Trần Anh Quân', N'quanntase161582@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2276, N'Đinh Nguyễn Hoàng Anh', N'anhdnhse161648@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2277, N'Bùi Đức Toản', N'toanbdse161649@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2278, N'Nguyễn Hồng Phát', N'phatnhse161713@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2279, N'Hồ Ngọc Thanh Trúc', N'truchntse161715@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2280, N'Võ Nguyễn Tiến Huy', N'huyvntse161762@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2281, N'Trần Xuân Hải Dương', N'duongtxhse162147@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[tblUser] ([users_id], [users_name], [users_email], [users_phone], [users_address]) VALUES (2282, N'Nguyễn Phúc Thịnh', N'thinhnpse162196@fpt.edu.vn', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblUser] OFF
/****** Object:  Table [dbo].[tblCategory]    Script Date: 08/02/2022 10:01:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NULL,
 CONSTRAINT [PK__tblCateg__D54EE9B4014935CB] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblCategory] ON
INSERT [dbo].[tblCategory] ([category_id], [category_name]) VALUES (1, N'Kinh doanh')
INSERT [dbo].[tblCategory] ([category_id], [category_name]) VALUES (2, N'Gaming')
INSERT [dbo].[tblCategory] ([category_id], [category_name]) VALUES (3, N'Học thuật')
INSERT [dbo].[tblCategory] ([category_id], [category_name]) VALUES (4, N'Thể thao')
INSERT [dbo].[tblCategory] ([category_id], [category_name]) VALUES (5, N'Âm nhạc')
INSERT [dbo].[tblCategory] ([category_id], [category_name]) VALUES (6, N'Hội họa')
INSERT [dbo].[tblCategory] ([category_id], [category_name]) VALUES (7, N'Hoạt động xã hội')
INSERT [dbo].[tblCategory] ([category_id], [category_name]) VALUES (8, N'Công nghệ')
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 08/02/2022 10:01:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdmin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_name] [nvarchar](100) NULL,
	[admin_phone] [nvarchar](10) NULL,
	[admin_email] [nvarchar](100) NULL,
	[admin_password] [nvarchar](100) NULL,
	[admin_role] [nvarchar](50) NULL,
	[admin_status] [bit] NULL,
	[image_url] [nvarchar](max) NULL,
 CONSTRAINT [PK__tblClub__BCAD3DD90EA330E9] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblAdmin] ON
INSERT [dbo].[tblAdmin] ([admin_id], [admin_name], [admin_phone], [admin_email], [admin_password], [admin_role], [admin_status], [image_url]) VALUES (1, N'FPT Around', N'031232331', N'daihoc.hcm@fpt.edu.vn', N'fptaround', N'admin', 1, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/clubs%2Ffptaround.jpg?alt=media&token=74fe6b9f-89b6-42d2-ac99-7ce271241725')
INSERT [dbo].[tblAdmin] ([admin_id], [admin_name], [admin_phone], [admin_email], [admin_password], [admin_role], [admin_status], [image_url]) VALUES (3, N'F# Live Music', N'0930012148', N'fsharp.fpthcm@gmail.com', N'fsharp', N'club', 1, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/clubs%2Fbasketball.png?alt=media&token=feab4c77-d34c-459d-b770-2b4af2566bc1')
INSERT [dbo].[tblAdmin] ([admin_id], [admin_name], [admin_phone], [admin_email], [admin_password], [admin_role], [admin_status], [image_url]) VALUES (4, N'FPT Football', N'0934215443', N'ffc.fptuhcm@gmail.com', N'fptfootball', N'club', 1, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/clubs%2Ffoootball.jpg?alt=media&token=250af7cf-b1b1-4c62-8e12-db20549bec9d')
INSERT [dbo].[tblAdmin] ([admin_id], [admin_name], [admin_phone], [admin_email], [admin_password], [admin_role], [admin_status], [image_url]) VALUES (5, N'Fstyle Crew', N'0364652434', N'fptstyle.fpthcm@gmail.com', N'fstyle', N'club', 1, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/clubs%2Ffstyle.jpg?alt=media&token=11b13979-a0fb-4551-af60-9673d7dd2b42')
INSERT [dbo].[tblAdmin] ([admin_id], [admin_name], [admin_phone], [admin_email], [admin_password], [admin_role], [admin_status], [image_url]) VALUES (6, N'Multimedia Entertainment', N'0916111237', N'mec.fptuhcmc@gmail.com', N'mec123', N'club', 1, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/clubs%2Fmec.png?alt=media&token=a52aaaaa-e4c7-491e-8b46-14a50408f158')
INSERT [dbo].[tblAdmin] ([admin_id], [admin_name], [admin_phone], [admin_email], [admin_password], [admin_role], [admin_status], [image_url]) VALUES (7, N'FPT Basketball', N'0945125844', N'fbc.fptuhcm@gmail.com', N'fptbasketball', N'club', 1, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/clubs%2Fbasketball.png?alt=media&token=feab4c77-d34c-459d-b770-2b4af2566bc1')
INSERT [dbo].[tblAdmin] ([admin_id], [admin_name], [admin_phone], [admin_email], [admin_password], [admin_role], [admin_status], [image_url]) VALUES (8, N'FPT Traditional Instruments', N'0967777929', N'fti.fptuhcm@gmail.com', N'fti123', N'club', 1, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/clubs%2Ffti.jpg?alt=media&token=d14021cd-316b-45e6-af1b-46a7b7475514')
INSERT [dbo].[tblAdmin] ([admin_id], [admin_name], [admin_phone], [admin_email], [admin_password], [admin_role], [admin_status], [image_url]) VALUES (9, N'FPTU Public Speaking', N'0945125847', N'fps.fptuhcm@gmail.com ', N'fps123', N'club', 1, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/clubs%2Ffps.jpg?alt=media&token=c02d8b5d-4580-4552-9948-a9f20346a5d4')
INSERT [dbo].[tblAdmin] ([admin_id], [admin_name], [admin_phone], [admin_email], [admin_password], [admin_role], [admin_status], [image_url]) VALUES (10, N'FPT Vovinam', N'0954812547', N'fvcvovinamclub@gmail.com', N'fptvov', N'club', 1, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/clubs%2Fvovinam.jpg?alt=media&token=9691f182-410c-4131-be88-91f6b80d085f')
INSERT [dbo].[tblAdmin] ([admin_id], [admin_name], [admin_phone], [admin_email], [admin_password], [admin_role], [admin_status], [image_url]) VALUES (11, N'FPT Japan Life Style', N'0548454745', N'jsc.fptuhcm@gmail.com', N'japan123', N'club', 1, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/clubs%2Fjapanlogo.jpg?alt=media&token=64224631-664a-4c0f-a4ae-490ab6592fd8')
SET IDENTITY_INSERT [dbo].[tblAdmin] OFF
/****** Object:  Table [dbo].[tblEvent]    Script Date: 08/02/2022 10:01:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEvent](
	[event_id] [int] IDENTITY(1,1) NOT NULL,
	[event_name] [nvarchar](50) NULL,
	[event_content] [nvarchar](max) NULL,
	[event_start] [datetime] NULL,
	[event_status] [bit] NULL,
	[category_id] [int] NULL,
	[location_id] [int] NULL,
	[admin_id] [int] NULL,
	[event_end] [datetime] NULL,
 CONSTRAINT [PK__tblEvent__2370F7270519C6AF] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblEvent] ON
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (2, N'🚌 CHUYẾN ĐI THỰC TẾ REAL-TIME COLLAB JOURNEY', N'🏞 Real-time Collab Journey là chương trình học hỏi, giao lưu kỹ năng làm việc nhóm dành riêng cho các bạn sinh viên học SSG104, chương trình được tạo ra với mục đích là hợp tác - gắn kết các sinh viên ở 2 Campus Cần Thơ – HCM và truyền cảm hứng cho sinh viên về khả năng làm việc nhóm. Với mong muốn mang đến cho các bạn có thêm nhiều kinh nghiệm, xây dựng tinh thần đoàn kết và hỗ trợ lẫn nhau, cạnh tranh lành tính giữa các đội, nhằm mục tiêu chung và đạt được kết quả tốt trong học tập. Bên cạnh đó, các bạn còn có cơ hội được áp dụng những kiến thức trên giấy qua các trò chơi lớn gắn kết đội nhóm đồng thời khám phá cơ sở FPT Cần Thơ.
🏞 Ngoài các hoạt động học tập vui chơi ở campus Cần Thơ, các bạn sinh viên còn được tham gia hoạt động thiện nguyện, cùng mang đến niềm vui cho các em nhỏ ở trường Tương Lai ở địa phương qua các trò chơi cùng các phần quà nhỏ ý nghĩa.
🏞 Không những thế khi đến với Cần Thơ, các bạn sẽ được khám phá những văn hóa đặc sắc ở Miền Tây sông nước với chợ nổi Cái Răng và bến Ninh Kiều nổi tiếng.', CAST(0x0000AF7200735B40 AS DateTime), 1, 3, 1, 6, CAST(0x0000AF8600000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (4, N'CHƯƠNG TRÌNH GÂY QUỸ XALALA', N'XALALA là một chương trình gây quỹ được thực hiện bởi ba lớp EL1702, MC1706, SE1745 đang học môn Communication & In-Group Working Skills, thuộc Bộ môn Kỹ năng mềm của Đại học FPT. Chương trình được tổ chức nhằm mục đích gây quỹ giúp đỡ các bạn học sinh tại Trường Hy Vọng.

✨Trường Hy Vọng - Ngôi trường nội trú dành cho các em nhỏ không may mất người thân vì dịch Covid-19 do chủ tịch HĐQT FPT Trương Gia Bình khởi xướng ý tưởng. Ngôi trường được xây dựng tại Khu đô thị FPT City Đà Nẵng (thành phố Đà Nẵng) nhằm nuôi dưỡng, đào tạo các học sinh ấy với mong muốn chia sẻ, yêu thương, nâng bước trưởng thành cho các em. Ngoài ra sự kiện hân hạnh nhận được tài trợ từ các nhà tài trợ: Audio - Technica thương hiệu âm thanh nổi tiếng đến từ Nhật Bản, Eco VillageVN, Hopper.', CAST(0x0000AED0008C1360 AS DateTime), 1, 3, 4, 6, CAST(0x0000AF2D00000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (7, N'🔥 WORKSHOP: RESUME & INTERVIEW: TIPS AND HINTS 🔥', N'👉 Workshop: Resume & Interview: Tips and Hints sẽ giúp bạn giải đáp những câu hỏi trên. Không những vậy, khi đến với buổi workshop, bên cạnh nghe những chia sẻ kinh nghiệm từ diễn giả xoay quanh một buổi phỏng vấn sẽ diễn ra như thế nào. Tại Workshop sinh viên sẽ có cơ hội được phỏng vấn trực tiếp với diễn giả Nguyễn Tường Phú để có những trải nghiệm chân thật nhất.
👉 Với hơn 20 năm kinh nghiệm làm Giám đốc kinh doanh ở các dịch vụ vận chuyển quốc tế, bảo hiểm và tài chính ngân hàng tại các tập đoàn đa quốc gia, anh Phú hứa hẹn sẽ đem đến các bạn sinh viên thật nhiều “tips” hay “bỏ túi” để có một CV và phong độ tốt nhất gây ấn tượng với nhà tuyển dụng', CAST(0x0000AF5E00EEF3E0 AS DateTime), 1, 3, 6, 9, CAST(0x0000AF5F00000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1242, N'CHUỖI SEMINAR "FUTURE FOUNDATION" MÙA THỨ 3', N'📌Đến với chuyên đề thứ tư – eWallet, chúng ta sẽ có cơ hội:
- Tìm hiểu các thành phần cấu thành eWallet và mô hình số hóa ứng dụng cho eWallet
- Tìm hiểu kiến trúc của eWallet.
- Ứng dụng các cấu trúc dữ liệu trong quản lý giao dịch, vận hành và bảo mật cho eWallet
- Trải nghiệm thực tế qua với các best practices trong việc triển khai, nâng cấp cho hệ thống eWallet
- Gặp gỡ và được chia sẻ kinh nghiệm từ diễn giả Huỳnh Nguyễn Hạ Duy, Giám đốc khối kỹ thuật - Công ty Cổ phần thương mại dịch vụ mạng lưới thông tin
- Host của buổi seminar: Ms. Vũ Thị Thùy Dương (GV, trưởng bộ môn của bộ môn CF)

Kiến thức kết hợp với các hướng dẫn, trải nghiệm thực tế và chia sẻ kinh nghiệm của những người đi trước sẽ là hành trang và vũ khí thực dụng cho các bạn sẵn sàng bước vào thời kỳ OJT và định hướng vị trí trong sự nghiệp tương lại của bạn trong ngành CNTT nói chung và phát triển phần mềm nói riêng. Bạn sẽ thay đổi cách tiếp cận vấn đề, giải quyết vấn đề từ đó cải thiện và hoàn thiện chính bạn từ ngày hôm nay.', CAST(0x0000AEAE0083D600 AS DateTime), 1, 2, 2, 3, CAST(0x0000AF24018B3BB0 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1243, N'DỰ ÁN BROTHERS & SISTERS 2022', N'Để chuẩn bị chào đón tân sinh viên K18, Phòng Công tác sinh viên Đại học FPT TP. HCM rất cần những cánh tay của các bạn khóa trước hướng dẫn những "tấm chiếu" mới.
Hãy cùng nhìn qua những thông tin về dự án này và nhanh tay đăng ký trở thành mảnh ghép của chúng mình nhé ❤
✨️ BROTHERS&SISTERS LÀ AI?
✅️ Là những người trực tiếp đồng hành cùng các bạn tân sinh viên K18 vượt qua những bỡ ngỡ khi mới bước chân vào trường Đại học FPT TP. HCM.
✅️ Là người sẽ dìu dắt các bạn Tân sinh viên đối mặt với những khó khăn của thời gian đầu nhập học và giúp các bạn khám phá hết mình những trải nghiệm tại ĐH FPT TP. HCM.
✅️ Là những người hướng dẫn, giải đáp thắc mắc và chia sẻ tất tần tật những thông tin về trường F. Ngoài ra BroSis có thể là những người bạn đầu tiên của các bạn tân sinh viên khi mới vào, là người lắng nghe tâm sự của các bạn. 
✨️LÀM SAO TRỞ THÀNH BROTHERS&SISTERS 2022? 
✅️ Sinh viên FPTU HCMC.
✅️ Sinh viên có tinh thần nhiệt huyết, đóng góp vào mục đích chung, có tinh thần trách nhiệm với công việc được phân công.
✅️ Sinh viên có kỹ năng làm việc nhóm, kỹ năng quản lý hoạt động nhóm là một lợi thế.
✅️ Ưu tiên các bạn đã từng làm BroSis những mùa trước.
✅️ Ưu tiên sinh viên đã và đang là BCN các CLB, thành viên nòng cốt của CLB, sinh viên đạt thành tích tốt trong học tập và hoạt động phong trào.', CAST(0x0000AECD01391C40 AS DateTime), 1, 6, 12, 9, CAST(0x0000AECD015A11C0 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1254, N'𝗪𝗢𝗥𝗞𝗦𝗛𝗢𝗣 #𝟳: 𝗙𝗨𝗧𝗨𝗥𝗘 𝗢𝗙 𝗠𝗘𝗗𝗜𝗔', N'VŨ TRỤ TRUYỀN THÔNG NẰM Ở ĐÂU TRONG VŨ TRỤ CỦA CHÚNG TA ☄️ 
🌏 Hiện nay, một trong những động lực quan trọng thúc đẩy sự phát triển của xã hội phải kể đến chính là vũ trụ truyền thông ✨ Truyền thông trở thành trung tâm của mọi hoạt động kinh tế xã hội và đóng vai trò tác động mạnh mẽ lên thành công lâu dài của bất kì tổ chức, doanh nghiệp, hay thậm chí là thương hiệu cá nhân 😳‼️ 
📍 Tại trường Đại học FPT HCM, chuyên ngành Truyền thông đa Phương tiện là một trong những ngành học nóng hổi và được đông đảo sinh viên quan tâm yêu thích! Tuy nhiên, vì ngành học còn mới lạ, có lẽ sẽ còn nhiều bạn trẻ đang lạc trôi trong vũ trụ truyền thông bao la này chăng ⁉️ 
🔮 Đến với 𝗪𝗼𝗿𝗸𝘀𝗵𝗼𝗽 #𝟳 “𝗙𝘂𝘁𝘂𝗿𝗲 𝗼𝗳 𝗠𝗲𝗱𝗶𝗮”, các bạn trẻ sẽ hiểu rõ hơn tất tần tật về ngành học truyền thông ở hiện tại. Từ đó, các bạn có thể nắm bắt tiềm năng xu thế phát triển của sự nghiệp bản thân trong tương lai, thông qua những lời chia sẻ, giải đáp thắc mắc từ diễn giả 𝗠𝗿. 𝗩𝗜𝗡𝗘𝗘𝗧𝗛 𝗗𝗛𝗥𝗨𝗩𝗔𝗡 có kinh nghiệm thâm niên thực chiến trong ngành nghề truyền thông. 
🔷 Diễn giả: 𝗠𝗿. 𝗩𝗜𝗡𝗘𝗘𝗧𝗛 𝗗𝗛𝗥𝗨𝗩𝗔𝗡 
     🔸 Managing Director tại Publicis Media Vietnam  
     🔸 Có 18 năm kinh nghiệm trong lĩnh vực Media Planning & Buying.   
     🔸 Từng làm việc ở các global agencies lừng lẫy như Mindshare, Starcom, Madison Communications.... 
👾 Hãy nhanh tay đăng ký form dưới đây để có thể dành cho mình một ghế MIỄN PHÍ đầu tư kiến thức quý giá cho hiện tại và cả sự nghiệp tương lai đi bạn nhé ‼️', CAST(0x0000AEC400A4CB80 AS DateTime), 0, 3, 2, 6, CAST(0x0000AEC400C5C100 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1255, N'CUỘC THI NHẠC CỤ DÂN TỘC F-SOUND 08', N'🪕 Thể lệ cuộc thi:
👉 Mỗi thí thí sinh chỉ chọn 01 loại nhạc cụ dân tộc Việt Nam để đăng ký dự thi (Đàn Tranh, Sáo, đàn Nguyệt, đàn Bầu, Tì Bà,…) 
👉 Mỗi thí sinh phải chuẩn bị 02 bài dự thi: Một bài dân ca và một bài nhạc mới. Bài nhạc mới có thể dùng nhạc beat hỗ trợ. 
👉 Thí sinh sẽ được BTC sắp xếp hỗ trợ tập luyện, góp ý chuyên môn, chạy chương trình để chuẩn bị tốt cho tiết mục dự thi. 
🔥Lưu ý: Thí sinh chuẩn bị tốt tiết mục mình đăng ký biểu diễn, tự trang bị, chuẩn bị máy và đảm bảo đường truyền tín hiệu Wifi ổn định. Set up chỗ ngồi biểu diễn gọn gàng, phục trang lịch sự, khuyến khích mặc phục trang đẹp, phù hợp tiết mục biểu diễn.
👑Giải thưởng:
- Mỗi chương trình sẽ chọn ra 3 thí sinh để trao giải, thí sinh đoạt giải tháng sẽ phải cam kết tham gia vào cuộc thi năm. (Mỗi năm có 11 kỳ thi tháng và 01 kỳ Gala chung kết)
- Giải cho kỳ thi tháng: 
+ 01 giải Nhất trị giá: 1.000.000 VNĐ 
+ 01 giải Nhì trị giá: 500.000 VNĐ 
+ 01 giải Bình chọn online: 200.000 VNĐ', CAST(0x0000AEBE011826C0 AS DateTime), 0, 7, 10, 8, CAST(0x0000AEBE016A8C80 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1256, N'CUỘC THI TÀI NĂNG HÁN TỰ', N'📖 Tài năng Hán tự FPTU HCM là cuộc thi Hán tự đầu tiên được tổ chức tại Đại học FPT TP.HCM. Với nhiều giải thưởng hấp dẫn cùng những vòng thi đấu vô cùng thú vị, Tài năng Hán tự là sân chơi bổ ích giúp các bạn sinh viên trau dồi và phát triển khả năng Hán tự của mình.Đặc biệt, giữa các vòng thi sẽ có những tiết mục văn nghệ do chính các bạn sinh viên học tiếng Nhật và tiếng Trung biểu diễn. 
📖 Cuộc thi bao gồm 3 vòng chính và 1 vòng dự bị:
Vòng 1: Phân loại Hán tự theo chủ đề
Vòng 2: Lật ô đoán Hán tự
Vòng 3: Đoán Hán tự qua các kiểu chữ
Vòng dự bị (nếu có nhiều người chơi cùng điểm số): Quyết định người thắng cuộc bằng quiz đố vui', CAST(0x0000AEBE01499700 AS DateTime), 1, 7, 8, 8, CAST(0x0000AEBE016A8C80 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1257, N'TALKSHOW “SÁCH ĐỌC TÔI 03” 🖋', N'Bạn biết không? Viết những trang sách của riêng mình chính là đưa những gì chúng ta biết, những gì chúng ta hiểu, những gì của riêng ta hay những thứ mà bản thân đã trải qua để giúp cho những người khác cũng cũng biết, hiểu và cảm nhận được. Có những người, họ không cất những câu chuyện họ thấy, họ nghe chỉ cho riêng họ biết. Họ viết, viết thành sách, chắp bút thành những trang văn rồi mang chúng đến với chúng ta, với cuộc đời. 
✍ Trong cuốn sách Nhật ký cô giáo - Học kỳ hè nổi tiếng được xuất bản vào năm 2021, giảng viên Hồ Yên Thục của trường F chúng ta, đã đưa những câu chuyện vui buồn, những góc nhìn “behind the scene” thú vị trên giảng đường đại học vào từng trang sách. “Nhật ký cô giáo - Học kỳ hè” được cô viết dưới dạng tản văn - tập hợp những ghi chép thường ngày bằng tone giọng dí dỏm, mộc mạc và nhiều cảm xúc từ “khoái ru” đến “đi thẳng vào lòng đất”. Cô kể lại những cuộc đối thoại lụm nhặt ở hành lang, bãi gửi xe, hay căn tin trường; cô kể về những ngày đến trường, về động lực nghề giáo, về “mấy ngàn con người từ hang cùng ngõ hẻm, tất cả các cơ sở từ Nam ra Trung ra Bắc phóng lên mạng học ì xèo” cứ thoáng trôi qua mỗi ngày trong “kỳ hè 2021” đại dịch vừa qua. Tất cả, là những câu chuyện mà cô đã thấy, đã nghe; là những cảm xúc mà cô đã nuôi nấng, đã để dành và rồi viết nên thành nhật ký. 
✍ Hay trong tập truyện ngắn “Một nửa làm đầy thế giới” - cuốn sách được đúc kết bởi 19 tác giả xuất sắc nhất lọt vào vòng chung kết cuộc thi truyện ngắn “Một nửa làm đầy thế giới” (cùng tên) do NXB Văn hóa – Văn nghệ TP.HCM tổ chức với sự tài trợ của một dự án thuộc giải Liberatupreis – Frankfurt 2018. Một trong số 19 câu chuyện của tập truyện ngắn ấy là “Đường về chốn mơ" của tác giả Huỳnh Lâm Minh Trí - anh chàng sinh viên trường F, đồng trang lứa với chúng ta. Trí viết về những phận đời phụ nữ Việt hiện đại bước ra với muôn vàn vết thương chắp vá bởi sự va đập của cuộc đời. Những câu chuyện ấy tái hiện lại những hình ảnh của người phụ nữ xung quanh chúng ta. Có thể họ là người thân hoặc người xa lạ đang mắc kẹt giữa những định kiến xã hội, bởi những đóng khung ràng buộc mà người đời vội khoác lên họ, mặc cho họ có thuận ý hay không.', CAST(0x0000AF5E0062E080 AS DateTime), 1, 8, 9, 6, CAST(0x0000AF0C00000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1264, N'𝗪𝗢𝗥𝗞𝗦𝗛𝗢𝗣 #𝟰: YẾU TỐ THẨM MỸ VÀ DẤU ẤN', N'⭐ Để có thể gây ấn tượng mạnh mẽ cho khán giả, các yếu tố thẩm mỹ cần có trong một sản phẩm truyền thông là gì?
⭐ Chúng ta có nên “uốn nắn” cá tính để phù hợp với gu thẩm mỹ chung? Hay nên đề cao tính sáng tạo độc đáo cá nhân và bỏ qua bố cục thiết kế nhất quán của công ty?
Tiếp nối dải ngân hà Multiverse in Multimedia, 𝗪𝗢𝗥𝗞𝗦𝗛𝗢𝗣 #𝟰 sắp tới sẽ giúp các “du hành gia” giải mã những thắc mắc trong vũ trụ thiết kế truyền thông và tìm cách “đặt ấn chân” riêng hiệu quả trong ngành sáng tạo qua những chia sẻ quý giá của Guest Speaker Mr. Bình Phan - Giám Đốc sáng tạo “tuổi 20” 💪
🔷  Diễn giả:  𝗠𝗿. 𝗕𝗶̀𝗻𝗵 𝗣𝗵𝗮𝗻
▫️ Kinh nghiệm 20 năm thực chiến trong ngành sáng tạo và 10 năm ở vị trí Creative Director.
▫️ Chinh chiến qua các global agencies như Dentsu, Saatchi & Saatchi, Chuo Senko, JWT, TBWA, Isobar….
▫️ Founder của Bold Creative Training Lab - Trung tâm đào tạo Nguồn nhân lực chuyên biệt cho ngành Truyền thông Sáng tạo tại Việt Nam.
▫️ Anh còn là giảng viên và khách mời trong nhiều talkshow của trường ĐH Kiến Trúc, ĐH Ngoại Thương, RMIT Việt Nam, VietnamMarcom….
🔷  Host: 𝗧𝗵𝗦. 𝗟𝗲̂ 𝗡𝗴𝗼̣𝗰 𝗣𝗵𝘂̛𝗼̛𝗻𝗴 𝗡𝗴𝘂𝘆𝗲̂𝗻 - Giảng viên Ngành Truyền thông Đa phương tiện Trường ĐH FPT HCM.
Với đôi mắt thẩm mỹ được tôi luyện nhiều năm trong ngành sáng tạo, không biết Mr. Bình (a.k.a anh Bưởi) sẽ mang đến những chia sẻ thực tiễn hấp dẫn gì cho buổi workshop này đây 🤔⁉️', CAST(0x0000AEEB00C5C100 AS DateTime), 1, 8, 2, 6, CAST(0x0000AEF700000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1266, N'TRẢI NGHIỆM TỪ LÝ THUYẾT ĐẾN THỰC TIỄN', N'💁‍♂️ Đôi nét về diễn giả: TS. Nguyễn Gia Trí
- Chủ nhiệm bộ môn An toàn thông tin Trường ĐH FPT Đà Nẵng đồng thời là một trong số ít thành viên cao cấp của tổ chức IEEE ở Việt Nam.
- Tại mùa giải FPT Edu ResFes 2021, thầy Trí là mentor dẫn dắt nhiều đội thi đạt thành tích ấn tượng, trong đó có đội The Pioneer đạt ngôi vị Quán quân Tiểu ban CNTT.
- Trước khi về cống hiến cho FPTU, thầy Trí đã từng làm việc tại 2 trường ĐH trong nước và 1 ĐH ở nước ngoài, điều này giúp thầy có được vốn kinh nghiệm quý báu cũng như tạo dựng được nhiều kết nối trong học thuật và nghiên cứu khoa học.
- Sau 4 năm bảo vệ luận án tiến sĩ, thầy đã công bố hơn 30 bài báo khoa học mà hầu hết đều trên các tạp chí ISI thuộc các nhà xuất bản uy tín như IEEE, Elsevier, Springer.
- Thầy Trí hiện đang là chủ nhiệm một đề tài khoa học cấp Nhà nước, và là thành viên nghiên cứu chủ chốt của một số đề tài ở nước ngoài. Hướng nghiên cứu chính của thầy tập trung sử dụng AI/máy học nhằm tối ưu mạng Internet of Things, mạng cảm biến, mạng định nghĩa bằng phần mềm, an ninh mạng, và điện toán biên', CAST(0x0000AE7301499700 AS DateTime), 1, 3, 12, 9, CAST(0x0000AE7D00000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1267, N' 𝗪𝗢𝗥𝗞𝗦𝗛𝗢𝗣 #𝟯: SÁNG TẠO TRONG THỰC CHIẾN', N'Nếu bạn là sinh viên chuyên ngành liên quan đến lĩnh vực sáng tạo và nhiều lần tự hỏi như:
❓ Tiêu chí đánh giá sản phẩm sáng tạo là gì
❓ Sự sáng tạo có bị ràng buộc bởi “tiền"
❓ Làm gì khi bị bí ý tưởng
Hãy đến ngay với 𝗪𝗢𝗥𝗞𝗦𝗛𝗢𝗣 𝟯: SÁNG TẠO TRONG THỰC CHIẾN và giải đáp những khúc mắc khó nói trong lòng nhé ‼️ Không chỉ vậy, đây còn là cơ hội để các bạn sinh viên được trực tiếp đặt câu hỏi và nhận được những chia sẻ đầy bổ ích từ hai diễn giả xịn sò với nhiều năm kinh nghiệm chinh chiến thực tế trong ngành:
✅ 𝗚𝗨𝗘𝗦𝗧 𝗦𝗣𝗘𝗔𝗞𝗘𝗥 1: Ms. Võ Thị Thanh Trúc - Managing Director tại PIM EVENT AGENCY.
    - Từng làm ở nhiều vị trí khác nhau như Senior Account Manager tại GazeFi Event Vietnam và Account Manager tại DigiX Integrated Marketing.
    - Có hơn 8 năm kinh nghiệm trong lĩnh vực BTL & Virtual Solutions (Client: Dior, Volvo Cars Vietnam, Sony, L''Oréal Group,...)
✅ 𝗚𝗨𝗘𝗦𝗧 𝗦𝗣𝗘𝗔𝗞𝗘𝗥 2: Ms. Trác Hoàng Thuý Vi - Trade Marketing Manager khu vực HCM - ILA Việt Nam.
    - Tốt nghiệp Thạc sĩ Quản trị Truyền Thông và Phương Tiện tại Đại học Stirling, Vương Quốc Anh.
    - Giảng viên chuyên ngành QHCC & Trade Marketing với 9+ năm kinh nghiệm trong lĩnh vực giáo dục ở nhiều vị trí khác nhau như Branding, PR, Event,...
✅ 𝗛𝗢𝗦𝗧: ThS. Trương Thanh Tuyền - Giảng viên Ngành Truyền thông đa phương tiện Trường Đại học FPT TPHCM', CAST(0x0000AF2B01391C40 AS DateTime), 1, 1, 3, 4, CAST(0x0000AF4901391C40 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1268, N'SEMINAR STARTUP #02 - HOW TO DO MARKET RESEARCH✍️', N'Theo báo cáo của CB Insights sau khi nghiên cứu “101 startup thất bại” trong năm 2020, nguyên nhân lớn nhất (chiếm 46%) được các Founders thừa nhận là “đưa ra sản phẩm mà thị trường không cần đến”. Nói cách khác, họ đã bỏ qua hoặc thất bại trong việc thực hiện phân tích thị trường, vì cho rằng đây là bước phiền phức không cần thiết nên cắt giảm và tự tin với đánh giá chủ quan của bản thân. Đây là tiền đề cho nhiều vấn đề và sự thất bại sau này của startup.
Có thể thấy tầm quan trọng của phân tích thị trường kinh doanh là không thể xem thường. Startup cần phân tích thị trường vì nó giúp đem lại cái nhìn toản cảnh, định hình được quy mô và nhu cầu khách hàng lớn đến đâu nhằm tìm ra thị trường tiềm năng để tập trung phát triển. Sau đó, dựa vào các nghiên cứu và phân tích khách hàng, startup sẽ đưa ra được sản phẩm đánh trúng vào tâm lý người mua.
Việc phân tích thị trường là rất cần thiết, nhưng thực hiện nó không phải là chuyện đơn giản khi ngân sách và nhân lực hạn chế. Do đó, “How to do market research” là buổi seminar giúp các startup có thể chủ động tìm kiếm và học hỏi những phương pháp, kỹ thuật phân tích thị trường cơ bản để tìm ra được chiến lược đúng đắn cũng như tránh nguy cơ thất bại.', CAST(0x0000AECE00FF6EA0 AS DateTime), 1, 5, 3, 5, CAST(0x0000AEED00000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1269, N'Real-time Collab Journey', N'📣Còn chưa đầy 2 ngày nữa thôi, cổng nhận lời tham dự của “Real-time Collab Journey“  - FPTU sẽ chính thức khép lại. Không biết là các bạn sinh viên đã chuẩn bị cho mình tới đâu rồi ha? Nếu còn phân vân hay thắc mắc thì để ad cho mượn bờ vai bằng những trải nghiệm đầy hấp dẫn với chuyến đi nhé. Còn chờ gì mà không đăng ký tham gia để có cơ hội “Ăn sáng trên chợ nổi”, cùng với “Chuỗi trò chơi đồng đội” đầy thú vị phải không nào! 📣
🏣FPT Cần Thơ chính là điểm đến lý tưởng dành cho bạn. Đến với nơi đây, bạn sẽ được thỏa sức thể hiện tinh thần nhiệt huyết của bản thân với những hoạt động vô cùng thú vị và bổ ích. Được hòa mình vào một môi trường năng động, cởi mở và luôn hướng đến sự chuyên nghiệp và tích cực nhất, tổ chức giao lưu phát quà.. Ngoài ra, chợ nổi là điều đầu tiên mà bạn không thể bỏ qua khi đến với Cần Thơ.', CAST(0x0000AEEB00EEF3E0 AS DateTime), 1, 4, 3, 6, CAST(0x0000AEED00000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1270, N'F-SOUND 07', N'
🪕 Nhạc cụ dân tộc là một trong những nét đẹp truyền thống văn hóa lâu đời của người Việt Nam. Để giữ gìn và tiếp nối nét đẹp truyền thống, F-Sound trở lại mùa 6 với mong muốn tìm kiếm những bạn trẻ có niềm đam mê với nhạc cụ dân tộc.🪕 Thể lệ cuộc thi:
👉 Mỗi thí thí sinh chỉ chọn 01 loại nhạc cụ dân tộc Việt Nam để đăng ký dự thi (Đàn Tranh, Sáo, đàn Nguyệt, đàn Bầu, Tì Bà,…) 
👉 Mỗi thí sinh phải chuẩn bị 02 bài dự thi: Một bài dân ca và một bài nhạc mới. Bài nhạc mới có thể dùng nhạc beat hỗ trợ. 
👉 Thí sinh sẽ được BTC sắp xếp hỗ trợ tập luyện, góp ý chuyên môn, chạy chương trình để chuẩn bị tốt cho tiết mục dự thi. 
🔥Lưu ý: Thí sinh chuẩn bị tốt tiết mục mình đăng ký biểu diễn, tự trang bị, chuẩn bị máy và đảm bảo đường truyền tín hiệu Wifi ổn định. Set up chỗ ngồi biểu diễn gọn gàng, phục trang lịch sự, khuyến khích mặc phục trang đẹp, phù hợp tiết mục biểu diễn.
👑Giải thưởng:
- Mỗi chương trình sẽ chọn ra 3 thí sinh để trao giải, thí sinh đoạt giải tháng sẽ phải cam kết tham gia vào cuộc thi năm. (Mỗi năm có 11 kỳ thi tháng và 01 kỳ Gala chung kết)
- Giải cho kỳ thi tháng: 
+ 01 giải Nhất trị giá: 1.000.000 VNĐ 
+ 01 giải Nhì trị giá: 500.000 VNĐ 
+ 01 giải Bình chọn online: 200.000 VNĐ 
', CAST(0x0000AECE01391C40 AS DateTime), 0, 2, 12, 7, CAST(0x0000AED300000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1271, N'🔥 48H MOVEMENT 2022 - 2 HOURS LEFT ', N'📢Ting ting! Thông báo từ bến xe thời gian
Quầy bán vé sắp đóng lại. Mau nhanh chân đến quầy nhận ngay một tấm vé để lên chuyến xe đến vùng đất mới cùng những người bạn mới nhé.👤Đối tượng tham gia: Tất cả các sinh viên trường Đại học FPT Hồ Chí Minh. (Vì một số sai sót về đối tượng tham gia trong bài truyền thông trước nên Ban tổ chức chân thành xin lỗi và xác nhận lại đối tượng tham gia chương trình lần này.)', CAST(0x0000AF2A007B98A0 AS DateTime), 1, 4, 3, 7, CAST(0x0000AF4900000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1272, N'FPT EDU RESFES 2022', N'Hôm nay 6/6, FPT Edu Research Festival (FPT Edu ResFes) 2022 chính thức khởi tranh. Chủ đề năm nay của cuộc thi là “Research sparks new vitality – Nghiên cứu khoa học khơi nguồn sức sống mới” hướng đến những đề tài nghiên cứu khoa học (NCKH) mang tinh thần đổi mới sáng tạo, khả năng ứng dụng thực tiễn cao. 
Với 5 Tiểu ban gồm: Công nghệ thông tin, Thiết kế đồ họa, Truyền thông đa phương tiện, Kinh tế - Quản trị kinh doanh và Ngôn ngữ, FPT Edu Research Festival 2022 hứa hẹn là nơi giao lưu gặp gỡ, thử sức tranh tài thú vị giữa các nhóm HSSV FPT Edu cũng như sinh viên các trường cao đẳng, đại học trong và ngoài nước.', CAST(0x0000AECE01391C40 AS DateTime), 1, 4, 9, 4, CAST(0x0000AED800000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1274, N' CUỘC THI LẬP TRÌNH FPT EDU HACKATHON 2022', N'👨🏼‍💻 Với mong muốn khuyến khích tinh thần học tập và tạo ra một sân chơi trí tuệ dành cho cộng đồng học sinh, sinh viên, học viên của Tổ chức Giáo dục FPT, cuộc thi lập trình FPT Edu Hackathon đã chính thức quay trở lại với chủ đề hoàn toàn mới: Phát triển ứng dụng phân tán trên nền tảng Blockchain.
FPT Edu Hackathon 2022 được chia thành 4 bảng thi đấu độc lập, có hệ thống giải thưởng riêng biệt với tổng giá trị tiền mặt lên đến 266.000.000 VND.
Tại FPT Education, một trong những trải nghiệm được mong chờ nhất của học sinh, sinh viên yêu thích công nghệ là Hackathon - thí sinh phải cùng nhau xây dựng nên một dự án trong thời gian có hạn.
Năm 2022, FPT Edu Hackathon chính thức trở lại, mở rộng đối tượng, quy mô, với 4 bảng thi đấu và tổng giải thưởng lên đến 266 triệu đồng tiền mặt.🖥 FPT Edu Hackathon là cuộc thi lập trình dành cho học sinh, sinh viên, học viên toàn Tổ chức Giáo dục FPT (FPT Edu) trên toàn quốc, được tổ chức theo mô hình Hackathon nổi tiếng của thế giới. 
🖥 FPT Edu Hackathon 2022 chọn chủ đề  “Phát triển ứng dụng phân tán trên nền tảng Blockchain” dành cho khối sinh viên và học sinh THPT; chủ đề “Tương lai thế giới” dành cho khối học sinh Tiểu học và THCS.', CAST(0x0000AF0C00A4CB80 AS DateTime), 1, 4, 9, 4, CAST(0x0000AF2A00000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1276, N'SEMINAR CHOOSING A STARUP IDEA CHÍNH THỨC LÊN SÓNG', N'Ý tưởng là chìa khóa làm nên một startup thành công. Khởi nghiệp thành công đòi hỏi những ý tưởng và sự đầu tư tốt. 
🎯Thế giới Startup tràn ngập các ý tưởng hoàn toàn khác biệt và sáng tạo. Nhân loại và công nghệ vẫn tiếp tục phát triển, phá vỡ các giới hạn, những điều mà 50 năm trước đây không thể tưởng tượng được giờ đây đã trở thành bình thường đối với đa số mọi người. 
🎯Choosing a startup idea – là buổi seminar giúp bạn kết hợp kiến thức, kỹ năng, niềm đam mê và xu hướng trong tương lai để bạn vượt qua các vấn đề thường gặp khi tìm kiếm ý tưởng cho Startup của mình và từ đó phát triển thành một doanh nghiệp vững chắc. Đến với buổi seminar các bạn còn được trực tiếp lắng nghe những chia sẻ từ diễn giả Hà Văn Minh - CEO công ty AITT.', CAST(0x0000AF6700C5C100 AS DateTime), 1, 4, 9, 9, CAST(0x0000AF7B00000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1279, N'𝗪𝗼𝗿𝗸𝘀𝗵𝗼𝗽 #𝟭: CÂN ĐO THƯƠNG HIỆU', N'Thương hiệu mà “cân đo đong đếm” được sao 🤔⁉️
Trong lĩnh vực quản lý doanh nghiệp, việc xác định giá trị thương hiệu chính xác và toàn diện sẽ đóng vai trò then chốt, ảnh hưởng đến thành công lâu dài của thương hiệu!
❓ Vậy thì, “công cụ” đo lường thương hiệu ở đây là gì
❓ Lợi ích của “công cụ” trong xây dựng thương hiệu doanh nghiệp
❓ Làm sao chúng ta có thể ứng dụng "công cụ" ấy để xác định insight khách hàng
Để bắt đầu chuỗi workshop 𝗠𝗨𝗟𝗧𝗜𝗩𝗘𝗥𝗦𝗘 𝗜𝗡 𝗠𝗨𝗟𝗧𝗜𝗠𝗘𝗗𝗜𝗔, chị Phạm Thanh Thảo sẽ chia sẻ những kinh nghiệm thiết thực của mình đến các bạn trong việc đo lường thương hiệu và sử dụng kết quả nghiên cứu định lượng để tìm ra insight khách hàng nhé ‼️', CAST(0x0000AECE01391C40 AS DateTime), 1, 3, 1, 6, CAST(0x0000AED000000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1281, N'Workshop “Client hay Agency"', N'“Client hay Agency: Đâu là sự lựa chọn của bạn?” không chỉ là một workshop tham gia để học hỏi mà còn là nơi để mọi người – đặc biệt là sinh viên khối ngành kinh tế, đặc biệt Truyền thông đa phương tiện, có thể có cái nhìn tổng quan hơn về định hướng công việc trong Digital Marketing, chọn được đâu là nơi mình sẽ gắn bó làm việc trong thời gian sắp tới!
“Agency là gì? Client là gì?” Đâu là môi trường phù hợp để bắt đầu nhìn nhận và làm việc hiệu quả chính là câu hỏi của một sinh viên nên nắm rõ ngay cả khi còn trên ghế nhà trường để có định hướng học tập phù hợp.
📌ĐẾN WORKSHOP LẦN NÀY BẠN SẼ NHẬN ĐƯỢC GÌ?
- Truyền cảm hứng, giải đáp, trao đổi mọi thắc mắc cùng với diễn giả có kinh nghiệm hơn 5 năm trong lĩnh vực Digital Marketing
- Hiểu được 2 môi trường làm việc tiêu biểu trong mảng ngành, định hướng được đâu là môi trường phù hợp với bản thân mà mình sẽ gắn bó
- Giúp sinh viên có góc nhìn tổng quát về các vị trí công việc tiềm năng trong ngành Marketing và Truyền thông đa phương tiênn
- Định vị lại giá trị bản thân mình, xây dựng hướng đi cho công việc sau đại học, tăng cơ hội trúng tuyển đối với những công việc tiềm năng, phù hợp hơn !!!', CAST(0x0000AEE4007B98A0 AS DateTime), 1, 8, 2, 6, CAST(0x0000AEE500000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1282, N'TRIỂN LÃM TUỔI THƠ - TẤM VÉ TUỔI THƠ', N'🌞 Tuổi thơ của bạn có gì? Có phải là gói mì trẻ em đủ màu sắc hay là hủ kẹo bột phê hơn con tê tê. Đó có phải là những lần kéo chong chóng bay mất tiêu qua bờ rào không lấy được hay đấu trí ô ăn quan cùng đám bạn. Phải chăng đó còn là những lúc vòi mẹ mua cho bằng được đĩa Siêu nhân Gao hay đĩa nhạc của bé Xuân Mai để xem cho bằng bạn bè.
🌞 Một thời tươi đẹp, không deadline, không đồ án, không nỗi lo cơm áo gạo tiền, chắc hẳn để đây bạn cũng cảm thấy hoài niệm lắm rồi. Vì thế mà triển lãm TUỔI THƠ được tổ chức nhằm tái hiện lại phần nào văn hóa gắn liền với kí ức thuở nhỏ của mọi người ở nhiều vùng miền khác nhau.
Chiếc vé về tuổi thơ sẽ giúp bạn ngược về quá khứ, trở lại thành một đứa trẻ vô tư với những hoạt động hoài niệm như:
🔸️ KHU VỰC TRƯNG BÀY - CHECK IN: tại đây, các tác phẩm văn học thuở bé tí ti má hay kể sẽ được trưng bày cho mọi người tham quan. Bên cạnh đó còn trưng bày các bộ phim cùng với những bộ truyện tranh làm mưa làm gió những năm tháng tuổi thơ của đại đa số mọi người. Không chỉ vậy, khu vực check in với chủ đề quán nước mía tuổi thơ cùng chiếc đài vô tuyến cũ sẽ là địa điểm sống ảo vượt thời gian đấy nhé.
🔸️ KHU TRÒ CHƠI TRẢI NGHIỆM: hòa mình vào không khí sôi động với những hoạt động tuổi thơ đầy hoài niệm. Gặp gỡ bộ đôi trò chơi banh đũa và ô ăn quan, xong qua tô tượng rồi ngồi đắp tranh cát thì quá lí tưởng rồi còn gì. ', CAST(0x0000AF67007779F0 AS DateTime), 1, 7, 4, 8, CAST(0x0000AF7B00000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1283, N'CUỘC THI ẢNH REPLY FPTU - HỒI ỨC THANH XUÂN', N'“Tuổi trẻ của chúng ta vì gặp được nhau mà bỗng nhiên chẳng còn vô nghĩa.”
Với mong muốn mang thanh xuân FPTU trở lại với bạn một lần nữa, cuộc thi Reply FPTU đã chính thức khởi động dành riêng cho Cựu sinh viên Trường Đại học FPT trên toàn quốc. Đây sẽ là một sân chơi hoài niệm, nơi cựu sinh viên được sống lại với thanh xuân của mình tại FPTU cùng những người bạn/ người thầy cô với những kỉ niệm khó quên trong suốt quãng đường sinh viên của mình.
Thông tin chi tiết về cuộc thi:
1️⃣ Đối tượng tham dự:
Cựu sinh viên Trường Đại học FPT của 4 campus (Hà Nội, Đà Nẵng, Hồ Chí Minh, Cần Thơ).
2️⃣ Chủ đề ảnh dự thi:
Tất cả những khoảnh khắc ấn tượng trong thời gian làm sinh viên tại trường Đại học FPT, những hình ảnh mang theo kỷ niệm của cựu sinh viên với trường.
3️⃣ Quy cách ảnh dự thi:
- Ảnh dự thi bắt buộc có hình ảnh của cá nhân hoặc hình ảnh trường gắn với 1 kỉ niệm của cựu sinh viên trong quá trình học tập tại Trường Đại học FPT.
- Ảnh dự thi có thể được chụp bằng máy ảnh kỹ thuật số, máy ảnh film, điện thoại di động hoặc bất kỳ thiết bị ghi hình nào.
- Ảnh dự thi phải được gửi dưới dạng file ảnh số dạng JPG hoặc PNG với dung lượng tối thiểu 1M (Megabyte).
- Ảnh dự thi có thể sử dụng mọi hình thức xử lý ảnh nhưng không chấp nhận sử dụng hình ảnh sưu tầm hoặc làm sai lệch giá trị chân thật của tác phẩm.
- Ảnh dự thi kèm theo chú thích đầy đủ thông tin như: Tên tác phẩm, chụp ở đâu, khi nào, nội dung và ý nghĩa của tác phẩm.
- Ảnh dự thi chưa từng tham gia bất kỳ một cuộc thi ảnh nào khác.', CAST(0x0000AEB00128A180 AS DateTime), 1, 7, 4, 8, CAST(0x0000AECE00000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1284, N'MỞ ĐĂNG KÝ THAM DỰ CHUNG KẾT CUỘC THI TOP MARKETER', N'🏃 Cuộc đua của các Marketers đang đi đến đến hồi kết. Hãy cùng đón xem đêm chung kết cuộc thi Top Marketer để cổ vũ các thí sinh của chúng ta trong trận đấu nghẹt thở này nhé!
️🎉 Đặc biệt, chương trình còn có sự xuất hiện của 4 vị Ban Giám khảo dày dặn kinh nghiệm:
▪️ Chị Dương Nga - Founder CEO Inception Agency, Head of UAN Hà Nội
▪️ Anh Phùng Hải Long -  Deputy Director of Athenar Agency - Admicro
▪️ Anh Tô Lãng - Brand Manager TopCV
▪️ TS. Trịnh Trọng Hùng - Dean, Faculty of Business, FPT University, Hoa Lac campus ', CAST(0x0000AF0C00AD08E0 AS DateTime), 1, 2, 4, 3, CAST(0x0000AF0C00000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1285, N'BUILDING THROUGH DIGITAL MARKETING ', N'Brand building through Digital Marketing - Xây dựng thương hiệu bằng digital marketing là buổi seminar về marketing nhằm cung cấp cho các bạn sinh viên những thông tin, kiến thức từ thực tế Doanh nghiệp sử dụng các công cụ Marketing trong thời đại số cho việc xây dựng thương hiệu.
Đến với buổi seminar, các bạn SV sẽ được tham gia buổi mô phỏng cuộc họp giữa agency và client trong việc chuẩn bị lên kế hoạch marketing.', CAST(0x0000AECE007779F0 AS DateTime), 1, 3, 1, 5, CAST(0x0000AF0C00000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1287, N'BẠN CÓ HẸN VỚI F-SOUND 06: THANH ÂM FPTU', N'Chỉ còn 24h nữa cuộc thi nhạc cụ âm nhạc F-Sounds - 06: Thanh âm FPTU sẽ chính thức diễn ra, Tại buổi biểu diễn, các bạn không chỉ lắng nghe giai điệu âm nhạc đến từ các tiết mục xuất sắc mà còn có cơ hội gặp những khách mời vô cùng đặc biệt. 
⭐Hãy cùng nhau chờ đón và thưởng thức những tiết mục đầy thú vị tại F-Sounds trên kênh fanpage FPT Around.Hẹn gặp lại bạn tại F-Sounds - 06: Thanh âm FPTU
---------------
F-Sounds: Thanh âm FPTU là cuộc thi biểu diễn nhạc cụ dân tộc do bộ môn Kỹ năng mềm - ĐH FPT. TP HCM tổ chức nhằm tạo sân chơi bổ ích và lành mạnh cho các bạn sinh viên.', CAST(0x0000AF0D008C1360 AS DateTime), 1, 1, 2, 9, CAST(0x0000AF1000000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1288, N'TALKSHOW HỒ SEN CHỜ AI 13: “XANH":', N'❓Đã có khi nào bạn biết bản thân mình muốn điều gì trong tuổi thanh xuân này?
❓Đã bao giờ bạn cố gắng hết sức để vươn lên và sống hết mình?
🌞🌞Cùng gặp nhau và tìm câu trả lời nhé những người trẻ và “XANH”.📌Địa điểm: Thư viện Đại học FPT TP. HCM
Thân mời bạn đến, thưởng trà, dùng bánh và chia sẻ tâm tư cùng talkshow Hồ Sen Chờ Ai 13: “Xanh" 💚', CAST(0x0000AE9100A4CB80 AS DateTime), 1, 1, 11, 5, CAST(0x0000AE9101391C40 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1289, N'ĐÊM HỘI ÂM NHẠC DÀNH RIÊNG CHO K17 ', N'⭐ Đêm hội âm nhạc là buổi giao lưu được tổ chức bởi Đại học FPT TP. HCM và trường Quân sự Quân khu 7. Sự kiện hứa hẹn sẽ tạo kỷ niệm đẹp dành cho các bạn sinh viên những ngày học tập tại trường Quân sự Quân khu 7.⭐ Đối tượng tham gia: Các bạn sinh viên đang tham gia học tập tại trường Quân sự Quân khu 7
Mọi thắc mắc liên hệ page FPT Around', CAST(0x0000AF2B00AD08E0 AS DateTime), 1, 1, 11, 5, CAST(0x0000AF3900000000 AS DateTime))
INSERT [dbo].[tblEvent] ([event_id], [event_name], [event_content], [event_start], [event_status], [category_id], [location_id], [admin_id], [event_end]) VALUES (1290, N'FOTOMARATHON 2022 ', N'📸 Bạn yêu thích thời trang và đam mê nhiếp ảnh? Bạn có hứng thú với những bộ hình thời trang đậm chất nghệ thuật? Hay đơn giản là “fan cứng” của nhiếp ảnh gia tài năng Hậu Lê? Vậy thì Talkshow này là dành cho bạn.
📸 Với những bạn chưa biết về Nhiếp ảnh gia Hậu Lê, vốn mệnh danh là Người giấu mặt của làng nhiếp ảnh thời trang, hợp tác với nhiều tạp chí nổi tiếng như Harper’s Bazaar, L’Officiel, những bộ hình cho nhà thiết kế thời trang Lâm Gia Khang, và lookbook cho các local brand Việt, PhotoVogue. Hiện Hậu Lê cũng được biết đến là một X-Photographer của hãng máy ảnh Fujifilm với hệ máy #MediumFormat GFX Series.
📸 Tại Talkshow, bạn sẽ được giải đáp những thắc mắc cũng như sẽ được truyền thêm nhiều cảm hứng cùng góc nhìn nghệ thuật độc đáo về nhiếp ảnh, về thời trang qua những kinh nghiệm dày dặn từ Nhiếp ảnh gia tài năng Hậu Lê.
❣️ Đặc biệt, Talkshow “Nhiếp ảnh thời trang hiện đại” sẽ diễn ra cùng thời gian và địa điểm với Chung kết Fotomarathon 2022. Vừa được lắng nghe những kiến thức hay ho, vừa được thưởng thức những tác phẩm xuất sắc nhất tại đường đua nhiếp ảnh lớn nhất trường F, bạn còn chần chừ gì mà chưa đăng ký tham gia ngay?', CAST(0x0000AE55008C1360 AS DateTime), 1, 1, 3, 6, CAST(0x0000AE5900000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblEvent] OFF
/****** Object:  Table [dbo].[tblVideo]    Script Date: 08/02/2022 10:01:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVideo](
	[video_id] [int] IDENTITY(1,1) NOT NULL,
	[video_url] [nvarchar](max) NULL,
	[event_id] [int] NULL,
	[video_name] [nvarchar](50) NULL,
 CONSTRAINT [PK__tblVideo__E8F11E1007020F21] PRIMARY KEY CLUSTERED 
(
	[video_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblVideo] ON
INSERT [dbo].[tblVideo] ([video_id], [video_url], [event_id], [video_name]) VALUES (3, N'https://firebasestorage.googleapis.com/v0/b/testfirebase-a9644.appspot.com/o/Videos%2FQAvfpKyc?alt=media&token=3c6eeec0-f792-4607-8a5c-aa856567a869', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblVideo] OFF
/****** Object:  Table [dbo].[tblPayment]    Script Date: 08/02/2022 10:01:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPayment](
	[payment_url] [nvarchar](max) NULL,
	[payment_fee] [int] NULL,
	[payment_detail] [nvarchar](max) NULL,
	[event_id] [int] NULL,
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__tblPayme__ED1FC9EA182C9B23] PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEventParticipated]    Script Date: 08/02/2022 10:01:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEventParticipated](
	[event_id] [int] NOT NULL,
	[users_id] [int] NOT NULL,
	[date_participated] [datetime] NULL,
	[payment_status] [bit] NULL,
	[users_status] [bit] NULL,
 CONSTRAINT [PK__tblEvent__8DDA8A3308EA5793] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC,
	[users_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (2, 2204, CAST(0x0000AEE200000000 AS DateTime), 1, 0)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (2, 2205, CAST(0x0000AEE200000000 AS DateTime), 1, 0)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (2, 2206, CAST(0x0000AED800000000 AS DateTime), 1, 0)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (2, 2207, CAST(0x0000AECE00000000 AS DateTime), 1, 0)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (4, 2205, CAST(0x0000AE9100000000 AS DateTime), 0, 0)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (4, 2207, CAST(0x0000AE9200000000 AS DateTime), 0, 0)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (4, 2214, CAST(0x0000AE7300000000 AS DateTime), 0, 0)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (4, 2217, CAST(0x0000AE7400000000 AS DateTime), 0, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (4, 2218, CAST(0x0000AE9300000000 AS DateTime), 0, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (4, 2219, CAST(0x0000AE9400000000 AS DateTime), 0, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (4, 2220, CAST(0x0000AE9500000000 AS DateTime), 0, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (4, 2221, CAST(0x0000AE9700000000 AS DateTime), 0, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (4, 2222, CAST(0x0000AE9800000000 AS DateTime), 0, 0)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (4, 2223, CAST(0x0000AE9700000000 AS DateTime), 0, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (7, 2271, CAST(0x0000AEF200000000 AS DateTime), 1, 0)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (7, 2272, CAST(0x0000AEF300000000 AS DateTime), 1, 0)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (7, 2274, CAST(0x0000AEF700000000 AS DateTime), 1, 0)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (7, 2275, CAST(0x0000AEF200000000 AS DateTime), 1, 0)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (7, 2276, CAST(0x0000AEEF00000000 AS DateTime), 1, 0)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1242, 2263, CAST(0x0000AE7D00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1242, 2265, CAST(0x0000AE9300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1242, 2266, CAST(0x0000AE7E00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1242, 2268, CAST(0x0000AE9100000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1242, 2274, CAST(0x0000AE9100000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1242, 2275, CAST(0x0000AE9400000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1242, 2276, CAST(0x0000AE7D00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1242, 2277, CAST(0x0000AE9400000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1242, 2278, CAST(0x0000AE9400000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1242, 2281, CAST(0x0000AE9400000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1243, 2205, CAST(0x0000AE6E00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1243, 2206, CAST(0x0000AE6F00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1243, 2212, CAST(0x0000AE7300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1243, 2213, CAST(0x0000AE9100000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1243, 2218, CAST(0x0000AE8B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1243, 2219, CAST(0x0000AE8B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1243, 2220, CAST(0x0000AE8B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1243, 2221, CAST(0x0000AE8B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1243, 2222, CAST(0x0000AE5600000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1243, 2223, CAST(0x0000AE5600000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1243, 2224, CAST(0x0000AE8B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1254, 2205, CAST(0x0000AE8B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1254, 2208, CAST(0x0000AE9100000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1254, 2209, CAST(0x0000AE9100000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1254, 2210, CAST(0x0000AE9100000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1254, 2211, CAST(0x0000AE7300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1254, 2212, CAST(0x0000AE7300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1254, 2213, CAST(0x0000AE7600000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1254, 2221, CAST(0x0000AE8B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1254, 2222, CAST(0x0000AE8B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1254, 2223, CAST(0x0000AE8B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1255, 2204, CAST(0x0000AE5600000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1255, 2205, CAST(0x0000AE5600000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1255, 2278, CAST(0x0000AE7600000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1255, 2279, CAST(0x0000AE3B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1255, 2280, CAST(0x0000AE3100000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1255, 2281, CAST(0x0000AE4C00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1255, 2282, CAST(0x0000AE4C00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1256, 2205, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1256, 2206, CAST(0x0000AE1300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1256, 2207, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1256, 2208, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1256, 2209, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1256, 2210, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1256, 2211, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1256, 2212, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1256, 2213, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1257, 2204, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1257, 2213, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1257, 2222, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1257, 2223, CAST(0x0000AE7300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1257, 2224, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1264, 2204, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1264, 2205, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1264, 2206, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1264, 2207, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1264, 2208, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1264, 2209, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1266, 2204, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1266, 2205, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1266, 2206, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1266, 2207, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1266, 2208, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1266, 2209, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1266, 2210, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1267, 2205, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1267, 2206, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1267, 2207, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1267, 2208, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1267, 2209, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1267, 2210, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1267, 2211, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1267, 2212, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1267, 2213, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1268, 2204, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1268, 2205, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1268, 2206, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1268, 2207, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1268, 2208, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1268, 2209, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1268, 2210, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1268, 2211, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1268, 2212, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1268, 2213, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1268, 2214, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1269, 2204, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1269, 2205, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1269, 2206, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1269, 2207, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1269, 2208, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1269, 2209, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1270, 2204, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1270, 2205, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1270, 2206, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1270, 2207, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1270, 2208, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1270, 2209, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1270, 2210, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1270, 2211, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1270, 2212, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1271, 2204, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1271, 2205, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1271, 2206, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1271, 2207, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1272, 2208, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1272, 2209, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1272, 2210, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1272, 2211, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1272, 2212, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1272, 2213, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1274, 2204, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1274, 2205, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1274, 2206, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1274, 2207, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1274, 2208, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1274, 2209, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1274, 2210, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1274, 2211, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1274, 2212, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1274, 2213, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1276, 2204, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1276, 2205, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1276, 2206, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1276, 2207, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1279, 2204, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1279, 2205, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1279, 2206, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1279, 2207, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1279, 2208, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1279, 2209, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1279, 2210, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1279, 2211, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1279, 2212, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1281, 2204, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1281, 2205, CAST(0x0000AE7500000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1281, 2206, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1281, 2207, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1281, 2208, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1281, 2209, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1281, 2210, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1282, 2211, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1282, 2212, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1282, 2213, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1282, 2214, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1282, 2215, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1282, 2216, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1282, 2217, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1283, 2218, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1283, 2219, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1283, 2220, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1283, 2221, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1283, 2222, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1283, 2223, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1283, 2224, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1283, 2235, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1283, 2236, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1284, 2208, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1284, 2210, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1284, 2211, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1285, 2211, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1285, 2212, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1285, 2213, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1285, 2214, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1285, 2215, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1285, 2216, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1287, 2217, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1287, 2218, CAST(0x0000AE9B00000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1287, 2219, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1288, 2205, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1288, 2211, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1288, 2212, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1288, 2213, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1288, 2214, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1288, 2215, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1288, 2216, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1288, 2217, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1289, 2204, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1289, 2205, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1289, 2206, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1289, 2207, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1289, 2208, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1289, 2209, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1289, 2211, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
GO
print 'Processed 200 total records'
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1289, 2212, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1290, 2204, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1290, 2205, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1290, 2206, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
INSERT [dbo].[tblEventParticipated] ([event_id], [users_id], [date_participated], [payment_status], [users_status]) VALUES (1290, 2207, CAST(0x0000AE2300000000 AS DateTime), 1, 1)
/****** Object:  Table [dbo].[tblImage]    Script Date: 08/02/2022 10:01:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblImage](
	[image_id] [int] IDENTITY(1,1) NOT NULL,
	[image_url] [nvarchar](max) NULL,
	[event_id] [int] NULL,
	[image_name] [nvarchar](50) NULL,
 CONSTRAINT [PK__tblImage__DC9AC955108B795B] PRIMARY KEY CLUSTERED 
(
	[image_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblImage] ON
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (1, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FRealtime.jpg?alt=media&token=0dcd4dc4-e353-4aaa-9691-5a5a78c2f1c1', 2, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (4, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FXavala.png?alt=media&token=17bba02b-f7ba-4c36-8644-52b09738ede0', 4, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (5, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FHoSen.jpg?alt=media&token=678605ca-5fc1-4eff-a7b2-f75f019c5cc8', 7, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (15, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FSeminar.jpg?alt=media&token=041419e5-c89f-4bf3-bd4c-983c0595de08', 1242, N'JQV1vCII')
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (16, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FBroandsis.jpg?alt=media&token=98f0bd25-bee9-4707-b884-d6a6df35c8a7', 1243, N'rLWGqLRk')
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (20, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FFuture.jpg?alt=media&token=8d74c873-5287-4343-ae5f-34fd05d446fb', 1254, N'hTjFqOg1')
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (21, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FNhaccudantoc.jpg?alt=media&token=c13e3a57-71d7-4dba-bb97-c822e2c646db', 1255, N'L1fY9nbv')
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (23, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FHantu.jpg?alt=media&token=e702461c-33b1-4695-bccb-b9cd03562a4e', 1256, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (24, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FSachdoctoi.jpg?alt=media&token=fbf17742-db8b-41c2-9344-3e8ff3d04a74', 1257, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (25, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FYeutothammy.jpg?alt=media&token=7206af7e-2d8c-45d4-bfad-3ffc1740d067', 1264, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (26, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FTrainghiem.jpg?alt=media&token=8ad75c9b-14e7-444a-98d7-bf28decb1f3b', 1266, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (27, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2Fthucchien.jpg?alt=media&token=312d060f-031c-407b-a852-3707b1c60be1', 1267, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (28, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2Fresearch.jpg?alt=media&token=e59d688c-2373-4a2e-ac6a-edc289a85508', 1268, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (29, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FRealtime.jpg?alt=media&token=0dcd4dc4-e353-4aaa-9691-5a5a78c2f1c1', 1269, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (30, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FF-sound7.jpg?alt=media&token=48eda0c5-5036-4875-b229-c102cef10bcd', 1270, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (31, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2F48h.jpg?alt=media&token=06f5f0b1-69fa-4fe1-908f-8acfd65267e4', 1271, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (32, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FRESFES.jpg?alt=media&token=2590cd50-79b3-41b9-8dc8-8cb0e5156af3', 1272, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (33, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FFPTCode.png?alt=media&token=9f4b3001-a9ab-4870-991d-e9016630ef55', 1274, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (34, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FCando.jpg?alt=media&token=d907c01e-7e26-4e8e-bcfc-2a06b9c3dec6', 1279, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (35, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FChoosing.jpg?alt=media&token=0e37d250-35f9-4c5e-86e4-15267e05cd0a', 1276, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (36, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FClient.jpg?alt=media&token=87da707a-9e9c-4e90-91ad-66bea93ca4a5', 1281, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (37, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FTuoitho.jpg?alt=media&token=7a079b4d-a7fd-4a7a-a69f-3e997b2a17f6', 1282, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (38, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FReply.jpg?alt=media&token=6b751f34-e30e-44a8-8721-a6efa62bf466', 1283, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (39, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FMarket.jpg?alt=media&token=42ed4cec-8ccb-47f5-944d-dcfe01d11e4b', 1284, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (40, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FDigital.jpg?alt=media&token=5c251365-4e9a-4fff-a8ba-e2b5e975e11a', 1285, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (41, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FFsound6.jpg?alt=media&token=a46d56f9-f5c3-4c45-bbee-a6be366212f1', 1287, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (42, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FTalkshow.jpg?alt=media&token=58456984-20c1-4b7e-8b53-a204215afec4', 1288, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (43, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2FVanNghe.jpg?alt=media&token=f2587fc8-d2fc-40a3-bec2-8a99f4e94f59', 1289, NULL)
INSERT [dbo].[tblImage] ([image_id], [image_url], [event_id], [image_name]) VALUES (44, N'https://firebasestorage.googleapis.com/v0/b/event-schedule-system-4284a.appspot.com/o/files%2Fhiendai.jpg?alt=media&token=5db2d873-37a6-4fa8-99ea-8053ef0300e6', 1290, NULL)
SET IDENTITY_INSERT [dbo].[tblImage] OFF
/****** Object:  Table [dbo].[tblFeedback]    Script Date: 08/02/2022 10:01:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFeedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[comment] [nvarchar](max) NULL,
	[rating] [int] NULL,
	[created_time] [date] NULL,
	[event_id] [int] NULL,
	[users_id] [int] NULL,
 CONSTRAINT [PK__tblFeedb__7A6B2B8C0CBAE877] PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblFeedback] ON
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (1, N'Một sự kiện rất tốt, tôi hy vọng rằng tôi có thể tham gia sự kiện đạt được trong tương lai', 5, NULL, 2, 2204)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (2, N'Sự kiện giúp tôi rất nhiều trong cuộc sống hiện tại, xin cảm ơn', 5, NULL, 2, 2205)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (3, N'Đây là sự kiện tồi tệ hơn mà tôi từng tham gia, mc tệ và nhân viên quản lý cư xử với người nghe', 1, NULL, 4, 2205)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (4, N'Tôi sẽ không bao giờ tham gia sự kiện từ câu lạc bộ này nữa, và tôi hy vọng rằng câu lạc bộ cũng bị gỡ xuống ', 1, NULL, 4, 2207)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (5, N'Sự kiện là tốt, nhưng tôi nghĩ rằng sẽ tốt hơn nếu mc biết cách tương tác nhiều hơn với người xem', 4, NULL, 7, 2271)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (6, N'Sự kiện chán ngắt', 2, NULL, 7, 2272)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (7, N'Đây giống như sự kiện tuyệt vời nhất mà tôi từng tham gia, sẽ giới thiệu cho bạn bè', 5, NULL, 2, 2206)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (8, N'Đánh giá trung thực: Sự kiện được trang trí tốt, nội dung của nó tốt. Điều tôi có vẻ không thích là thái độ của nhân viên. Một số người nghe đã đá vào ghế của tôi và nói rất to, tôi nói chuyện với nhân viên hy vọng họ có thể giải quyết nhưng họ chỉ phớt lờ tôi', 4, NULL, 2, 2207)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (9, N'sẽ giới thiệu cho bạn bè của tôi', 5, NULL, 4, 2214)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (10, N'Một sự kiện hoàn hảo để trẻ phát triển trí não, tất cả người lớn nên đưa trẻ đến đây', 5, NULL, 4, 2217)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (11, N'Không hài lòng về sự kiện lắm', 1, NULL, 4, 2218)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (12, N'Thời lượng sự kiện hơi dài', 4, NULL, 4, 2219)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (13, N'Hi vọng trong tương lai sẽ có nhiều sự kiênh như này hơn', 5, NULL, 4, 2220)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (14, N'Hi vọng họ sẽ cải thiện event hơn, tôi hơi thất vọng', 4, NULL, 4, 2221)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (15, N'Event làm mình thấy rất thất vọng về trường, nội dung giảng dạy không giúp đỡ nhiều cho việc học', 2, NULL, 4, 2222)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (16, N'Event làm tôi chán ', 1, NULL, 4, 2223)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (17, N'không muốn tham gia lần nào nữa', 4, NULL, 1242, 2263)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (18, N'Event rất hay', 5, NULL, 1242, 2265)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (19, N'tôi không thấy có gì hay cả', 2, NULL, 1242, 2268)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (20, N'chán quá', 3, NULL, 1242, 2275)
INSERT [dbo].[tblFeedback] ([feedback_id], [comment], [rating], [created_time], [event_id], [users_id]) VALUES (21, N'tôi không cảm thấy vui', 2, NULL, 1242, 2274)
SET IDENTITY_INSERT [dbo].[tblFeedback] OFF
/****** Object:  ForeignKey [FK_tblEvent_tblAdmin]    Script Date: 08/02/2022 10:01:47 ******/
ALTER TABLE [dbo].[tblEvent]  WITH CHECK ADD  CONSTRAINT [FK_tblEvent_tblAdmin] FOREIGN KEY([admin_id])
REFERENCES [dbo].[tblAdmin] ([admin_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblEvent] CHECK CONSTRAINT [FK_tblEvent_tblAdmin]
GO
/****** Object:  ForeignKey [FK_tblEvent_tblCategory]    Script Date: 08/02/2022 10:01:47 ******/
ALTER TABLE [dbo].[tblEvent]  WITH CHECK ADD  CONSTRAINT [FK_tblEvent_tblCategory] FOREIGN KEY([category_id])
REFERENCES [dbo].[tblCategory] ([category_id])
GO
ALTER TABLE [dbo].[tblEvent] CHECK CONSTRAINT [FK_tblEvent_tblCategory]
GO
/****** Object:  ForeignKey [FK_tblEvent_tblLocation]    Script Date: 08/02/2022 10:01:47 ******/
ALTER TABLE [dbo].[tblEvent]  WITH CHECK ADD  CONSTRAINT [FK_tblEvent_tblLocation] FOREIGN KEY([location_id])
REFERENCES [dbo].[tblLocation] ([location_id])
GO
ALTER TABLE [dbo].[tblEvent] CHECK CONSTRAINT [FK_tblEvent_tblLocation]
GO
/****** Object:  ForeignKey [FK_tblVideo_tblEvent]    Script Date: 08/02/2022 10:01:47 ******/
ALTER TABLE [dbo].[tblVideo]  WITH CHECK ADD  CONSTRAINT [FK_tblVideo_tblEvent] FOREIGN KEY([event_id])
REFERENCES [dbo].[tblEvent] ([event_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblVideo] CHECK CONSTRAINT [FK_tblVideo_tblEvent]
GO
/****** Object:  ForeignKey [FK_tblPayment_tblEvent]    Script Date: 08/02/2022 10:01:47 ******/
ALTER TABLE [dbo].[tblPayment]  WITH CHECK ADD  CONSTRAINT [FK_tblPayment_tblEvent] FOREIGN KEY([event_id])
REFERENCES [dbo].[tblEvent] ([event_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblPayment] CHECK CONSTRAINT [FK_tblPayment_tblEvent]
GO
/****** Object:  ForeignKey [FK_tblEventParticipated_tblEvent]    Script Date: 08/02/2022 10:01:47 ******/
ALTER TABLE [dbo].[tblEventParticipated]  WITH CHECK ADD  CONSTRAINT [FK_tblEventParticipated_tblEvent] FOREIGN KEY([event_id])
REFERENCES [dbo].[tblEvent] ([event_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblEventParticipated] CHECK CONSTRAINT [FK_tblEventParticipated_tblEvent]
GO
/****** Object:  ForeignKey [FK_tblEventParticipated_tblUser]    Script Date: 08/02/2022 10:01:47 ******/
ALTER TABLE [dbo].[tblEventParticipated]  WITH CHECK ADD  CONSTRAINT [FK_tblEventParticipated_tblUser] FOREIGN KEY([users_id])
REFERENCES [dbo].[tblUser] ([users_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblEventParticipated] CHECK CONSTRAINT [FK_tblEventParticipated_tblUser]
GO
/****** Object:  ForeignKey [FK_tblImage_tblEvent]    Script Date: 08/02/2022 10:01:47 ******/
ALTER TABLE [dbo].[tblImage]  WITH CHECK ADD  CONSTRAINT [FK_tblImage_tblEvent] FOREIGN KEY([event_id])
REFERENCES [dbo].[tblEvent] ([event_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblImage] CHECK CONSTRAINT [FK_tblImage_tblEvent]
GO
/****** Object:  ForeignKey [FK_tblFeedback_tblEventParticipated]    Script Date: 08/02/2022 10:01:47 ******/
ALTER TABLE [dbo].[tblFeedback]  WITH CHECK ADD  CONSTRAINT [FK_tblFeedback_tblEventParticipated] FOREIGN KEY([event_id], [users_id])
REFERENCES [dbo].[tblEventParticipated] ([event_id], [users_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblFeedback] CHECK CONSTRAINT [FK_tblFeedback_tblEventParticipated]
GO
