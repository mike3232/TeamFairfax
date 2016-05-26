USE [master]
GO
/****** Object:  Database [neo_natal]    Script Date: 5/26/2016 9:11:18 AM ******/
CREATE DATABASE [neo_natal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'neo_natal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\neo_natal.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'neo_natal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\neo_natal_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [neo_natal] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [neo_natal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [neo_natal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [neo_natal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [neo_natal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [neo_natal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [neo_natal] SET ARITHABORT OFF 
GO
ALTER DATABASE [neo_natal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [neo_natal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [neo_natal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [neo_natal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [neo_natal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [neo_natal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [neo_natal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [neo_natal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [neo_natal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [neo_natal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [neo_natal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [neo_natal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [neo_natal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [neo_natal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [neo_natal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [neo_natal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [neo_natal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [neo_natal] SET RECOVERY FULL 
GO
ALTER DATABASE [neo_natal] SET  MULTI_USER 
GO
ALTER DATABASE [neo_natal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [neo_natal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [neo_natal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [neo_natal] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [neo_natal] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'neo_natal', N'ON'
GO
USE [neo_natal]
GO
/****** Object:  Table [dbo].[client]    Script Date: 5/26/2016 9:11:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[client](
	[id] [int] NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[DOB] [int] NOT NULL,
	[street_number] [int] NOT NULL,
	[street_name] [varchar](50) NOT NULL,
	[zip_code] [int] NOT NULL,
	[county] [varchar](20) NOT NULL,
	[ward] [int] NOT NULL,
	[phone_number] [int] NULL,
	[email] [varchar](50) NULL,
	[health_worker_id] [int] NOT NULL,
 CONSTRAINT [PK_client] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[health_worker]    Script Date: 5/26/2016 9:11:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[health_worker](
	[id] [int] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[client_id] [int] NOT NULL,
 CONSTRAINT [PK_health_worker] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[survey]    Script Date: 5/26/2016 9:11:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[survey](
	[id] [int] NOT NULL,
	[health_worker_id] [int] NOT NULL,
	[client_id] [int] NOT NULL,
	[question_1] [varchar](200) NULL,
	[quesiton_2] [varchar](200) NULL,
	[question_3] [varchar](200) NULL,
	[question_4] [varchar](200) NULL,
	[question_5] [varchar](200) NULL,
	[question_6] [varchar](200) NULL,
	[question_7] [varchar](200) NULL,
	[question_8] [varchar](200) NULL,
	[question_9] [varchar](200) NULL,
	[question_10] [varchar](200) NULL,
	[question_11] [varchar](200) NULL,
	[question_12] [varchar](200) NULL,
	[question_13] [varchar](200) NULL,
	[question_14] [varchar](200) NULL,
	[question_15] [varchar](200) NULL,
	[question_16] [varchar](200) NULL,
	[question_17] [varchar](200) NULL,
	[question_18] [varchar](200) NULL,
	[question_19] [varchar](200) NULL,
	[question_20] [varchar](200) NULL,
	[quesiton_21] [varchar](200) NULL,
	[question_22] [varchar](200) NULL,
	[quesiton_23] [varchar](200) NULL,
	[question_24] [varchar](200) NULL,
	[question_25] [varchar](200) NULL,
 CONSTRAINT [PK_survey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[client]  WITH CHECK ADD  CONSTRAINT [FK_client_health_worker] FOREIGN KEY([health_worker_id])
REFERENCES [dbo].[health_worker] ([id])
GO
ALTER TABLE [dbo].[client] CHECK CONSTRAINT [FK_client_health_worker]
GO
ALTER TABLE [dbo].[health_worker]  WITH CHECK ADD  CONSTRAINT [FK_health_worker_client] FOREIGN KEY([client_id])
REFERENCES [dbo].[client] ([id])
GO
ALTER TABLE [dbo].[health_worker] CHECK CONSTRAINT [FK_health_worker_client]
GO
ALTER TABLE [dbo].[survey]  WITH CHECK ADD  CONSTRAINT [FK_survey_client] FOREIGN KEY([client_id])
REFERENCES [dbo].[client] ([id])
GO
ALTER TABLE [dbo].[survey] CHECK CONSTRAINT [FK_survey_client]
GO
ALTER TABLE [dbo].[survey]  WITH CHECK ADD  CONSTRAINT [FK_survey_health_worker] FOREIGN KEY([health_worker_id])
REFERENCES [dbo].[health_worker] ([id])
GO
ALTER TABLE [dbo].[survey] CHECK CONSTRAINT [FK_survey_health_worker]
GO
USE [master]
GO
ALTER DATABASE [neo_natal] SET  READ_WRITE 
GO
