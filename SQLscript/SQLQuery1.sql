USE [master]
GO
/****** Object:  Database [ChimOwner]    Script Date: 6/2/2023 8:22:22 PM ******/
create DATABASE [ChimOwner]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ChimOwner', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NGUYENBAY\MSSQL\DATA\ChimOwner.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ChimOwner_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NGUYENBAY\MSSQL\DATA\ChimOwner_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ChimOwner] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChimOwner].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChimOwner] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChimOwner] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChimOwner] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChimOwner] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChimOwner] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChimOwner] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ChimOwner] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChimOwner] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChimOwner] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChimOwner] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChimOwner] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChimOwner] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChimOwner] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChimOwner] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChimOwner] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ChimOwner] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChimOwner] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChimOwner] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChimOwner] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChimOwner] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChimOwner] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChimOwner] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChimOwner] SET RECOVERY FULL 
GO
ALTER DATABASE [ChimOwner] SET  MULTI_USER 
GO
ALTER DATABASE [ChimOwner] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChimOwner] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChimOwner] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChimOwner] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ChimOwner] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ChimOwner] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ChimOwner', N'ON'
GO
ALTER DATABASE [ChimOwner] SET QUERY_STORE = ON
GO
ALTER DATABASE [ChimOwner] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ChimOwner]
GO
/****** Object:  Table [dbo].[Bird]    Script Date: 6/2/2023 8:22:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bird](
	[BID] [nchar](10) NOT NULL,
	[UID] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[age] [decimal](18, 0) NOT NULL,
	[gender] [nchar](10) NOT NULL,
	[description] [nvarchar](max) NULL,
	[color] [nchar](10) NOT NULL,
	[addDate] [datetime] NOT NULL,
	[profilePic] [image] NOT NULL,
 CONSTRAINT [PK_Bird] PRIMARY KEY CLUSTERED 
(
	[BID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[BLID] [nchar](10) NOT NULL,
	[description] [nvarchar](50) NOT NULL,
	[category] [nvarchar](50) NOT NULL,
	[uploadDate] [datetime] NOT NULL,
	[UID] [nchar] (10) NOT NULL,
	[vote] [decimal](18, 0) NOT NULL,
	[picture] [image] NOT NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[BLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClubLocation]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClubLocation](
	[CID] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[LID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Club] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CID] [nchar](10) NOT NULL,
	[BLID] [nchar](10) NOT NULL,
	[vote] [decimal](18, 0) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[date] [datetime] NOT NULL,
	[UID] [nchar](10) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldTrip]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldTrip](
	[FID] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[registrationDeadline] [datetime] NOT NULL,
	[startDate] [datetime] NOT NULL,
	[endDate] [datetime] NOT NULL,
	[LID] [nchar](10) NOT NULL,
	[status] [nchar](10) NOT NULL,
	[fee] [decimal](18, 0) NOT NULL,
	[numberOfParticipant] [decimal](18, 0) NOT NULL,
	[note] [nvarchar](MAX) NULL,
	[incharge] [nvarchar](50) NULL,
	[host] [nvarchar](50) NULL,
	[contact] [nvarchar](50) NULL,
 CONSTRAINT [PK_FieldTrip] PRIMARY KEY CLUSTERED 
(
	[FID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldTripMedia]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldTripMedia](
	[FID] [nchar](10) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[image] [image] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldTripParticipants]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldTripParticipants](
	[FID] [nchar](10) NOT NULL,
	[UID] [nchar](10) NOT NULL,
	[docNo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FieldTripParticipants] PRIMARY KEY CLUSTERED 
(
	[docNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GalleryImage]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GalleryImage](
	[description] [nvarchar](max) NOT NULL,
	[image] [image] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LID] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[coordination] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Magazine]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Magazine](
	[MaID] [nchar](10) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[URL] [nvarchar](100) NOT NULL,
	[uploadDate] [date] NOT NULL,
 CONSTRAINT [PK_Magazine] PRIMARY KEY CLUSTERED 
(
	[MaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meeting]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meeting](
	[MeID] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[registrationDeadline] [datetime] NOT NULL,
	[status] [nchar](10) NOT NULL,
	[LID] [nchar](10) NOT NULL,
	[startDate] [datetime] NOT NULL,
	[endDate] [datetime] NOT NULL,
	[numberOfParticipant] [decimal](18, 0) NOT NULL,
	[note] [nvarchar](MAX) NULL,
	[incharge] [nvarchar](50) NULL,
	[host] [nvarchar](50) NULL,
	[contact] [nvarchar](50) NULL,
 CONSTRAINT [PK_Meeting] PRIMARY KEY CLUSTERED 
(
	[MeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeetingMedia]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeetingMedia](
	[MeID] [nchar](10) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[image] [image] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeetingParticipants]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeetingParticipants](
	[MeID] [nchar](10) NOT NULL,
	[UID] [nchar](10) NOT NULL,
	[docNo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MeetingParticipants] PRIMARY KEY CLUSTERED 
(
	[docNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Membership]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Membership](
	[MID] [nchar](10) NOT NULL,
	[name] [nchar](20) NOT NULL,
	[value] [decimal](18, 0) NOT NULL,
	[duration] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_Membership] PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NID] [nchar](10) NOT NULL,
	[UID] [nchar](10) NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[category] [nvarchar](50) NOT NULL,
	[newsContent] [nvarchar](max) NOT NULL,
	[uploadDate] [datetime] NOT NULL,
	[status] [nchar] (20) NOT NULL,
	[picture] [image] NOT NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[NID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tournament]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tournament](
	[TID] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[registrationDeadline] [datetime] NOT NULL,
	[LID] [nchar](10) NOT NULL,
	[status] [nchar](10) NOT NULL,
	[startDate] [datetime] NOT NULL,
	[endDate] [datetime] NOT NULL,
	[fee] [decimal](18, 0) NOT NULL,
	[numberOfParticipant] [decimal](18, 0) NOT NULL,
	[totalPrize] [decimal](18, 0) NOT NULL,
	[note] [nvarchar](MAX) NULL,
	[incharge] [nvarchar](50) NULL,
	[host] [nvarchar](50) NULL,
	[contact] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tournament] PRIMARY KEY CLUSTERED 
(
	[TID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TournamentMedia]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TournamentMedia](
	[TID] [nchar](10) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[image] [image] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tparticipation]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tparticipation](
	[TID] [nchar](10) NOT NULL,
	[BID] [nchar](10) NOT NULL,
	[docNo] [nvarchar](50) NOT NULL,
	[achievement] [nvarchar](50) NULL,
	[score] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Tparticipation] PRIMARY KEY CLUSTERED 
(
	[docNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[PID] [nchar](10) NOT NULL,
	[UID] [nchar](10) NOT NULL,
	[value] [decimal](18, 0) NOT NULL,
	[paymentDate] [datetime] NOT NULL,
	[transactionType] [nchar](10) NOT NULL,
	[docNo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/2/2023 8:22:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UID] [nchar](10) NOT NULL,
	[userName] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[fullName] [nvarchar](50) NOT NULL,
	[gender] [nchar](10) NULL,
	[phone] [nchar](10) NULL,
	[email] [nvarchar](50) NULL,
	[role] [nchar](10) NOT NULL,
	[status] [nvarchar](50) NOT NULL,
	[signupDate] [datetime] NOT NULL,
	[expiredDate] [datetime] NOT NULL,
	[MID] [nchar](10) NOT NULL,
	[profilePicture] [image] NOT NULL,



 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bird]  WITH CHECK ADD  CONSTRAINT [FK_Bird_User] FOREIGN KEY([UID])
REFERENCES [dbo].[User] ([UID])
GO
ALTER TABLE [dbo].[Bird] CHECK CONSTRAINT [FK_Bird_User]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_User] FOREIGN KEY([UID])
REFERENCES [dbo].[User] ([UID])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_User]
GO
ALTER TABLE [dbo].[ClubLocation]  WITH CHECK ADD  CONSTRAINT [FK_Club_Location] FOREIGN KEY([LID])
REFERENCES [dbo].[Location] ([LID])
GO
ALTER TABLE [dbo].[ClubLocation] CHECK CONSTRAINT [FK_Club_Location]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Blog] FOREIGN KEY([BLID])
REFERENCES [dbo].[Blog] ([BLID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Blog]
GO
ALTER TABLE [dbo].[FieldTripMedia]  WITH CHECK ADD  CONSTRAINT [FK_FieldTripMedia_FieldTrip] FOREIGN KEY([FID])
REFERENCES [dbo].[FieldTrip] ([FID])
GO
ALTER TABLE [dbo].[FieldTripMedia] CHECK CONSTRAINT [FK_FieldTripMedia_FieldTrip]
GO
ALTER TABLE [dbo].[FieldTripParticipants]  WITH CHECK ADD  CONSTRAINT [FK_FieldTripParticipants_FieldTrip] FOREIGN KEY([FID])
REFERENCES [dbo].[FieldTrip] ([FID])
GO
ALTER TABLE [dbo].[FieldTripParticipants] CHECK CONSTRAINT [FK_FieldTripParticipants_FieldTrip]
GO
ALTER TABLE [dbo].[FieldTripParticipants]  WITH CHECK ADD  CONSTRAINT [FK_FieldTripParticipants_User] FOREIGN KEY([UID])
REFERENCES [dbo].[User] ([UID])
GO
ALTER TABLE [dbo].[FieldTripParticipants] CHECK CONSTRAINT [FK_FieldTripParticipants_User]
GO
ALTER TABLE [dbo].[MeetingMedia]  WITH CHECK ADD  CONSTRAINT [FK_MeetingMedia_Meeting] FOREIGN KEY([MeID])
REFERENCES [dbo].[Meeting] ([MeID])
GO
ALTER TABLE [dbo].[MeetingMedia] CHECK CONSTRAINT [FK_MeetingMedia_Meeting]
GO
ALTER TABLE [dbo].[MeetingParticipants]  WITH CHECK ADD  CONSTRAINT [FK_MeetingParticipants_Meeting1] FOREIGN KEY([MeID])
REFERENCES [dbo].[Meeting] ([MeID])
GO
ALTER TABLE [dbo].[MeetingParticipants] CHECK CONSTRAINT [FK_MeetingParticipants_Meeting1]
GO
ALTER TABLE [dbo].[MeetingParticipants]  WITH CHECK ADD  CONSTRAINT [FK_MeetingParticipants_User] FOREIGN KEY([UID])
REFERENCES [dbo].[User] ([UID])
GO
ALTER TABLE [dbo].[MeetingParticipants] CHECK CONSTRAINT [FK_MeetingParticipants_User]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_Article_User] FOREIGN KEY([UID])
REFERENCES [dbo].[User] ([UID])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_Article_User]
GO
ALTER TABLE [dbo].[TournamentMedia]  WITH CHECK ADD  CONSTRAINT [FK_TournamentMedia_Tournament] FOREIGN KEY([TID])
REFERENCES [dbo].[Tournament] ([TID])
GO
ALTER TABLE [dbo].[TournamentMedia] CHECK CONSTRAINT [FK_TournamentMedia_Tournament]
GO
ALTER TABLE [dbo].[Tparticipation]  WITH CHECK ADD  CONSTRAINT [FK_TournamentParticipant_Tournament] FOREIGN KEY([TID])
REFERENCES [dbo].[Tournament] ([TID])
GO
ALTER TABLE [dbo].[Tparticipation] CHECK CONSTRAINT [FK_TournamentParticipant_Tournament]
GO
ALTER TABLE [dbo].[Tparticipation]  WITH CHECK ADD  CONSTRAINT [FK_Tparticipation_Bird] FOREIGN KEY([BID])
REFERENCES [dbo].[Bird] ([BID])
GO
ALTER TABLE [dbo].[Tparticipation] CHECK CONSTRAINT [FK_Tparticipation_Bird]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Payment_User] FOREIGN KEY([UID])
REFERENCES [dbo].[User] ([UID])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Payment_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Membership] FOREIGN KEY([MID])
REFERENCES [dbo].[Membership] ([MID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Membership]
GO
USE [master]
GO
ALTER DATABASE [ChimOwner] SET  READ_WRITE 
GO
