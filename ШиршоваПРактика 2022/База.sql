USE [master]
GO
/****** Object:  Database [44П-2022-УП-Ширшова]    Script Date: 02.03.2022 16:09:59 ******/
CREATE DATABASE [44П-2022-УП-Ширшова]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'44П-2022-УП-Ширшова', FILENAME = N'D:\SQLSERVER\44П-2022-УП-Ширшова.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'44П-2022-УП-Ширшова_log', FILENAME = N'D:\SQLSERVER\44П-2022-УП-Ширшова_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [44П-2022-УП-Ширшова].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET ARITHABORT OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET  DISABLE_BROKER 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET  MULTI_USER 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET DB_CHAINING OFF 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'44П-2022-УП-Ширшова', N'ON'
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET QUERY_STORE = OFF
GO
USE [44П-2022-УП-Ширшова]
GO
/****** Object:  Table [dbo].[Analyzator]    Script Date: 02.03.2022 16:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Analyzator](
	[Analyzator] [int] NOT NULL,
	[name] [nchar](15) NULL,
	[Description] [nchar](100) NULL,
 CONSTRAINT [PK_Analyzator] PRIMARY KEY CLUSTERED 
(
	[Analyzator] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cooperati]    Script Date: 02.03.2022 16:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cooperati](
	[idCOP] [int] NOT NULL,
	[Name] [nchar](50) NOT NULL,
	[Login] [nchar](50) NOT NULL,
	[Password] [nchar](50) NULL,
	[ip] [nchar](15) NULL,
	[Lastenter] [nchar](50) NULL,
	[Analyzator] [int] NULL,
	[Dol] [nchar](10) NULL,
 CONSTRAINT [PK_cooperati] PRIMARY KEY CLUSTERED 
(
	[idCOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 02.03.2022 16:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[idORD] [int] NOT NULL,
	[idUS] [int] NOT NULL,
	[idCOP] [int] NOT NULL,
	[Code] [int] NOT NULL,
	[data] [nchar](10) NULL,
	[result] [nchar](10) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[idORD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 02.03.2022 16:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Code] [int] NOT NULL,
	[Service] [nchar](50) NULL,
	[price] [money] NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02.03.2022 16:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[idUS] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Login] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[ip] [varchar](50) NOT NULL,
	[lastenter] [date] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[idUS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Analyzator] ([Analyzator], [name], [Description]) VALUES (1, N'BioRad         ', NULL)
INSERT [dbo].[Analyzator] ([Analyzator], [name], [Description]) VALUES (2, N'Ledetect       ', NULL)
INSERT [dbo].[Analyzator] ([Analyzator], [name], [Description]) VALUES (3, N'Ledetect111    ', NULL)
GO
INSERT [dbo].[cooperati] ([idCOP], [Name], [Login], [Password], [ip], [Lastenter], [Analyzator], [Dol]) VALUES (501, N'Lauretta K                                        ', N'Kilback1                                          ', N'5xfyjS9ZUL                                        ', N'105.215.34     ', N'30.12.2020                                        ', 1, N'Lab       ')
INSERT [dbo].[cooperati] ([idCOP], [Name], [Login], [Password], [ip], [Lastenter], [Analyzator], [Dol]) VALUES (502, N' Lisa Hegm                                        ', N'Hegmann2                                          ', N'tQOsP0ei9T                                        ', N'99.105.204     ', N'31.12.2020                                        ', 2, N'Lab       ')
INSERT [dbo].[cooperati] ([idCOP], [Name], [Login], [Password], [ip], [Lastenter], [Analyzator], [Dol]) VALUES (503, N'Michael Ha                                        ', N'michael3                                          ', N'bG1ZIzwIoU                                        ', N'255.167.21     ', N'29.12.2020                                        ', 3, N'Lab       ')
INSERT [dbo].[cooperati] ([idCOP], [Name], [Login], [Password], [ip], [Lastenter], [Analyzator], [Dol]) VALUES (510, N'Rollin Pad                                        ', N'Padberg1                                          ', N'QRYADbgNj                                         ', N'105.215.34     ', N'30.12.2020                                        ', NULL, N'Admin     ')
INSERT [dbo].[cooperati] ([idCOP], [Name], [Login], [Password], [ip], [Lastenter], [Analyzator], [Dol]) VALUES (511, N'Adell Huds                                        ', N'Hudson11                                          ', N'Yp59ZIDnWe                                        ', N'99.105.204     ', N'31.12.2020                                        ', NULL, N'Bux       ')
GO
INSERT [dbo].[Orders] ([idORD], [idUS], [idCOP], [Code], [data], [result]) VALUES (111, 1, 502, 619, N'31.08.2020', N'+         ')
INSERT [dbo].[Orders] ([idORD], [idUS], [idCOP], [Code], [data], [result]) VALUES (112, 2, 501, 311, N'01.09.2020', N'-         ')
INSERT [dbo].[Orders] ([idORD], [idUS], [idCOP], [Code], [data], [result]) VALUES (113, 3, 501, 548, N'02.09.2020', N'+         ')
INSERT [dbo].[Orders] ([idORD], [idUS], [idCOP], [Code], [data], [result]) VALUES (114, 4, 503, 258, N'03.09.2020', N'-         ')
INSERT [dbo].[Orders] ([idORD], [idUS], [idCOP], [Code], [data], [result]) VALUES (115, 5, 501, 176, N'04.09.2020', N'+         ')
INSERT [dbo].[Orders] ([idORD], [idUS], [idCOP], [Code], [data], [result]) VALUES (116, 6, 502, 501, N'05.09.2020', N'-         ')
INSERT [dbo].[Orders] ([idORD], [idUS], [idCOP], [Code], [data], [result]) VALUES (117, 7, 501, 543, N'06.09.2020', N'+         ')
INSERT [dbo].[Orders] ([idORD], [idUS], [idCOP], [Code], [data], [result]) VALUES (118, 8, 503, 557, N'07.09.2020', N'-         ')
INSERT [dbo].[Orders] ([idORD], [idUS], [idCOP], [Code], [data], [result]) VALUES (119, 9, 503, 229, N'08.09.2020', N'+         ')
INSERT [dbo].[Orders] ([idORD], [idUS], [idCOP], [Code], [data], [result]) VALUES (120, 10, 503, 415, N'09.09.2020', N'-         ')
INSERT [dbo].[Orders] ([idORD], [idUS], [idCOP], [Code], [data], [result]) VALUES (121, 11, 502, 619, N'10.09.2020', N'+         ')
INSERT [dbo].[Orders] ([idORD], [idUS], [idCOP], [Code], [data], [result]) VALUES (122, 12, 501, 311, N'11.09.2020', N'-         ')
INSERT [dbo].[Orders] ([idORD], [idUS], [idCOP], [Code], [data], [result]) VALUES (123, 13, 502, 548, N'12.09.2020', N'+         ')
INSERT [dbo].[Orders] ([idORD], [idUS], [idCOP], [Code], [data], [result]) VALUES (124, 14, 502, 258, N'13.09.2020', N'-         ')
GO
INSERT [dbo].[Services] ([Code], [Service], [price]) VALUES (176, N'Билирубин общий                                   ', 102.8500)
INSERT [dbo].[Services] ([Code], [Service], [price]) VALUES (229, N'СПИД                                              ', 341.7800)
INSERT [dbo].[Services] ([Code], [Service], [price]) VALUES (258, N'Креатинин                                         ', 143.2200)
INSERT [dbo].[Services] ([Code], [Service], [price]) VALUES (287, N'Волчаночный антикоагулянт                         ', 290.1100)
INSERT [dbo].[Services] ([Code], [Service], [price]) VALUES (311, N'Амилаза                                           ', 361.8800)
INSERT [dbo].[Services] ([Code], [Service], [price]) VALUES (323, N'Глюкоза                                           ', 447.6500)
INSERT [dbo].[Services] ([Code], [Service], [price]) VALUES (346, N'Общий белок                                       ', 396.0300)
INSERT [dbo].[Services] ([Code], [Service], [price]) VALUES (415, N'Кальций общий                                     ', 419.9000)
INSERT [dbo].[Services] ([Code], [Service], [price]) VALUES (501, N'Гепатит В                                         ', 176.8300)
INSERT [dbo].[Services] ([Code], [Service], [price]) VALUES (543, N'Гепатит С                                         ', 289.9900)
INSERT [dbo].[Services] ([Code], [Service], [price]) VALUES (548, N'Альбумин                                          ', 234.0900)
INSERT [dbo].[Services] ([Code], [Service], [price]) VALUES (557, N'ВИЧ                                               ', 490.7700)
INSERT [dbo].[Services] ([Code], [Service], [price]) VALUES (619, N'TSH                                               ', 262.7100)
INSERT [dbo].[Services] ([Code], [Service], [price]) VALUES (659, N'Сифилис RPR                                       ', 443.6600)
INSERT [dbo].[Services] ([Code], [Service], [price]) VALUES (797, N'АТ и АГ к ВИЧ 1/2                                 ', 370.6200)
INSERT [dbo].[Services] ([Code], [Service], [price]) VALUES (836, N'Железо                                            ', 105.3200)
INSERT [dbo].[Services] ([Code], [Service], [price]) VALUES (855, N'Ковид IgM                                         ', 209.7800)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (1, N'Clareta Hacking', N'chacking0', N'4tzqHdkqzo4', N'147.231.50.234', CAST(N'2020-02-10' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (2, N'Northrop Mably', N'nmably1', N'ukM0e6', N'22.32.15.211', CAST(N'2020-06-20' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (3, N'Fabian Rolf', N'frolf2', N'7QpCwac0yi', N'113.92.142.29', CAST(N'2020-05-19' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (4, N'Lauree Raden', N'lraden3', N'5Ydp2mz', N'39.24.146.52', CAST(N'2020-06-22' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (5, N'Barby Follos', N'bfollos4', N'ckmAJPQV', N'87.232.97.3', CAST(N'2020-03-18' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (6, N'Mile Enterle', N'menterle5', N'0PRom6i', N'85.121.209.6', CAST(N'2020-07-04' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (7, N'Midge Peaker', N'mpeaker6', N'0Tc5oRc', N'196.39.132.128', CAST(N'2020-09-03' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (8, N'Manon Robichon', N'mrobichon7', N'LEwEjMlmE5X', N'143.159.207.105', CAST(N'2020-08-31' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (9, N'Stavro Robken', N'srobken8', N'Cbmj3Yi', N'12.154.73.196', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (10, N'Bryan Tidmas', N'btidmas9', N'dYDHbBQfK', N'24.42.134.21', CAST(N'2020-06-06' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (11, N'Jeannette Fussie', N'jfussiea', N'EGxXuLQ9', N'98.194.112.137', CAST(N'2020-08-21' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (12, N'Stephen Antonacci', N'santonaccib', N'YcXAhY3Pja', N'198.146.255.15', CAST(N'2019-10-03' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (13, N'Niccolo Bountiff', N'nbountiffc', N'5xfyjS9ZULGA', N'231.78.246.229', CAST(N'2020-01-22' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (14, N'Clemente Benjefield', N'cbenjefieldd', N'tQOsP0ei9TuD', N'88.126.93.246', CAST(N'2020-07-09' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (15, N'Orlan Corbyn', N'ocorbyne', N'bG1ZIzwIoU', N'232.175.48.179', CAST(N'2020-04-24' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (16, N'Coreen Stickins', N'cstickinsf', N'QRYADbgNj', N'64.30.175.158', CAST(N'2020-04-20' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (17, N'Daveta Clarage', N'dclarageg', N'Yp59ZIDnWe', N'139.88.229.111', CAST(N'2020-06-09' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (18, N'Javier McCawley', N'jmccawleyh', N'g58zLcmCYON', N'14.199.67.32', CAST(N'2020-04-20' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (19, N'Daile Band', N'dbandi', N'yFAaYuVW', N'206.105.148.56', CAST(N'2019-12-02' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (20, N'Angil Buttery', N'abutteryj', N'ttOFbWWGtD', N'192.158.7.138', CAST(N'2020-06-21' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (21, N'Kyla Kinman', N'kkinmank', N'qUr6fdWP6L5G', N'134.99.243.113', CAST(N'2019-11-08' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (22, N'Selena Skepper', N'sskepperl', N'jHYN0v3', N'52.90.89.126', CAST(N'2020-04-28' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (23, N'Alyson Yeoland', N'ayeolandm', N'QQezRBV9', N'239.7.55.187', CAST(N'2020-05-31' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (24, N'Claudie Speeding', N'cspeedingn', N'UCLYITfw2Vo', N'127.37.194.127', CAST(N'2019-11-15' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (25, N'Alaric Scarisbrick', N'ascarisbricko', N'fzBcv6GbyCp', N'97.227.15.172', CAST(N'2020-02-19' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (26, N'Marie Thurby', N'mthurbyp', N'wg0uIskqei', N'94.70.148.135', CAST(N'2019-09-18' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (27, N'Cloe Roxbrough', N'croxbroughq', N'67CVVym', N'185.110.201.36', CAST(N'2020-01-11' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (28, N'Pegeen McCotter', N'pmccotterr', N'QG5tdzRpGZJ2', N'22.179.187.229', CAST(N'2020-03-22' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (29, N'Iggie Calleja', N'icallejas', N'aeDvZk8o9', N'67.237.123.227', CAST(N'2020-07-19' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (30, N'Nelle Brosch', N'nbroscht', N'DmPJt2', N'251.1.59.65', CAST(N'2019-12-17' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (31, N'Shae Allsepp', N'sallseppu', N't0ko0854Cpvv', N'88.20.74.85', CAST(N'2020-08-09' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (32, N'Eldridge Abbatucci', N'eabbatucciv', N'gUtNdsDu', N'52.44.134.126', CAST(N'2020-03-29' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (33, N'Skip Garnham', N'sgarnhamw', N'eml6RqbK', N'100.17.131.54', CAST(N'2020-01-29' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (34, N'Ric Kitchenside', N'rkitchensidex', N'xaa7miQ7yB', N'29.100.76.146', CAST(N'2019-12-14' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (35, N'Urbanus Di Meo', N'udiy', N'dHqu78cU6NOP', N'90.30.202.251', CAST(N'2019-12-25' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (36, N'Monty Beidebeke', N'mbeidebekez', N'F5T5spAU9A4O', N'3.32.202.92', CAST(N'2020-02-05' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (37, N'Byrann Savins', N'bsavins10', N'l6sYf29NLN', N'123.187.14.103', CAST(N'2020-01-23' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (38, N'Sonnie Riby', N'sriby11', N'Va34LYqFh', N'16.81.16.23', CAST(N'2020-06-17' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (39, N'Sherill Birney', N'sbirney12', N'Ggygo2ePsETs', N'144.76.193.237', CAST(N'2019-12-27' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (40, N'Indira Kleanthous', N'ikleanthous13', N'3H0GS7a', N'169.108.108.88', CAST(N'2019-12-29' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (41, N'Maison Skerme', N'mskerme14', N'wy1HWA', N'143.177.136.232', CAST(N'2020-02-10' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (42, N'Hanan Cahey', N'hcahey15', N'NSXcG9khd', N'18.127.87.158', CAST(N'2020-06-13' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (43, N'Tore Rusling', N'trusling16', N'abol9dYC8e', N'142.216.95.251', CAST(N'2020-03-19' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (44, N'Jeddy De Souza', N'jde17', N'gK6Hsl8Q', N'229.104.255.175', CAST(N'2019-10-17' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (45, N'Flossi McLeoid', N'fmcleoid18', N'B9zr0N7cJw', N'90.207.38.179', CAST(N'2020-01-26' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (46, N'Nikoletta Megainey', N'nmegainey19', N'gph7QurFf', N'172.249.218.50', CAST(N'2020-05-22' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (47, N'Adan Bliven', N'abliven1a', N'vVxlf94KpeX', N'49.101.94.118', CAST(N'2020-06-17' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (48, N'Mohandis Rossoni', N'mrossoni1b', N'nLXj2lS', N'161.5.132.42', CAST(N'2019-11-16' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (49, N'Nappie Redington', N'nredington1c', N'DCbOb1SX', N'174.42.8.3', CAST(N'2020-05-06' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (50, N'Lenka Francie', N'lfrancie1d', N'DoGeHWuAAM', N'182.2.128.34', CAST(N'2020-03-30' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (51, N'Ashley Blowin', N'ablowin1e', N'aQygVtMjN', N'73.212.243.168', CAST(N'2020-06-24' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (52, N'Vale Goroni', N'vgoroni1f', N'bWr0QU', N'93.126.120.134', CAST(N'2020-08-19' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (53, N'Suki Grafom', N'sgrafom1g', N'JcNcVDAouYzA', N'9.26.5.107', CAST(N'2019-12-17' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (54, N'Justis Gianneschi', N'jgianneschi1h', N'oieX5u3sUfpD', N'139.241.156.87', CAST(N'2020-03-14' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (55, N'Emilie Collett', N'ecollett1i', N'Y0uMyKB0W', N'47.0.240.7', CAST(N'2019-10-07' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (56, N'Byrom Terrell', N'bterrell1j', N'hswseW', N'157.21.33.53', CAST(N'2020-02-25' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (57, N'Daphne Bifield', N'dbifield1k', N'oYAQ4URihIA', N'24.185.229.169', CAST(N'2020-07-29' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (58, N'Blanca Staig', N'bstaig1l', N'MygqEtjMtUbC', N'171.78.28.229', CAST(N'2020-02-19' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (59, N'Adriaens Kennsley', N'akennsley1m', N'CTUdBfJsy6qF', N'208.81.128.179', CAST(N'2020-07-15' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (60, N'Emlyn Bartak', N'ebartak1n', N'y3t4H1', N'130.247.20.138', CAST(N'2019-12-20' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (61, N'Victoria Willshire', N'vwillshire1o', N'VFSLc2t', N'243.230.165.161', CAST(N'2020-09-03' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (62, N'Egon Savin', N'esavin1p', N'axnJY9s', N'40.140.160.210', CAST(N'2020-01-31' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (63, N'Phillie Elsom', N'pelsom1q', N'OXzMECG', N'253.7.8.82', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (64, N'Adan Semaine', N'asemaine1r', N'MdJRkHor5SP', N'76.252.15.218', CAST(N'2019-10-05' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (65, N'Constantino Northrop', N'cnorthrop1s', N'UIwCvTA7MRS0', N'119.130.24.85', CAST(N'2019-10-12' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (66, N'Rodie Easson', N'reasson1t', N'3J0jgg9RWlXs', N'212.248.119.232', CAST(N'2020-08-14' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (67, N'Alida Boleyn', N'aboleyn1u', N'3q2mQdDRmtr', N'181.14.56.184', CAST(N'2020-05-26' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (68, N'Hill Scholfield', N'hscholfield1v', N'1Pbs3K6qXYB', N'15.7.205.224', CAST(N'2020-02-23' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (69, N'Cordell Cowpe', N'ccowpe1w', N'VHr417Ft0', N'237.236.173.63', CAST(N'2020-06-17' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (70, N'Alexandro Eldon', N'aeldon1x', N'rrywOQRmFKyh', N'4.174.11.210', CAST(N'2019-12-04' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (71, N'Kayle Collin', N'kcollin1y', N'Q0ZV21vew0', N'52.19.142.168', CAST(N'2020-06-30' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (72, N'Inesita Larkins', N'ilarkins1z', N'DEFNpHtU', N'3.26.42.188', CAST(N'2019-12-05' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (73, N'Waylin Lound', N'wlound20', N'a2G4Ihh2o', N'31.243.68.215', CAST(N'2020-01-26' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (74, N'Mechelle Gillogley', N'mgillogley21', N'EjUHfCUFqF', N'79.38.53.53', CAST(N'2020-05-01' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (75, N'Donal Muccino', N'dmuccino22', N'E4okVgx', N'109.138.101.234', CAST(N'2020-04-02' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (76, N'Joye Leadbetter', N'jleadbetter23', N'ZNsaKdgb', N'51.245.190.167', CAST(N'2020-05-02' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (77, N'Gianina Trump', N'gtrump24', N'6XXY7IS26Ci', N'11.191.37.17', CAST(N'2020-08-03' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (78, N'Read LeEstut', N'rleestut25', N'zq3C4rUR', N'119.247.100.162', CAST(N'2020-09-11' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (79, N'Jill Anscott', N'janscott26', N'5maCRrCZLu', N'104.85.178.46', CAST(N'2020-04-28' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (80, N'Bud Douch', N'bdouch27', N'KAkwrli', N'72.132.101.188', CAST(N'2020-02-06' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (81, N'Cicily Ossenna', N'cossenna28', N'vfKJkCeohOzZ', N'230.85.180.186', CAST(N'2020-01-06' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (82, N'Hew Izzat', N'hizzat29', N'Uifdtu', N'143.246.125.169', CAST(N'2020-01-20' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (83, N'Eddie Gimeno', N'egimeno2a', N'oF1hbmKlZ', N'60.57.115.125', CAST(N'2020-03-18' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (84, N'Sybyl Fierro', N'sfierro2b', N'VjUrQ2', N'250.233.247.215', CAST(N'2020-01-22' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (85, N'Nicol Troup', N'ntroup2c', N'KmDDYf1Pu', N'121.7.142.165', CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (86, N'Bondy Pattenden', N'bpattenden2d', N'IOUkHpOn', N'45.121.26.90', CAST(N'2020-06-15' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (87, N'Angus Cockman', N'acockman2e', N'fDKhK7OK', N'167.9.255.77', CAST(N'2020-01-06' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (88, N'Mord Hanscome', N'mhanscome2f', N'xBHzpa7eP0u', N'121.181.10.230', CAST(N'2020-07-10' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (89, N'Susy Leblanc', N'sleblanc2g', N'T2et1U5M', N'118.164.120.202', CAST(N'2020-06-16' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (90, N'Gerard Ciccoloi', N'gciccoloi2h', N'w4dZ3hxiCiAg', N'71.235.27.27', CAST(N'2020-02-03' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (91, N'Seamus Sayburn', N'ssayburn2i', N'1hTM7EVKaS', N'75.194.92.114', CAST(N'2020-01-24' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (92, N'Washington Gentiry', N'wgentiry2j', N'z2X9UH5', N'188.49.78.185', CAST(N'2020-04-10' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (93, N'Rebekkah Westall', N'rwestall2k', N'xLgunbO9x6', N'212.150.81.93', CAST(N'2020-02-02' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (94, N'Court Kulic', N'ckulic2l', N'FLHYRN', N'154.121.193.131', CAST(N'2020-06-26' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (95, N'Lorilee Roux', N'lroux2m', N'98cCxHeeK31', N'229.187.60.106', CAST(N'2020-06-12' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (96, N'Modestine Rolinson', N'mrolinson2n', N'faGzyW8hEca', N'9.203.185.188', CAST(N'2019-10-30' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (97, N'Shelbi Ellgood', N'sellgood2o', N'3do5MME', N'199.226.26.7', CAST(N'2020-08-31' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (98, N'Barbabra Retchless', N'bretchless2p', N'WraGihh', N'86.66.23.203', CAST(N'2019-11-09' AS Date))
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (99, N'Robinetta Jerzak', N'rjerzak2q', N'hAp8jki', N'205.158.144.210', CAST(N'2019-12-11' AS Date))
GO
INSERT [dbo].[Users] ([idUS], [Name], [Login], [password], [ip], [lastenter]) VALUES (100, N'Vance Boots', N'vboots2r', N'bgJfSDEVEQm6', N'91.73.40.29', CAST(N'2020-09-07' AS Date))
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[cooperati]  WITH CHECK ADD  CONSTRAINT [FK_cooperati_Analyzator] FOREIGN KEY([Analyzator])
REFERENCES [dbo].[Analyzator] ([Analyzator])
GO
ALTER TABLE [dbo].[cooperati] CHECK CONSTRAINT [FK_cooperati_Analyzator]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_cooperati] FOREIGN KEY([idCOP])
REFERENCES [dbo].[cooperati] ([idCOP])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_cooperati]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Services] FOREIGN KEY([Code])
REFERENCES [dbo].[Services] ([Code])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Services]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([idUS])
REFERENCES [dbo].[Users] ([idUS])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
USE [master]
GO
ALTER DATABASE [44П-2022-УП-Ширшова] SET  READ_WRITE 
GO
