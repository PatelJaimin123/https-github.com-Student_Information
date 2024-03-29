USE [Student]
GO
/****** Object:  Table [dbo].[Information]    Script Date: 7/11/2019 3:08:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Information](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[CompanyName] [varchar](100) NULL,
	[ContectNo] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Information] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Information] ON 

INSERT [dbo].[Information] ([ID], [FirstName], [MiddleName], [LastName], [Address], [CompanyName], [ContectNo]) VALUES (1, N'Jaimin', N'Patel', N'J.R', N'Vision', N'Test ', CAST(8153906551 AS Numeric(18, 0)))
INSERT [dbo].[Information] ([ID], [FirstName], [MiddleName], [LastName], [Address], [CompanyName], [ContectNo]) VALUES (2, N'ABC', N'ABC', N'ABC', N'ABC', N'ABC', CAST(3684784 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Information] OFF
