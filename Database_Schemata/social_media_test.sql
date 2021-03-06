USE [social_media_test]
GO
/****** Object:  Table [dbo].[comment_dislikes]    Script Date: 6/22/2017 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment_dislikes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[comment_id] [int] NULL,
	[user_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[comment_likes]    Script Date: 6/22/2017 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment_likes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[comment_id] [int] NULL,
	[user_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[comments]    Script Date: 6/22/2017 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [varchar](600) NULL,
	[status_id] [int] NULL,
	[user_id] [int] NULL,
	[likes] [int] NULL,
	[dislikes] [int] NULL,
	[timestamp] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[status_dislikes]    Script Date: 6/22/2017 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status_dislikes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status_id] [int] NULL,
	[user_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[status_likes]    Script Date: 6/22/2017 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status_likes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status_id] [int] NULL,
	[user_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[statuses]    Script Date: 6/22/2017 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statuses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [varchar](600) NULL,
	[user_id] [int] NULL,
	[likes] [int] NULL,
	[dislikes] [int] NULL,
	[timestamp] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user_friendships]    Script Date: 6/22/2017 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_friendships](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user1_id] [int] NULL,
	[user2_id] [int] NULL,
	[timestamp] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 6/22/2017 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](255) NULL,
	[last_name] [varchar](255) NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[timestamp] [datetime] NULL,
	[img_url] [varchar](255) NULL
) ON [PRIMARY]

GO
