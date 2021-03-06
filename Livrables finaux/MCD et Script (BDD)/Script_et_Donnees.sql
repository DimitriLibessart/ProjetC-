USE [master]
GO
/****** Object:  Database [C#_Project]    Script Date: 12/12/2018 16:15:13 ******/
CREATE DATABASE [C#_Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'C#_Project', FILENAME = N'D:\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\C#_Project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'C#_Project_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\C#_Project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [C#_Project] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [C#_Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [C#_Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [C#_Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [C#_Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [C#_Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [C#_Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [C#_Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [C#_Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [C#_Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [C#_Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [C#_Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [C#_Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [C#_Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [C#_Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [C#_Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [C#_Project] SET  ENABLE_BROKER 
GO
ALTER DATABASE [C#_Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [C#_Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [C#_Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [C#_Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [C#_Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [C#_Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [C#_Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [C#_Project] SET RECOVERY FULL 
GO
ALTER DATABASE [C#_Project] SET  MULTI_USER 
GO
ALTER DATABASE [C#_Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [C#_Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [C#_Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [C#_Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [C#_Project] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'C#_Project', N'ON'
GO
ALTER DATABASE [C#_Project] SET QUERY_STORE = OFF
GO
USE [C#_Project]
GO
/****** Object:  Table [dbo].[Command]    Script Date: 12/12/2018 16:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Command](
	[ID] [int] NOT NULL,
	[ID_Customer] [int] NOT NULL,
 CONSTRAINT [Command_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[ID_Customer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 12/12/2018 16:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Waiting] [int] NOT NULL,
	[Reservation] [varchar](50) NOT NULL,
	[ID_RoundTable] [int] NULL,
 CONSTRAINT [Customer_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredient]    Script Date: 12/12/2018 16:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredient](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Stock] [int] NOT NULL,
	[Season] [varchar](255) NOT NULL,
	[Refresh] [varchar](255) NOT NULL,
 CONSTRAINT [Ingredient_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipe]    Script Date: 12/12/2018 16:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipe](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Category] [varchar](255) NOT NULL,
	[Price] [int] NOT NULL,
	[Menu] [varchar](255) NOT NULL,
 CONSTRAINT [Recipe_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoundTable]    Script Date: 12/12/2018 16:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoundTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Available] [varchar](11) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [RoundTable_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Step]    Script Date: 12/12/2018 16:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Step](
	[ID] [int] NOT NULL,
	[ID_Ingredient] [int] NOT NULL,
	[ID_Recipe] [int] NOT NULL,
	[Time] [int] NOT NULL,
 CONSTRAINT [Step_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[ID_Ingredient] ASC,
	[ID_Recipe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utensil]    Script Date: 12/12/2018 16:15:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utensil](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Wash_Duration] [int] NOT NULL,
	[Status] [varchar](255) NOT NULL,
	[Category] [varchar](255) NOT NULL,
 CONSTRAINT [Utensil_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (1, N'Appril Maximilien', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (2, N'Arnol Maxence', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (3, N'Boogaerts Paul', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (4, N'Caron Alexis', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (5, N'Declety Thomas', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (6, N'Descamps Anthony', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (7, N'Evrard Corentin', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (8, N'Fombasso Theo', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (9, N'Fritsch Florian', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (10, N'Gandossi Corentin', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (11, N'Geeraert Pierre', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (12, N'Hollebecq Maxime', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (13, N'Hoyez Alexis', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (14, N'Hubert Martin', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (15, N'Juncker Julien', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (16, N'Klein Aurelien', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (17, N'Kruger Maxence', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (18, N'Poly Thibaut', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (19, N'Rigaud Arnaud', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (20, N'Lecompte Alexandre', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (21, N'Leleux Charles', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (22, N'Libessart Dimitri', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (23, N'Merat Pierre Louis', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (24, N'Naessens Valentin', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (25, N'Sabino Dominique', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (26, N'Thibault Benjamin', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (27, N'Vancamp Rémy', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (28, N'Vanengelandt Théo', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (29, N'Moreau Marc', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (30, N'Croteau Desire', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (31, N'Huppe Musette', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (32, N'Berger Eulalie', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (33, N'Rene Yvon', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (34, N'Doucet Alexandrin', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (35, N'Compagnon Thibaut', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (36, N'Achin Lirienne', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (37, N'Booth Georges', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (38, N'Dupuis Paul', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (39, N'Benoit Paul Yves', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (40, N'Lopez Charles', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (41, N'Gregoire Theodore', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (42, N'Fontaine Emile', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (43, N'Blanchard Bertrand', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (44, N'Masson Sophie', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (45, N'Devaux Laure', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (46, N'Julien Amelie', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (47, N'Barthelemy Françoise', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (48, N'Michel Camille', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (49, N'Dumas Charlotte', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (50, N'Masse Emmanuelle', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (51, N'Blot Timothee', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (52, N'Ruiz Auguste Laurent', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (53, N'Fouquet Marc', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (54, N'Joseph Hugues', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (55, N'Dupuis Isabelle', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (56, N'Roche Pierre', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (57, N'Da Silva Manon', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (58, N'Renard Claude', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (59, N'Delattre Amelie', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (60, N'Ngyuen Augustin', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (61, N'Buisson Suzanne', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (62, N'Lebrun Camille', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (63, N'Besnard Clement', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (64, N'Adrienne Bernadette', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (65, N'Lefebvre Marianne', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (66, N'Renaud Gregoire', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (67, N'Remy Martin', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (68, N'Guillot Manon', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (69, N'Bouvet Jerome', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (70, N'Riou Monique', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (71, N'Imbert Andre', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (72, N'Albert Vincent', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (73, N'Boulay Guy', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (74, N'Petit Jean', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (75, N'Gall Louis', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (76, N'Coulon Suzan', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (77, N'Deschamps Victor', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (78, N'Mallet Peneloppe', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (79, N'Aubert Emmanuelle', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (80, N'Richard Gilles', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (81, N'Guichard Pierre', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (82, N'Torres Anastasie', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (83, N'Riviere Frederique', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (84, N'Merle Theophile', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (85, N'Labbe Françoise', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (86, N'Schmitt William', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (87, N'Navarro Margarett', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (88, N'Gilles Remy', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (89, N'Hubert Joseph', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (90, N'Lecomte Capucine', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (91, N'Besnard Benoit', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (92, N'Mallet Hugues', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (93, N'Lebreton Marguerite', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (94, N'Blanchet Marc', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (95, N'Collin Lucy', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (96, N'Costa Yves', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (97, N'Laurent Camille', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (98, N'Valentin Margot', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (99, N'Hoarau Marinne', 60, N'0', NULL)
GO
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (100, N'Richard Gilbert', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (101, N'Pages Marianne', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (102, N'Legendre Capucine', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (103, N'Margaret Michaud', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (104, N'Jourdan Constance', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (105, N'Garnier Christophe', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (106, N'Fernandez Edouard', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (107, N'Salmon Pierre', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (108, N'Tessier Christine', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (109, N'Diallo Catherine', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (110, N'Duhamel Susanne', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (111, N'Gay Julien', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (112, N'Techer Adele', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (113, N'Maurice Frederique', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (114, N'Lefevre Clemence', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (115, N'Leroy Margaret', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (116, N'Guerin Alice', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (117, N'Neveu Elise', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (118, N'Verdier Paul', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (119, N'Valette Martine', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (120, N'Remy Madeleine', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (121, N'Lecomte Michelle', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (122, N'Rodriguez Nathalie', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (123, N'Munoz Nicole', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (124, N'Lefevre Amelie', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (125, N'Mary Claudine', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (126, N'Dijoux Bernard', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (127, N'Perez Audrey', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (128, N'Lombard Benoit', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (129, N'Mahe Robert', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (130, N'Chauvet Noel', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (131, N'Maillot Penelope', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (132, N'Marques Michelle', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (133, N'Paris Jeanninne', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (134, N'Lopez Paul', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (135, N'Lacroix Marc', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (136, N'Meyer Daniel', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (137, N'Olivier Sabine', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (138, N'Boulanger Alexandria', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (139, N'Lenoir Andree', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (140, N'Alves Suzanne', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (141, N'Bonneau Emile', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (142, N'Bodin Joseph', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (143, N'Camus Augustin', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (144, N'Girard Geneviève', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (145, N'Denis Bernadette', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (146, N'Fournier Jean', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (147, N'Gonzales Julie', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (148, N'Riou Françoise', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (149, N'Bonneau Nicolas', 30, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (150, N'Oliveira Odette', 90, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (151, N'Lemonnier Antoine', 60, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (152, N'Leconte Roger', 30, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (153, N'Benard Arnaude', 90, N'0', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (154, N'Lebon Olivie', 60, N'1', NULL)
INSERT [dbo].[Customer] ([ID], [Name], [Waiting], [Reservation], [ID_RoundTable]) VALUES (155, N'Merle Edouard', 30, N'0', NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Ingredient] ON 

INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (1, N'Lieu', 100, N'Hiver', N'2')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (2, N'Andouille', 100, N'Printemps', N'3')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (3, N'Pomme de Terre', 100, N'Ete', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (4, N'Citron', 100, N'Automne', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (5, N'Lait', 100, N'Hiver', N'5')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (6, N'Beurre', 100, N'Printemps', N'5')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (7, N'Vin Blanc', 100, N'Ete', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (8, N'Oeuf', 100, N'Automne', N'5')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (9, N'Romarin', 100, N'Hiver', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (10, N'Crevette', 100, N'Printemps', N'2')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (11, N'Saint-Jacques', 100, N'Ete', N'3')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (12, N'Orange', 100, N'Automne', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (13, N'Tomate', 100, N'Hiver', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (14, N'Carotte', 100, N'Printemps', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (15, N'Cacahuete', 100, N'Ete', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (16, N'Huile d''olive', 100, N'Automne', N'8')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (17, N'Jus d''orange', 100, N'Hiver', N'8')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (18, N'Miel', 100, N'Printemps', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (19, N'Boeuf', 100, N'Ete', N'3')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (20, N'Oignon', 100, N'Automne', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (21, N'Echalotte', 100, N'Hiver', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (22, N'Gingembre', 100, N'Printemps', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (23, N'Basilic', 100, N'Ete', N'8')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (24, N'Salade', 100, N'Automne', N'8')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (25, N'Pate feuilletee', 100, N'Hiver', N'5')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (26, N'Fromage de chevre', 100, N'Printemps', N'5')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (27, N'Myrtille', 100, N'Ete', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (28, N'Pintade', 100, N'Automne', N'3')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (29, N'Creme liquide', 100, N'Hiver', N'5')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (30, N'Pain', 100, N'Printemps', N'5')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (31, N'Homard', 100, N'Ete', N'2')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (32, N'Concentre de tomate', 100, N'Automne', N'5')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (33, N'Bouquet garni', 100, N'Hiver', N'5')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (34, N'Betterave', 100, N'Printemps', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (35, N'Hareng', 100, N'Ete', N'2')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (36, N'Choux de bruxelles', 100, N'Automne', N'8')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (37, N'Pain de mie', 100, N'Hiver', N'5')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (38, N'Raifort', 100, N'Printemps', N'5')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (39, N'Vinaigre blanc', 100, N'Ete', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (40, N'Riz', 100, N'Automne', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (41, N'Mascarpone', 100, N'Hiver', N'5')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (42, N'Parmesan', 100, N'Printemps', N'5')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (43, N'Ciboulette', 100, N'Ete', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (44, N'Poulet', 100, N'Automne', N'4')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (45, N'Foie gras', 100, N'Hiver', N'5')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (46, N'Celeri rave', 100, N'Printemps', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (47, N'Thym', 100, N'Ete', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (48, N'Ail', 100, N'Automne', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (49, N'Champignon', 100, N'Hiver', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (50, N'Farine', 100, N'Printemps', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (51, N'Persil', 100, N'Ete', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (52, N'Pomme', 100, N'Automne', N'8')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (53, N'Magret de canard', 100, N'Hiver', N'3')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (55, N'Saumon Fume', 100, N'Printemps', N'5')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (56, N'Potiron', 100, N'Ete', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (57, N'Avocat', 100, N'Automne', N'8')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (58, N'Truite', 100, N'Hiver', N'2')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (59, N'Fromage frais', 100, N'Printemps', N'5')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (60, N'Aubergine', 100, N'Ete', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (61, N'Gruyere', 100, N'Automne', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (62, N'Coppa', 100, N'Hiver', N'5')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (63, N'Chocolat', 100, N'Printemps', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (64, N'Yaourt', 100, N'Ete', N'8')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (65, N'Framboise', 100, N'Automne', N'8')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (66, N'Confiture', 100, N'Hiver', N'8')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (67, N'Noix', 100, N'Printemps', N'10')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (68, N'Poire', 100, N'Ete', N'8')
INSERT [dbo].[Ingredient] ([ID], [Name], [Stock], [Season], [Refresh]) VALUES (69, N'Fraises', 100, N'Automne', N'5')
SET IDENTITY_INSERT [dbo].[Ingredient] OFF
SET IDENTITY_INSERT [dbo].[Recipe] ON 

INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (1, N'Veloute de champignons', N'Entree', 12, N'Menu1')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (2, N'Tatin de magret de canard au foie gras', N'Entree', 14, N'Menu2')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (3, N'Veloute de carottes au cumin', N'Entree', 13, N'Menu3')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (4, N'Roulade de saumon fume aux asperges, sauce crevettes et chevre frais', N'Entree', 18, N'Menu4')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (5, N'Veloute de potiron et carotte', N'Entree', 11, N'Menu5')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (6, N'Verrine avocat-truite fumee', N'Entree', 15, N'Menu1')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (7, N'Croque monsieur d''aubergine', N'Entree', 10, N'Menu2')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (8, N'Tarte au saumon fume', N'Entree', 16, N'Menu3')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (9, N'Poelee d''asperges vertes et coppa', N'Entree', 14, N'Menu4')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (10, N'Crevettes poelees a la coriandre', N'Entree', 17, N'Menu5')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (11, N'Lieu jaune et andouille de guemene, puree citronnee', N'Plat', 24, N'Menu1')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (12, N'Brochette de crevette, saint jacques orange et miel', N'Plat', 26, N'Menu2')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (13, N'Boeuf saute au piment d''espelette', N'Plat', 25, N'Menu3')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (14, N'Feuillete au chevre et myrtilles', N'Plat', 21, N'Menu4')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (15, N'Pain perdu caramelise a l''armagnac', N'Plat', 23, N'Menu5')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (16, N'Supreme de pintade au caramel au beurre sale', N'Plat', 26, N'Menu1')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (17, N'Souffle de la mer', N'Plat', 25, N'Menu2')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (18, N'Saint jacques en croute de raifort, carpaccio de betterave et puree de hareng', N'Plat', 32, N'Menu3')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (19, N'Risotto aux noix', N'Plat', 24, N'Menu4')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (20, N'Volaille en Crapaudine', N'Plat', 29, N'Menu5')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (21, N'Cake aux pepites de chocolat', N'Dessert', 9, N'Menu1')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (22, N'Verrine de framboises', N'Dessert', 11, N'Menu2')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (23, N'Gateau roule a la confiture', N'Dessert', 7, N'Menu3')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (24, N'Brownies', N'Dessert', 8, N'Menu4')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (25, N'Creme au chocolat', N'Dessert', 10, N'Menu5')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (26, N'Tiramisu au cafe', N'Dessert', 10, N'Menu1')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (27, N'Tarte poire chocolat', N'Dessert', 9, N'Menu2')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (28, N'Creme brulee', N'Dessert', 6, N'Menu3')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (29, N'Vacherin fraise et coriandre', N'Dessert', 12, N'Menu4')
INSERT [dbo].[Recipe] ([ID], [Name], [Category], [Price], [Menu]) VALUES (30, N'Pavlova aux fraises, creme citron, chantilly', N'Dessert', 13, N'Menu5')
SET IDENTITY_INSERT [dbo].[Recipe] OFF
SET IDENTITY_INSERT [dbo].[RoundTable] ON 

INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (1, N'0', 2)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (2, N'0', 2)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (3, N'0', 2)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (4, N'0', 2)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (5, N'0', 2)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (6, N'0', 2)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (7, N'0', 2)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (8, N'0', 2)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (9, N'0', 2)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (10, N'0', 2)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (11, N'0', 4)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (12, N'0', 4)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (13, N'0', 4)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (14, N'1', 4)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (15, N'1', 4)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (16, N'1', 4)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (17, N'1', 4)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (18, N'1', 4)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (19, N'1', 4)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (20, N'0', 4)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (21, N'1', 6)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (22, N'0', 6)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (23, N'0', 6)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (24, N'0', 6)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (25, N'0', 6)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (26, N'0', 8)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (27, N'0', 8)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (28, N'0', 8)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (29, N'0', 8)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (30, N'0', 8)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (31, N'1', 10)
INSERT [dbo].[RoundTable] ([ID], [Available], [Quantity]) VALUES (32, N'0', 10)
SET IDENTITY_INSERT [dbo].[RoundTable] OFF
SET IDENTITY_INSERT [dbo].[Utensil] ON 

INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (1, N'Feu de cuisson', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (2, N'Feu de cuisson', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (3, N'Feu de cuisson', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (4, N'Feu de cuisson', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (5, N'Feu de cuisson', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (6, N'Casserole', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (7, N'Casserole', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (8, N'Casserole', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (9, N'Casserole', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (10, N'Casserole', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (11, N'Casserole', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (12, N'Casserole', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (13, N'Casserole', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (14, N'Casserole', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (15, N'Casserole', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (16, N'Poele', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (17, N'Poele', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (18, N'Poele', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (19, N'Poele', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (20, N'Poele', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (21, N'Poele', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (22, N'Poele', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (23, N'Poele', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (24, N'Poele', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (25, N'Poele', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (26, N'Four', 0, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (27, N'Cuillere en bois', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (28, N'Cuillere en bois', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (29, N'Cuillere en bois', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (30, N'Cuillere en bois', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (31, N'Cuillere en bois', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (32, N'Cuillere en bois', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (33, N'Cuillere en bois', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (34, N'Cuillere en bois', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (35, N'Cuillere en bois', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (36, N'Cuillere en bois', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (37, N'Mixeur', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (38, N'Bol a salade', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (39, N'Bol a salade', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (40, N'Bol a salade', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (41, N'Bol a salade', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (42, N'Bol a salade', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (43, N'Autocuiseur', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (44, N'Autocuiseur', 2, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (45, N'Presse-Agrume', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (46, N'Tamis', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (47, N'Entonnoir', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (48, N'Couteau de cuisine', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (49, N'Couteau de cuisine', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (50, N'Couteau de cuisine', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (51, N'Couteau de cuisine', 1, N'Disponible', N'Utensil')
INSERT [dbo].[Utensil] ([ID], [Name], [Wash_Duration], [Status], [Category]) VALUES (52, N'Couteau de cuisine', 1, N'Disponible', N'Utensil')
SET IDENTITY_INSERT [dbo].[Utensil] OFF
ALTER TABLE [dbo].[Command]  WITH CHECK ADD  CONSTRAINT [Command_Customer0_FK] FOREIGN KEY([ID_Customer])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Command] CHECK CONSTRAINT [Command_Customer0_FK]
GO
ALTER TABLE [dbo].[Command]  WITH CHECK ADD  CONSTRAINT [Command_Recipe_FK] FOREIGN KEY([ID])
REFERENCES [dbo].[Recipe] ([ID])
GO
ALTER TABLE [dbo].[Command] CHECK CONSTRAINT [Command_Recipe_FK]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [Customer_RoundTable_FK] FOREIGN KEY([ID_RoundTable])
REFERENCES [dbo].[RoundTable] ([ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [Customer_RoundTable_FK]
GO
ALTER TABLE [dbo].[Step]  WITH CHECK ADD  CONSTRAINT [Step_Ingredient0_FK] FOREIGN KEY([ID_Ingredient])
REFERENCES [dbo].[Ingredient] ([ID])
GO
ALTER TABLE [dbo].[Step] CHECK CONSTRAINT [Step_Ingredient0_FK]
GO
ALTER TABLE [dbo].[Step]  WITH CHECK ADD  CONSTRAINT [Step_Recipe1_FK] FOREIGN KEY([ID_Recipe])
REFERENCES [dbo].[Recipe] ([ID])
GO
ALTER TABLE [dbo].[Step] CHECK CONSTRAINT [Step_Recipe1_FK]
GO
ALTER TABLE [dbo].[Step]  WITH CHECK ADD  CONSTRAINT [Step_Utensil_FK] FOREIGN KEY([ID])
REFERENCES [dbo].[Utensil] ([ID])
GO
ALTER TABLE [dbo].[Step] CHECK CONSTRAINT [Step_Utensil_FK]
GO
USE [master]
GO
ALTER DATABASE [C#_Project] SET  READ_WRITE 
GO
