USE [master]
GO
CREATE DATABASE [DemoDatabase]
GO
USE [DemoDatabase]
GO

/****** Object:  Table [dbo].[Company]    Script Date: 14-03-2020 21:17:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CountryId] [int] NOT NULL,
	[IndustryId] [int] NULL,
	[NumberOfEmployees] [int] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[CompanyOwner]    Script Date: 14-03-2020 21:17:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyOwner](
	[CompanyOwnerId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	[FromDate] [date] NOT NULL,
	[ToDate] [date] NULL,
 CONSTRAINT [PK_CompanyOwner] PRIMARY KEY CLUSTERED 
(
	[CompanyOwnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Country]    Script Date: 14-03-2020 21:17:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[EuMember] [bit] NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Industry]    Script Date: 14-03-2020 21:17:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Industry](
	[IndustryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Industry] PRIMARY KEY CLUSTERED 
(
	[IndustryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Person]    Script Date: 14-03-2020 21:17:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[Male] [bit] NOT NULL,
	[CountryId] [int] NOT NULL,
	[PersonTitleId] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PersonTitle]    Script Date: 14-03-2020 21:17:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonTitle](
	[PersonTitleId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PersonTitle] PRIMARY KEY CLUSTERED 
(
	[PersonTitleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Region]    Script Date: 14-03-2020 21:17:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[RegionId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[RegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([CompanyId], [Name], [CountryId], [IndustryId], [NumberOfEmployees]) VALUES (2, N'SimCorp', 1, 1, 1200)
INSERT [dbo].[Company] ([CompanyId], [Name], [CountryId], [IndustryId], [NumberOfEmployees]) VALUES (3, N'Contex', 1, 1, 140)
INSERT [dbo].[Company] ([CompanyId], [Name], [CountryId], [IndustryId], [NumberOfEmployees]) VALUES (4, N'Coloplast', 1, 2, 2000)
INSERT [dbo].[Company] ([CompanyId], [Name], [CountryId], [IndustryId], [NumberOfEmployees]) VALUES (5, N'Ambu', 1, 2, 600)
INSERT [dbo].[Company] ([CompanyId], [Name], [CountryId], [IndustryId], [NumberOfEmployees]) VALUES (6, N'Volkswagen', 3, 1002, 60000)
INSERT [dbo].[Company] ([CompanyId], [Name], [CountryId], [IndustryId], [NumberOfEmployees]) VALUES (7, N'Strikkeriet', 1, 1005, 1)
INSERT [dbo].[Company] ([CompanyId], [Name], [CountryId], [IndustryId], [NumberOfEmployees]) VALUES (8, N'IKEA', 4, NULL, 0)
SET IDENTITY_INSERT [dbo].[Company] OFF
SET IDENTITY_INSERT [dbo].[CompanyOwner] ON 

INSERT [dbo].[CompanyOwner] ([CompanyOwnerId], [CompanyId], [PersonId], [FromDate], [ToDate]) VALUES (1, 7, 5, CAST(N'1997-05-01' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[CompanyOwner] OFF
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([CountryId], [Name], [EuMember]) VALUES (1, N'Denmark', 1)
INSERT [dbo].[Country] ([CountryId], [Name], [EuMember]) VALUES (2, N'France', 1)
INSERT [dbo].[Country] ([CountryId], [Name], [EuMember]) VALUES (3, N'Germany', 1)
INSERT [dbo].[Country] ([CountryId], [Name], [EuMember]) VALUES (4, N'Sweden', 1)
INSERT [dbo].[Country] ([CountryId], [Name], [EuMember]) VALUES (5, N'Norway', 0)
INSERT [dbo].[Country] ([CountryId], [Name], [EuMember]) VALUES (6, N'Australia', 0)
INSERT [dbo].[Country] ([CountryId], [Name], [EuMember]) VALUES (8, N'Poland', 1)
INSERT [dbo].[Country] ([CountryId], [Name], [EuMember]) VALUES (9, N'Spain', 1)
INSERT [dbo].[Country] ([CountryId], [Name], [EuMember]) VALUES (10, N'Italy', 1)
INSERT [dbo].[Country] ([CountryId], [Name], [EuMember]) VALUES (13, N'United States', 0)
INSERT [dbo].[Country] ([CountryId], [Name], [EuMember]) VALUES (14, N'United Kingdom', 0)
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Industry] ON 

INSERT [dbo].[Industry] ([IndustryId], [Name]) VALUES (1, N'IT')
INSERT [dbo].[Industry] ([IndustryId], [Name]) VALUES (2, N'Healthcare')
INSERT [dbo].[Industry] ([IndustryId], [Name]) VALUES (3, N'Agriculture')
INSERT [dbo].[Industry] ([IndustryId], [Name]) VALUES (4, N'Telecommunication')
INSERT [dbo].[Industry] ([IndustryId], [Name]) VALUES (5, N'Hardware')
INSERT [dbo].[Industry] ([IndustryId], [Name]) VALUES (6, N'Service')
INSERT [dbo].[Industry] ([IndustryId], [Name]) VALUES (7, N'Mining')
INSERT [dbo].[Industry] ([IndustryId], [Name]) VALUES (8, N'Car manufacturer')
INSERT [dbo].[Industry] ([IndustryId], [Name]) VALUES (9, N'Weapon')
INSERT [dbo].[Industry] ([IndustryId], [Name]) VALUES (10, N'Wine making')
INSERT [dbo].[Industry] ([IndustryId], [Name]) VALUES (11, N'Knitwear')
SET IDENTITY_INSERT [dbo].[Industry] OFF
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([PersonId], [Name], [City], [PhoneNumber], [Email], [Birthday], [Male], [CountryId], [PersonTitleId]) VALUES (1, N'John Petersen', N'Birkerød', N'10203040', N'john@petersen.dk', CAST(N'1970-03-18' AS Date), 1, 1, 1)
INSERT [dbo].[Person] ([PersonId], [Name], [City], [PhoneNumber], [Email], [Birthday], [Male], [CountryId], [PersonTitleId]) VALUES (2, N'Lene Hansen', N'Farum', NULL, NULL, NULL, 0, 4, 2)
INSERT [dbo].[Person] ([PersonId], [Name], [City], [PhoneNumber], [Email], [Birthday], [Male], [CountryId], [PersonTitleId]) VALUES (3, N'Ole Sieling', N'Bad Homburg', N'2354565645', N'osl@simcorp.com', CAST(N'1972-01-24' AS Date), 1, 3, 1)
INSERT [dbo].[Person] ([PersonId], [Name], [City], [PhoneNumber], [Email], [Birthday], [Male], [CountryId], [PersonTitleId]) VALUES (4, N'Mette Skjøtt', N'Allerød', NULL, NULL, CAST(N'1960-10-25' AS Date), 0, 1, 3)
INSERT [dbo].[Person] ([PersonId], [Name], [City], [PhoneNumber], [Email], [Birthday], [Male], [CountryId], [PersonTitleId]) VALUES (5, N'Albert Camus', NULL, NULL, NULL, NULL, 1, 6, 1)
INSERT [dbo].[Person] ([PersonId], [Name], [City], [PhoneNumber], [Email], [Birthday], [Male], [CountryId], [PersonTitleId]) VALUES (6, N'Viggo Mortensen', NULL, NULL, NULL, NULL, 0, 2, 3)
SET IDENTITY_INSERT [dbo].[Person] OFF
SET IDENTITY_INSERT [dbo].[PersonTitle] ON 

INSERT [dbo].[PersonTitle] ([PersonTitleId], [Title]) VALUES (1, N'Mr.')
INSERT [dbo].[PersonTitle] ([PersonTitleId], [Title]) VALUES (2, N'Mrs.')
INSERT [dbo].[PersonTitle] ([PersonTitleId], [Title]) VALUES (3, N'Ms.')
INSERT [dbo].[PersonTitle] ([PersonTitleId], [Title]) VALUES (4, N'Sir')
INSERT [dbo].[PersonTitle] ([PersonTitleId], [Title]) VALUES (5, N'Lady')
SET IDENTITY_INSERT [dbo].[PersonTitle] OFF
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([RegionId], [Name], [CountryId]) VALUES (2, N'Jylland', 1)
INSERT [dbo].[Region] ([RegionId], [Name], [CountryId]) VALUES (3, N'Fyn', 1)
INSERT [dbo].[Region] ([RegionId], [Name], [CountryId]) VALUES (4, N'Sjælland', 1)
INSERT [dbo].[Region] ([RegionId], [Name], [CountryId]) VALUES (5, N'West Coast', 13)
INSERT [dbo].[Region] ([RegionId], [Name], [CountryId]) VALUES (6, N'East Coast', 13)
SET IDENTITY_INSERT [dbo].[Region] OFF
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_NumberOfEmployees]  DEFAULT ((0)) FOR [NumberOfEmployees]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([CountryId])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_Country]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_Industry] FOREIGN KEY([IndustryId])
REFERENCES [dbo].[Industry] ([IndustryId])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_Industry]
GO
ALTER TABLE [dbo].[CompanyOwner]  WITH CHECK ADD  CONSTRAINT [FK_CompanyOwner_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
ALTER TABLE [dbo].[CompanyOwner] CHECK CONSTRAINT [FK_CompanyOwner_Company]
GO
ALTER TABLE [dbo].[CompanyOwner]  WITH CHECK ADD  CONSTRAINT [FK_CompanyOwner_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[CompanyOwner] CHECK CONSTRAINT [FK_CompanyOwner_Person]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([CountryId])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_Country]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_PersonTitle] FOREIGN KEY([PersonTitleId])
REFERENCES [dbo].[PersonTitle] ([PersonTitleId])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_PersonTitle]
GO
ALTER TABLE [dbo].[Region]  WITH CHECK ADD  CONSTRAINT [FK_Region_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([CountryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Region] CHECK CONSTRAINT [FK_Region_Country]
GO
USE [master]
GO
ALTER DATABASE [DemoDatabase] SET  READ_WRITE 
GO
