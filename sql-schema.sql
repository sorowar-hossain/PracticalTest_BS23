USE [test]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 5/14/2020 9:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostId] [int] NOT NULL,
	[Text] [varchar](max) NULL,
	[UserName] [varchar](40) NULL,
	[Likes] [int] NOT NULL,
	[UnLikes] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 5/14/2020 9:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [varchar](max) NOT NULL,
	[UserName] [varchar](50) NULL,
	[CreateDate] [date] NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 
GO
INSERT [dbo].[Comments] ([Id], [PostId], [Text], [UserName], [Likes], [UnLikes]) VALUES (1, 1, N'Comment1', N'User1', 4, 7)
GO
INSERT [dbo].[Comments] ([Id], [PostId], [Text], [UserName], [Likes], [UnLikes]) VALUES (2, 1, N'Comment1', N'User2', 45, 3)
GO
INSERT [dbo].[Comments] ([Id], [PostId], [Text], [UserName], [Likes], [UnLikes]) VALUES (3, 1, N'Comment1', N'User3', 6, 77)
GO
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Posts] ON 
GO
INSERT [dbo].[Posts] ([Id], [Text], [UserName], [CreateDate]) VALUES (1, N'Post1', N'Admin', CAST(N'2020-05-14' AS Date))
GO
INSERT [dbo].[Posts] ([Id], [Text], [UserName], [CreateDate]) VALUES (2, N'Post2', N'Admin', CAST(N'2020-05-14' AS Date))
GO
INSERT [dbo].[Posts] ([Id], [Text], [UserName], [CreateDate]) VALUES (3, N'Post3', N'Admin', CAST(N'2020-05-14' AS Date))
GO
INSERT [dbo].[Posts] ([Id], [Text], [UserName], [CreateDate]) VALUES (4, N'Post4', N'Admin', CAST(N'2020-05-14' AS Date))
GO
INSERT [dbo].[Posts] ([Id], [Text], [UserName], [CreateDate]) VALUES (5, N'Post5', N'Admin', CAST(N'2020-05-14' AS Date))
GO
INSERT [dbo].[Posts] ([Id], [Text], [UserName], [CreateDate]) VALUES (6, N'Post6', N'Admin', CAST(N'2020-05-14' AS Date))
GO
INSERT [dbo].[Posts] ([Id], [Text], [UserName], [CreateDate]) VALUES (7, N'Post7', N'Admin', CAST(N'2020-05-14' AS Date))
GO
INSERT [dbo].[Posts] ([Id], [Text], [UserName], [CreateDate]) VALUES (8, N'Post8', N'Admin', CAST(N'2020-05-14' AS Date))
GO
INSERT [dbo].[Posts] ([Id], [Text], [UserName], [CreateDate]) VALUES (9, N'Post9', N'Admin', CAST(N'2020-05-14' AS Date))
GO
INSERT [dbo].[Posts] ([Id], [Text], [UserName], [CreateDate]) VALUES (10, N'Post10', N'Admin', CAST(N'2020-05-14' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Posts] OFF
GO
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [DF_Comments_Likes]  DEFAULT ((0)) FOR [Likes]
GO
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [DF_Comments_UnLikes]  DEFAULT ((0)) FOR [UnLikes]
GO
