USE [master]
GO
/****** Object:  Database [People]    Script Date: 11.10.2024 14:47:12 ******/
CREATE DATABASE [People]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'People', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\People.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'People_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\People_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [People] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [People].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [People] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [People] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [People] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [People] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [People] SET ARITHABORT OFF 
GO
ALTER DATABASE [People] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [People] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [People] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [People] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [People] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [People] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [People] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [People] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [People] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [People] SET  DISABLE_BROKER 
GO
ALTER DATABASE [People] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [People] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [People] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [People] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [People] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [People] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [People] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [People] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [People] SET  MULTI_USER 
GO
ALTER DATABASE [People] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [People] SET DB_CHAINING OFF 
GO
ALTER DATABASE [People] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [People] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [People] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [People] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [People] SET QUERY_STORE = OFF
GO
USE [People]
GO
/****** Object:  Table [dbo].[gender]    Script Date: 11.10.2024 14:47:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gender](
	[id] [int] NOT NULL,
	[pol] [nchar](10) NULL,
 CONSTRAINT [PK_gender] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job]    Script Date: 11.10.2024 14:47:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job](
	[id] [int] NOT NULL,
	[work] [nchar](40) NULL,
 CONSTRAINT [PK_job] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11.10.2024 14:47:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[IdWork] [int] NULL,
	[Name] [nchar](50) NULL,
	[Email] [nchar](100) NULL,
	[Login] [nchar](30) NULL,
	[Password] [nchar](30) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[SeriesDocument] [int] NULL,
	[NumberDocument] [int] NULL,
	[Birthday] [date] NULL,
	[LastSeans] [decimal](18, 0) NULL,
	[TypeSeans] [int] NULL,
	[IdGender] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[gender] ([id], [pol]) VALUES (1, N'жен       ')
INSERT [dbo].[gender] ([id], [pol]) VALUES (2, N'муж       ')
GO
INSERT [dbo].[job] ([id], [work]) VALUES (1, N'Администратор                           ')
INSERT [dbo].[job] ([id], [work]) VALUES (2, N'Исполнитель                             ')
INSERT [dbo].[job] ([id], [work]) VALUES (3, N'Менеджер                                ')
GO
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (1, 3, N'Акимов Ян Алексеевич
                            ', N'gohufreilagrau-3818@yopmail.com                                                                     ', N'akimovya                      ', N'bn069Caj                      ', N'+7.781) 785@5837                        ', 2367, 558134, CAST(N'1993-07-03' AS Date), CAST(1675231191000 AS Decimal(18, 0)), 1, 2)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (2, 2, N'Гончарова Ульяна Львовна
                        ', N'xawugosune-1385@yopmail.com                                                                         ', N'goncharovaul                  ', N'pW4qZhL!                      ', N'(230) 906-8815                          ', 7101, 669343, CAST(N'1975-06-22' AS Date), CAST(1676296748000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (3, 1, N'Анохина Елизавета Матвеевна
                     ', N'leuttevitrafo1998@mail.ru                                                                           ', N'anochinaem                    ', N'y6UNmaJg                      ', N'(555 444/8316                           ', 3455, 719630, CAST(N'1991-08-16' AS Date), CAST(1676051882000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (4, 3, N'Николаев Илья Владиславович
                     ', N'frapreubrulloba1141@yandex.ru                                                                       ', N'nickolaeviv                   ', N'ebOt@4y$                      ', N'(392 682/4442                           ', 2377, 871623, CAST(N'1970-12-22' AS Date), CAST(1675395308000 AS Decimal(18, 0)), 1, 2)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (5, 2, N'Уткин Дмитрий Платонович
                        ', N'zapramaxesu-7741@yopmail.com                                                                        ', N'utkindp                       ', N'zQt8g@GH                      ', N'(836 429/0386                           ', 8755, 921148, CAST(N'1999-05-04' AS Date), CAST(1676496955000 AS Decimal(18, 0)), 0, 2)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (6, 2, N'Куликова Стефания Никитична
                     ', N'rouzecroummegre-3899@yopmail.com                                                                    ', N'kulikovasn                    ', N'TCmE7Jon                      ', N'(283 945/3092                           ', 4355, 104594, CAST(N'1994-12-06' AS Date), CAST(1676146943000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (7, 2, N'Волков Егор Матвеевич
                           ', N'ziyeuddocrabri-4748@@yopmail.com                                                                    ', N'volkovem                      ', N'pbgO3Vv5                      ', N'(621 359/3669                           ', 2791, 114390, CAST(N'1995-03-28' AS Date), CAST(1676485346000 AS Decimal(18, 0)), 1, 2)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (8, 1, N'Соколова Софья Георгиевна
                       ', N'ketameissoinnei-1951@yopmail.com                                                                    ', N'sokolovasg                    ', N'lITaH?Bs                      ', N'(440 561/0314                           ', 5582, 126286, CAST(N'1977-03-27' AS Date), CAST(1676502184000 AS Decimal(18, 0)), 0, 1)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (9, 3, N'Голубева Полина Андреевна
                       ', N'yipraubaponou-5849@yopmail.com                                                                      ', N'golubevapa                    ', N's|ke*p@~                      ', N'(331 918/2434                           ', 2978, 133653, CAST(N'1975-04-12' AS Date), CAST(1675576520000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (10, 3, N'Вишневская Мария Андреевна
                      ', N'crapedocouca-3572@yopmail.com                                                                       ', N'vishnevskayama                ', N'OCaywHJZ                      ', N'+7.493) 219@3942                        ', 7512, 141956, CAST(N'1975-12-23' AS Date), NULL, 1, 1)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (11, 3, N'Васильева Арина Данииловна
                      ', N'ceigoixakaunni-9227@yopmail.com                                                                     ', N'vasilevad                     ', N'DAWuV%#u                      ', N'+7.407) 485@5030                        ', 5046, 158433, CAST(N'2000-01-22' AS Date), NULL, 0, 1)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (12, 3, N'Павлов Дмитрий Максимович
                       ', N'yeimmeiwauzomo-7054@yopmail.com                                                                     ', N'pavlovdm                      ', N'ptoED%zE                      ', N'+7.919) 478@2497                        ', 2460, 169505, CAST(N'1983-10-03' AS Date), CAST(1675538804000 AS Decimal(18, 0)), 0, 2)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (13, 2, N'Горбунова Мирослава Артуровна
                   ', N'pixil59@gmail.com                                                                                   ', N'gorbunovama                   ', N'ZFR2~Zl*                      ', N'+7.482) 802@9580                        ', 3412, 174593, CAST(N'1998-03-03' AS Date), CAST(1676525424000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (14, 3, N'Демина София Романовна
                          ', N'deummecillummu-4992@mail.ru                                                                         ', N'deminasr                      ', N'D%DVKyDN
                    ', N'7.455) 944@6449
', 4950, 183034, CAST(N'1993-06-08' AS Date), CAST(1676072785000 AS Decimal(18, 0)), 0, 1)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (15, 2, N'Петрова Алина Робертовна
                        ', N'vilagajaunne-5170@yandex.ru                                                                         ', N'petrovaar                     ', N'z7ZE?8N5                      ', N'+7.710) 388@2563                        ', 5829, 219464, CAST(N'1980-09-23' AS Date), CAST(1675274216000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (16, 2, N'Плотников Григорий Александрович
                ', N'frusubroppotou656@yandex.ru                                                                         ', N'plotnikovga                   ', N'yh+S4@yc                      ', N'+7.759) 452@3846                        ', 6443, 208059, CAST(N'1991-03-13' AS Date), CAST(1675883156000 AS Decimal(18, 0)), 1, 2)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (17, 2, N'Чернов Алексей Егорович
                         ', N'vhopkins@lewis-mullen.com                                                                           ', N'prochorovaet                  ', N'wLF186dB                      ', N'+7.687) 801@1332                        ', 7079, 213265, CAST(N'1998-04-14' AS Date), NULL, NULL, 1)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (18, 2, N'Горбунов Степан Артёмович
                       ', N'nlewis@yahoo.com                                                                                    ', N'chernovae                     ', N'Sjkr*1zV                      ', N'(425) 783-2253                          ', 8207, 522702, CAST(N'1980-04-16' AS Date), CAST(1675609542000 AS Decimal(18, 0)), 1, 2)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (19, 3, N'Кондрашова Арина Ивановна
                       ', N'garciadavid@mckinney-mcbride.com                                                                    ', N'gorbunovsa                    ', N'hFhK%$JI                      ', N'(889) 449-4391                          ', 9307, 232158, CAST(N'1993-07-23' AS Date), CAST(1676322794000 AS Decimal(18, 0)), 1, 2)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (20, 2, N'Гуляев Тимофей Даниилович
                       ', N'loudittoimmolau1900@gmail.com                                                                       ', N'ryabininasa                   ', N'&yw1da4K                      ', N'(825) 301-8250                          ', 1357, 242839, CAST(N'1990-06-01' AS Date), NULL, NULL, 1)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (21, 2, N'Козлова
                                         ', N'hittuprofassa4984@mail.com                                                                          ', N'kozlovayd                     ', N'wCH7dl3k                      ', N'(397) 334-2086                          ', 1167, 256636, CAST(N'1987-12-21' AS Date), NULL, NULL, 1)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (22, 3, N'Лукьянова
                                       ', N'freineiciweijau888@yandex.ru                                                                        ', N'lyckyanovayo                  ', N'JadQ24D5                      ', N'(241) 570-3040                          ', 1768, 266986, CAST(N'1981-10-22' AS Date), NULL, NULL, 1)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (23, 2, N'Кондрашова
                                      ', N'jessica84@hotmail.com                                                                               ', N'kondrashovai                  ', N'YlBz$8vJ                      ', N'(713) 462-8265                          ', 1710, 427875, CAST(N'1976-12-22' AS Date), CAST(1675801821000 AS Decimal(18, 0)), 0, 1)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (24, 3, N'Быкова
                                          ', N'nokupekidda2001@gmail.com                                                                           ', N'bykovavt                      ', N'nx8Z$K98                      ', N'(854) 822-2331                          ', 1806, 289145, CAST(N'1973-06-14' AS Date), NULL, NULL, 1)
INSERT [dbo].[User] ([Id], [IdWork], [Name], [Email], [Login], [Password], [PhoneNumber], [SeriesDocument], [NumberDocument], [Birthday], [LastSeans], [TypeSeans], [IdGender]) VALUES (25, 2, N'Тимофей                                           ', N'ginaritter@schneider-buchanan.com                                                                   ', N'gylyaevtd                     ', N'lz$kp1?f                      ', N'(439) 713-6117                          ', 1587, 291249, CAST(N'1987-02-05' AS Date), CAST(44959 AS Decimal(18, 0)), 0, 2)
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_gender] FOREIGN KEY([IdGender])
REFERENCES [dbo].[gender] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_gender]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_job] FOREIGN KEY([IdWork])
REFERENCES [dbo].[job] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_job]
GO
USE [master]
GO
ALTER DATABASE [People] SET  READ_WRITE 
GO
