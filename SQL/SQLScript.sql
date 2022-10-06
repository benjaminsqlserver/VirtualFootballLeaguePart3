USE [master]
GO
/****** Object:  Database [VirtualLeagueDB]    Script Date: 06/10/2022 9:17:35 AM ******/
CREATE DATABASE [VirtualLeagueDB]
 
GO

USE [VirtualLeagueDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 06/10/2022 9:17:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 06/10/2022 9:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 06/10/2022 9:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 06/10/2022 9:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 06/10/2022 9:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 06/10/2022 9:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 06/10/2022 9:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 06/10/2022 9:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceCodes]    Script Date: 06/10/2022 9:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceCodes](
	[UserCode] [nvarchar](200) NOT NULL,
	[DeviceCode] [nvarchar](200) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[SessionId] [nvarchar](100) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Expiration] [datetime2](7) NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DeviceCodes] PRIMARY KEY CLUSTERED 
(
	[UserCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FixtureTemplates]    Script Date: 06/10/2022 9:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FixtureTemplates](
	[TemplateID] [int] IDENTITY(1,1) NOT NULL,
	[HomeTeam] [nvarchar](50) NOT NULL,
	[AwayTeam] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FixtureTemplates] PRIMARY KEY CLUSTERED 
(
	[TemplateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Keys]    Script Date: 06/10/2022 9:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Keys](
	[Id] [nvarchar](450) NOT NULL,
	[Version] [int] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[Use] [nvarchar](450) NULL,
	[Algorithm] [nvarchar](100) NOT NULL,
	[IsX509Certificate] [bit] NOT NULL,
	[DataProtected] [bit] NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Keys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LeagueSeasons]    Script Date: 06/10/2022 9:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeagueSeasons](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[SeasonName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LeagueSeasons] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatchDays]    Script Date: 06/10/2022 9:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchDays](
	[MatchDayID] [int] IDENTITY(1,1) NOT NULL,
	[MatchDayName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MatchDays] PRIMARY KEY CLUSTERED 
(
	[MatchDayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersistedGrants]    Script Date: 06/10/2022 9:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersistedGrants](
	[Key] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[SessionId] [nvarchar](100) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Expiration] [datetime2](7) NULL,
	[ConsumedTime] [datetime2](7) NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PersistedGrants] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeasonFixtures]    Script Date: 06/10/2022 9:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeasonFixtures](
	[FixtureID] [bigint] IDENTITY(1,1) NOT NULL,
	[SeasonID] [int] NOT NULL,
	[MatchDayID] [int] NOT NULL,
	[HomeTeamID] [int] NOT NULL,
	[AwayTeamID] [int] NOT NULL,
	[Played] [bit] NOT NULL,
 CONSTRAINT [PK_SeasonFixtures] PRIMARY KEY CLUSTERED 
(
	[FixtureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 06/10/2022 9:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[TeamID] [int] IDENTITY(1,1) NOT NULL,
	[TeamName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VirtualLeagueResults]    Script Date: 06/10/2022 9:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VirtualLeagueResults](
	[RecordID] [bigint] IDENTITY(1,1) NOT NULL,
	[SeasonID] [int] NOT NULL,
	[MatchDayID] [int] NOT NULL,
	[HomeTeamID] [int] NOT NULL,
	[HomeScore] [int] NOT NULL,
	[AwayTeamID] [int] NOT NULL,
	[AwayScore] [int] NOT NULL,
 CONSTRAINT [PK_VirtualLeagueResults] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.0')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd16a6901-a192-4314-8801-ab3e0840f5ba', N'Administrator', N'ADMINISTRATOR', N'58bb5c02-87d7-4286-989a-60923e3e7b95')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f5308db8-2247-42c7-a39e-dba8aa266452', N'Gamer', N'GAMER', N'929c6b97-ac38-4e4b-ba87-87fb52832fd4')
GO
SET IDENTITY_INSERT [dbo].[FixtureTemplates] ON 
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (1, N'PL1', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (2, N'PL3', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (3, N'PL5', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (4, N'PL7', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (5, N'PL9', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (6, N'PL11', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (7, N'PL13', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (8, N'PL15', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (9, N'PL17', N'PL18')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (10, N'PL19', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (11, N'PL14', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (12, N'PL6', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (13, N'PL2', N'PL18')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (14, N'PL12', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (15, N'PL8', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (16, N'PL1', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (17, N'PL16', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (18, N'PL10', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (19, N'PL4', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (20, N'PL20', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (21, N'PL15', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (22, N'PL5', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (23, N'PL17', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (24, N'PL7', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (25, N'PL19', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (26, N'PL9', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (27, N'PL3', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (28, N'PL13', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (29, N'PL11', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (30, N'PL18', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (31, N'PL14', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (32, N'PL16', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (33, N'PL1', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (34, N'PL19', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (35, N'PL20', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (36, N'PL4', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (37, N'PL2', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (38, N'PL8', N'PL18')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (39, N'PL6', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (40, N'PL12', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (41, N'PL9', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (42, N'PL3', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (43, N'PL15', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (44, N'PL7', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (45, N'PL10', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (46, N'PL5', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (47, N'PL18', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (48, N'PL17', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (49, N'PL11', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (50, N'PL13', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (51, N'PL19', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (52, N'PL1', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (53, N'PL3', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (54, N'PL14', N'PL18')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (55, N'PL4', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (56, N'PL2', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (57, N'PL20', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (58, N'PL6', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (59, N'PL12', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (60, N'PL16', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (61, N'PL17', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (62, N'PL13', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (63, N'PL15', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (64, N'PL7', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (65, N'PL5', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (66, N'PL18', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (67, N'PL8', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (68, N'PL11', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (69, N'PL10', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (70, N'PL9', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (71, N'PL19', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (72, N'PL2', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (73, N'PL12', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (74, N'PL1', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (75, N'PL14', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (76, N'PL20', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (77, N'PL3', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (78, N'PL6', N'PL18')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (79, N'PL4', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (80, N'PL5', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (81, N'PL10', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (82, N'PL7', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (83, N'PL13', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (84, N'PL17', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (85, N'PL16', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (86, N'PL18', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (87, N'PL8', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (88, N'PL11', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (89, N'PL9', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (90, N'PL15', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (91, N'PL6', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (92, N'PL5', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (93, N'PL20', N'PL18')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (94, N'PL19', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (95, N'PL4', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (96, N'PL11', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (97, N'PL2', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (98, N'PL12', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (99, N'PL3', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (100, N'PL1', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (101, N'PL13', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (102, N'PL18', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (103, N'PL10', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (104, N'PL15', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (105, N'PL9', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (106, N'PL17', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (107, N'PL16', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (108, N'PL8', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (109, N'PL14', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (110, N'PL7', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (111, N'PL5', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (112, N'PL3', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (113, N'PL19', N'PL18')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (114, N'PL11', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (115, N'PL2', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (116, N'PL6', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (117, N'PL13', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (118, N'PL1', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (119, N'PL4', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (120, N'PL20', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (121, N'PL10', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (122, N'PL16', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (123, N'PL9', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (124, N'PL15', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (125, N'PL14', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (126, N'PL17', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (127, N'PL12', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (128, N'PL18', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (129, N'PL7', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (130, N'PL8', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (131, N'PL1', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (132, N'PL5', N'PL18')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (133, N'PL13', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (134, N'PL20', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (135, N'PL19', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (136, N'PL11', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (137, N'PL15', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (138, N'PL4', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (139, N'PL2', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (140, N'PL3', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (141, N'PL12', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (142, N'PL18', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (143, N'PL9', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (144, N'PL6', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (145, N'PL14', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (146, N'PL17', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (147, N'PL10', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (148, N'PL7', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (149, N'PL8', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (150, N'PL16', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (151, N'PL13', N'PL18')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (152, N'PL3', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (153, N'PL19', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (154, N'PL5', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (155, N'PL1', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (156, N'PL20', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (157, N'PL7', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (158, N'PL11', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (159, N'PL2', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (160, N'PL15', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (161, N'PL16', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (162, N'PL12', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (163, N'PL14', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (164, N'PL6', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (165, N'PL17', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (166, N'PL18', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (167, N'PL4', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (168, N'PL8', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (169, N'PL9', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (170, N'PL10', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (171, N'PL5', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (172, N'PL13', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (173, N'PL15', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (174, N'PL7', N'PL18')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (175, N'PL3', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (176, N'PL9', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (177, N'PL1', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (178, N'PL19', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (179, N'PL2', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (180, N'PL11', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (181, N'PL16', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (182, N'PL10', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (183, N'PL20', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (184, N'PL17', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (185, N'PL14', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (186, N'PL18', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (187, N'PL6', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (188, N'PL4', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (189, N'PL8', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (190, N'PL12', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (191, N'PL4', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (192, N'PL14', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (193, N'PL20', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (194, N'PL6', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (195, N'PL16', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (196, N'PL8', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (197, N'PL12', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (198, N'PL10', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (199, N'PL2', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (200, N'PL18', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (201, N'PL5', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (202, N'PL7', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (203, N'PL9', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (204, N'PL17', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (205, N'PL11', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (206, N'PL13', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (207, N'PL18', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (208, N'PL3', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (209, N'PL19', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (210, N'PL15', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (211, N'PL14', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (212, N'PL2', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (213, N'PL8', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (214, N'PL6', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (215, N'PL12', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (216, N'PL16', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (217, N'PL1', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (218, N'PL4', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (219, N'PL10', N'PL18')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (220, N'PL20', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (221, N'PL7', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (222, N'PL5', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (223, N'PL17', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (224, N'PL18', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (225, N'PL15', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (226, N'PL13', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (227, N'PL3', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (228, N'PL10', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (229, N'PL11', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (230, N'PL9', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (231, N'PL8', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (232, N'PL14', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (233, N'PL6', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (234, N'PL19', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (235, N'PL1', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (236, N'PL4', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (237, N'PL20', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (238, N'PL2', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (239, N'PL12', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (240, N'PL16', N'PL18')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (241, N'PL9', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (242, N'PL8', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (243, N'PL15', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (244, N'PL7', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (245, N'PL13', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (246, N'PL10', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (247, N'PL11', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (248, N'PL18', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (249, N'PL17', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (250, N'PL5', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (251, N'PL14', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (252, N'PL4', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (253, N'PL12', N'PL18')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (254, N'PL20', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (255, N'PL6', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (256, N'PL16', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (257, N'PL1', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (258, N'PL19', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (259, N'PL3', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (260, N'PL2', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (261, N'PL17', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (262, N'PL10', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (263, N'PL16', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (264, N'PL18', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (265, N'PL7', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (266, N'PL15', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (267, N'PL13', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (268, N'PL11', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (269, N'PL9', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (270, N'PL8', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (271, N'PL14', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (272, N'PL3', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (273, N'PL19', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (274, N'PL2', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (275, N'PL1', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (276, N'PL12', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (277, N'PL20', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (278, N'PL6', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (279, N'PL5', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (280, N'PL4', N'PL18')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (281, N'PL14', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (282, N'PL7', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (283, N'PL17', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (284, N'PL13', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (285, N'PL16', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (286, N'PL8', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (287, N'PL18', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (288, N'PL9', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (289, N'PL10', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (290, N'PL15', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (291, N'PL11', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (292, N'PL4', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (293, N'PL3', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (294, N'PL2', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (295, N'PL6', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (296, N'PL19', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (297, N'PL12', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (298, N'PL5', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (299, N'PL1', N'PL18')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (300, N'PL20', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (301, N'PL17', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (302, N'PL10', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (303, N'PL14', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (304, N'PL9', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (305, N'PL12', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (306, N'PL7', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (307, N'PL18', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (308, N'PL16', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (309, N'PL15', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (310, N'PL8', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (311, N'PL13', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (312, N'PL11', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (313, N'PL2', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (314, N'PL6', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (315, N'PL19', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (316, N'PL4', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (317, N'PL5', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (318, N'PL20', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (319, N'PL3', N'PL18')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (320, N'PL1', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (321, N'PL7', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (322, N'PL8', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (323, N'PL17', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (324, N'PL16', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (325, N'PL6', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (326, N'PL12', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (327, N'PL14', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (328, N'PL9', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (329, N'PL18', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (330, N'PL10', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (331, N'PL19', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (332, N'PL3', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (333, N'PL4', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (334, N'PL2', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (335, N'PL15', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (336, N'PL5', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (337, N'PL1', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (338, N'PL20', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (339, N'PL13', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (340, N'PL11', N'PL18')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (341, N'PL8', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (342, N'PL9', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (343, N'PL16', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (344, N'PL14', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (345, N'PL4', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (346, N'PL17', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (347, N'PL18', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (348, N'PL12', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (349, N'PL10', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (350, N'PL6', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (351, N'PL1', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (352, N'PL15', N'PL18')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (353, N'PL2', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (354, N'PL20', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (355, N'PL7', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (356, N'PL13', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (357, N'PL5', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (358, N'PL11', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (359, N'PL19', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (360, N'PL3', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (361, N'PL16', N'PL11')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (362, N'PL12', N'PL3')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (363, N'PL10', N'PL15')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (364, N'PL14', N'PL5')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (365, N'PL18', N'PL7')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (366, N'PL4', N'PL1')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (367, N'PL6', N'PL19')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (368, N'PL20', N'PL2')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (369, N'PL17', N'PL9')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (370, N'PL8', N'PL13')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (371, N'PL7', N'PL10')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (372, N'PL2', N'PL17')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (373, N'PL1', N'PL20')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (374, N'PL19', N'PL4')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (375, N'PL15', N'PL8')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (376, N'PL5', N'PL12')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (377, N'PL13', N'PL16')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (378, N'PL3', N'PL6')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (379, N'PL11', N'PL14')
GO
INSERT [dbo].[FixtureTemplates] ([TemplateID], [HomeTeam], [AwayTeam]) VALUES (380, N'PL9', N'PL18')
GO
SET IDENTITY_INSERT [dbo].[FixtureTemplates] OFF
GO
INSERT [dbo].[Keys] ([Id], [Version], [Created], [Use], [Algorithm], [IsX509Certificate], [DataProtected], [Data]) VALUES (N'735513AD63F407B0FDED77D053F52792', 1, CAST(N'2022-10-06T08:11:03.9025816' AS DateTime2), N'signing', N'RS256', 0, 1, N'CfDJ8CVaQ3qN-WFIp46XCPEtyANxh7mTxzzEX6iJVYuS8AP_bKOpJAOlcpyKrIrqrQsLT9-96NC15MpRuDHRBGE5YwQZ_EyJHLM4Fi4qw18BC-VBoBcHqlOaRU4L7g4tP2bPptLEaE9W_0s-2TU_uYlXKStpDVxpPh0cWOywcLesRNtbr5KW8JWUDS9BDhkiZ_moZNvJHpm_kvKxQ-nGfaEUuH8-ExgCugxccoDB_Q_vMU1yHeaKpwW-LilxTZBK0Cd49hUvCYaqi1HAZP2ywLaupRCbIYr4BqMCdnkHs_LWNzth9ZrnbNQY2P3FUjXs2qYlCGN4ro3yT9vl_hEhcGV9Lgkukcd-660xZD_uft0HEZH7Tj8UZdIsoBmcLwkaqwqw-Le-cLUS8LxRXU8abAJHpKi_puvwgJJ_Fel1uUGmL6gB9CoBfv7V7HA7qMkn3mYu9oVHbbfatfL7K7tMlLxWvuqUVTMdkzRbsAY9kKRzod4VrOUh4MIBkqcC97Sn0ykp4v4jYIyk45SYziADQty5wLhAv1wgEFcnGLkv0uUKaGsB1xQlhrAaex2SgaDKeo_c0CKku8eQ6VM8lDpJ_rJAyLrHeKZ3hOIIuIdgv2Y1_yaX2NuocninmHg-XNT-0s7eMl8CLRQckg2yve_Rh3jIh_NXKVNRvbcrZDMOYrhlDAWJlr5ltJODkluH3gOnaizuppR08o1JujcspaGU8OO5gRXueavO27Q6SYzdgT1QmSZ3h598w8q-Ye9R6GZ5XhQpB2bBaOdaSTCOakcU3i1d3012MppXESrU40KocFXPFJ1hyvzpQRlvmVYNtG6rhsZdSbK22MwZdY4OjpPVVxlqNohF3H4hoTAUoXNxVGhgAW93k-P_FBIgSKvMLrV0tT3sgS7HipA4WLptB_Bj_9_MeuAmrjZuQBM5g-Zk_8rRbdd0GHnDJLQkCqJ4KHOKpoHLFSTl3LLvpU9Mj8jDKFzj6IA-XuwYMS1jzNBshgFCmFG2ACtEWIkLHNlvzSvXp6xFj76huRcICUfg3xKwbEBW7p0V1gHnjiCQ_kVVhr_7zCZzrVg8489h0BDyw_uBZUYYXDB4nPOWGzQTShVBxDK6AWDSLkXFsPyiSiOGKOF2yUl0HOTL2qgRdy0Vek_FvTMyPgLZ1pYcJ9zmIhftfPrwCuX1Bbn4AMU9wrlHcxLrozDcEqONbpGQWRS-h8GJkSPw2U6hW9BMb-RZM92_K71FdA3lLo66EPHB4zreW04O5gLO5hhHHDY95xjmTbvrKxsyjKUarinByQizDtoXDSvSsTHxZOESG0pA_mwAOys-xzpkAt0JpLLY3Tw3kQC2QJVvpjgWnhXHAEbpzp8wfJV-7KTOgBREvsQiONzK25vyUznRY7G1dWgvf_FUAJqAA9sJ4QJya04q4nWt5b9K9LNpY____VaEBtGbbITrjw6k2Ua1LVOV4pCoT3470pJWR59r0i7P1Y22sHL0O1ADNtabon8QYE1aEyYVoQ70lIkNW3T-EJdaFIuaPlzYyhbSC-qO1fu3t2MpiYQ4DBz1CmSfq757CMb6OXp1M8umRSfv2cZPdvF13yJ7I4PeMhC3zOGO-IothUE3PERP4e7MZFVHUkWI4ba8W2hXdN6ZN3WD7TvjT-AwqPxaVBTNm6C-yXAz3ArAa1Khxu2E8AM3TJAW6nViewh_97I-_C1ABuYRDAXenA3As3HI1B-FRmDDR8vUOis3jpOUI60W6iEzxqXE16atBCoH-EcQYMkd-jEYjGzU_SikxxTCJgStCWCexZSAz2kEQ5MjGJWOI1OskacPG0dMic4MojpZKgq6ov_WbasS3Bhlzieo9JKjysh8bv5MWr-OY8qDrlXJEwMr-S2eB7RW1WPlD_3A7do4106HLYFLivfCzy63Gfd2YPCwDOGsDOngneJxip4cafORNkBPXY6vNVk_pkIL3pF6prXAW-WR-YL3mWkHQE7u9grHkv-WyL9-MzEgxWAqxkUQCnbySsGJtd3XuKS08c5MxeKI5dP8IJS3C7_2zkMn73wDm6jjWgk1SkM4ywFgmlSP751bx03t4mmREDEtoefDz9kaJd1CoWdIlCg2ZE7ToEw4xhsAi93G7vkZM5YCjeoUR1muDUcQDnAFZnRI_apf3snrXz_UHczE5HiaTUDC4K8gijWMYEux0ZkEBTp6yZJd40Giv2MhllrIKZ4dg-COPxHZXxCi_y20oUwGnnnP0IYI74Y67LpIlB2GA3Vptdzjt-kz-GTDL1fh1j2Z3sWy0kTdmEv_SzMU_TJ_Bix-ESm9a81qKM8pllKv8ANj9DR_ZIpAPBj2Bl0P5CUaUkqT6T0Utr5ALEkQFp4IpGtcIzpYhjZOJazYTuN5xKgZ_1b502q9dJstEqrR5B_-QwHg7PZ-OfLV4QKKSpp_C13L91K9BCq7UsOypwgGyPhKey5tGl1hfOn_HVPtcg5r8ivGAQVJa_VM')
GO
SET IDENTITY_INSERT [dbo].[LeagueSeasons] ON 
GO
INSERT [dbo].[LeagueSeasons] ([SeasonID], [SeasonName]) VALUES (1, N'2019')
GO
INSERT [dbo].[LeagueSeasons] ([SeasonID], [SeasonName]) VALUES (2, N'2020')
GO
SET IDENTITY_INSERT [dbo].[LeagueSeasons] OFF
GO
SET IDENTITY_INSERT [dbo].[MatchDays] ON 
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (1, N'1')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (10, N'10')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (11, N'11')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (12, N'12')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (13, N'13')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (14, N'14')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (15, N'15')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (16, N'16')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (17, N'17')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (18, N'18')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (19, N'19')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (2, N'2')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (20, N'20')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (21, N'21')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (22, N'22')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (23, N'23')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (24, N'24')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (25, N'25')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (26, N'26')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (27, N'27')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (28, N'28')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (29, N'29')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (3, N'3')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (30, N'30')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (31, N'31')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (32, N'32')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (33, N'33')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (34, N'34')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (35, N'35')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (36, N'36')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (37, N'37')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (38, N'38')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (4, N'4')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (5, N'5')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (6, N'6')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (7, N'7')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (8, N'8')
GO
INSERT [dbo].[MatchDays] ([MatchDayID], [MatchDayName]) VALUES (9, N'9')
GO
SET IDENTITY_INSERT [dbo].[MatchDays] OFF
GO
SET IDENTITY_INSERT [dbo].[SeasonFixtures] ON 
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (1, 1, 1, 3, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (2, 1, 1, 17, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (3, 1, 1, 11, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (4, 1, 1, 9, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (5, 1, 1, 19, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (6, 1, 1, 1, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (7, 1, 1, 3, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (8, 1, 1, 12, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (9, 1, 1, 5, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (10, 1, 1, 12, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (11, 1, 2, 20, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (12, 1, 2, 17, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (13, 1, 2, 16, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (14, 1, 2, 13, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (15, 1, 2, 15, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (16, 1, 2, 3, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (17, 1, 2, 17, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (18, 1, 2, 19, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (19, 1, 2, 17, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (20, 1, 2, 10, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (21, 1, 3, 12, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (22, 1, 3, 11, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (23, 1, 3, 5, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (24, 1, 3, 9, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (25, 1, 3, 12, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (26, 1, 3, 19, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (27, 1, 3, 17, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (28, 1, 3, 3, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (29, 1, 3, 1, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (30, 1, 3, 8, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (31, 1, 4, 20, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (32, 1, 4, 17, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (33, 1, 4, 3, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (34, 1, 4, 12, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (35, 1, 4, 10, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (36, 1, 4, 17, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (37, 1, 4, 16, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (38, 1, 4, 15, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (39, 1, 4, 17, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (40, 1, 4, 13, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (41, 1, 5, 19, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (42, 1, 5, 17, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (43, 1, 5, 12, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (44, 1, 5, 9, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (45, 1, 5, 19, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (46, 1, 5, 11, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (47, 1, 5, 8, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (48, 1, 5, 5, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (49, 1, 5, 1, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (50, 1, 5, 3, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (51, 1, 6, 12, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (52, 1, 6, 3, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (53, 1, 6, 17, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (54, 1, 6, 20, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (55, 1, 6, 17, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (56, 1, 6, 16, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (57, 1, 6, 10, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (58, 1, 6, 17, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (59, 1, 6, 13, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (60, 1, 6, 17, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (61, 1, 7, 5, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (62, 1, 7, 3, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (63, 1, 7, 12, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (64, 1, 7, 9, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (65, 1, 7, 11, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (66, 1, 7, 8, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (67, 1, 7, 15, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (68, 1, 7, 1, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (69, 1, 7, 19, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (70, 1, 7, 19, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (71, 1, 8, 12, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (72, 1, 8, 16, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (73, 1, 8, 13, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (74, 1, 8, 3, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (75, 1, 8, 20, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (76, 1, 8, 10, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (77, 1, 8, 17, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (78, 1, 8, 17, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (79, 1, 8, 17, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (80, 1, 8, 11, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (81, 1, 9, 19, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (82, 1, 9, 9, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (83, 1, 9, 3, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (84, 1, 9, 5, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (85, 1, 9, 17, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (86, 1, 9, 8, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (87, 1, 9, 15, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (88, 1, 9, 1, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (89, 1, 9, 19, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (90, 1, 9, 12, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (91, 1, 10, 17, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (92, 1, 10, 11, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (93, 1, 10, 10, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (94, 1, 10, 12, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (95, 1, 10, 17, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (96, 1, 10, 1, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (97, 1, 10, 16, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (98, 1, 10, 13, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (99, 1, 10, 17, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (100, 1, 10, 3, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (101, 1, 11, 3, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (102, 1, 11, 8, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (103, 1, 11, 19, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (104, 1, 11, 12, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (105, 1, 11, 19, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (106, 1, 11, 5, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (107, 1, 11, 17, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (108, 1, 11, 15, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (109, 1, 11, 20, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (110, 1, 11, 9, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (111, 1, 12, 11, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (112, 1, 12, 17, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (113, 1, 12, 12, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (114, 1, 12, 1, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (115, 1, 12, 16, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (116, 1, 12, 17, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (117, 1, 12, 3, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (118, 1, 12, 3, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (119, 1, 12, 17, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (120, 1, 12, 10, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (121, 1, 13, 19, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (122, 1, 13, 17, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (123, 1, 13, 19, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (124, 1, 13, 12, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (125, 1, 13, 20, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (126, 1, 13, 5, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (127, 1, 13, 13, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (128, 1, 13, 8, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (129, 1, 13, 9, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (130, 1, 13, 15, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (131, 1, 14, 3, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (132, 1, 14, 11, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (133, 1, 14, 3, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (134, 1, 14, 10, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (135, 1, 14, 12, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (136, 1, 14, 1, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (137, 1, 14, 12, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (138, 1, 14, 17, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (139, 1, 14, 16, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (140, 1, 14, 17, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (141, 1, 15, 13, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (142, 1, 15, 8, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (143, 1, 15, 19, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (144, 1, 15, 17, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (145, 1, 15, 20, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (146, 1, 15, 5, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (147, 1, 15, 19, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (148, 1, 15, 9, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (149, 1, 15, 15, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (150, 1, 15, 17, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (151, 1, 16, 3, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (152, 1, 16, 17, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (153, 1, 16, 12, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (154, 1, 16, 11, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (155, 1, 16, 3, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (156, 1, 16, 10, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (157, 1, 16, 9, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (158, 1, 16, 1, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (159, 1, 16, 16, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (160, 1, 16, 12, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (161, 1, 17, 17, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (162, 1, 17, 13, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (163, 1, 17, 20, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (164, 1, 17, 17, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (165, 1, 17, 5, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (166, 1, 17, 8, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (167, 1, 17, 17, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (168, 1, 17, 15, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (169, 1, 17, 19, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (170, 1, 17, 19, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (171, 1, 18, 11, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (172, 1, 18, 3, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (173, 1, 18, 12, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (174, 1, 18, 9, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (175, 1, 18, 17, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (176, 1, 18, 19, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (177, 1, 18, 3, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (178, 1, 18, 12, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (179, 1, 18, 16, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (180, 1, 18, 1, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (181, 1, 19, 17, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (182, 1, 19, 19, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (183, 1, 19, 10, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (184, 1, 19, 5, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (185, 1, 19, 20, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (186, 1, 19, 8, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (187, 1, 19, 17, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (188, 1, 19, 17, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (189, 1, 19, 15, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (190, 1, 19, 13, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (191, 1, 20, 17, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (192, 1, 20, 20, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (193, 1, 20, 10, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (194, 1, 20, 17, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (195, 1, 20, 17, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (196, 1, 20, 15, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (197, 1, 20, 13, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (198, 1, 20, 19, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (199, 1, 20, 16, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (200, 1, 20, 8, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (201, 1, 21, 11, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (202, 1, 21, 9, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (203, 1, 21, 19, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (204, 1, 21, 5, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (205, 1, 21, 1, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (206, 1, 21, 3, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (207, 1, 21, 8, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (208, 1, 21, 17, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (209, 1, 21, 12, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (210, 1, 21, 12, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (211, 1, 22, 20, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (212, 1, 22, 16, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (213, 1, 22, 15, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (214, 1, 22, 17, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (215, 1, 22, 13, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (216, 1, 22, 17, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (217, 1, 22, 3, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (218, 1, 22, 17, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (219, 1, 22, 19, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (220, 1, 22, 10, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (221, 1, 23, 9, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (222, 1, 23, 11, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (223, 1, 23, 5, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (224, 1, 23, 8, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (225, 1, 23, 12, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (226, 1, 23, 3, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (227, 1, 23, 17, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (228, 1, 23, 19, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (229, 1, 23, 1, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (230, 1, 23, 19, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (231, 1, 24, 15, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (232, 1, 24, 20, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (233, 1, 24, 17, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (234, 1, 24, 12, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (235, 1, 24, 3, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (236, 1, 24, 17, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (237, 1, 24, 10, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (238, 1, 24, 16, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (239, 1, 24, 13, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (240, 1, 24, 17, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (241, 1, 25, 19, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (242, 1, 25, 15, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (243, 1, 25, 12, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (244, 1, 25, 9, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (245, 1, 25, 3, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (246, 1, 25, 19, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (247, 1, 25, 1, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (248, 1, 25, 8, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (249, 1, 25, 5, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (250, 1, 25, 11, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (251, 1, 26, 20, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (252, 1, 26, 17, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (253, 1, 26, 13, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (254, 1, 26, 10, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (255, 1, 26, 17, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (256, 1, 26, 17, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (257, 1, 26, 3, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (258, 1, 26, 12, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (259, 1, 26, 17, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (260, 1, 26, 16, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (261, 1, 27, 5, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (262, 1, 27, 19, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (263, 1, 27, 17, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (264, 1, 27, 8, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (265, 1, 27, 9, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (266, 1, 27, 12, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (267, 1, 27, 3, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (268, 1, 27, 1, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (269, 1, 27, 19, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (270, 1, 27, 15, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (271, 1, 28, 20, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (272, 1, 28, 17, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (273, 1, 28, 12, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (274, 1, 28, 16, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (275, 1, 28, 3, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (276, 1, 28, 13, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (277, 1, 28, 10, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (278, 1, 28, 17, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (279, 1, 28, 11, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (280, 1, 28, 17, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (281, 1, 29, 20, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (282, 1, 29, 9, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (283, 1, 29, 5, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (284, 1, 29, 3, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (285, 1, 29, 17, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (286, 1, 29, 15, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (287, 1, 29, 8, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (288, 1, 29, 19, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (289, 1, 29, 19, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (290, 1, 29, 12, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (291, 1, 30, 1, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (292, 1, 30, 17, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (293, 1, 30, 17, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (294, 1, 30, 16, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (295, 1, 30, 17, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (296, 1, 30, 12, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (297, 1, 30, 13, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (298, 1, 30, 11, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (299, 1, 30, 3, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (300, 1, 30, 10, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (301, 1, 31, 5, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (302, 1, 31, 19, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (303, 1, 31, 20, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (304, 1, 31, 19, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (305, 1, 31, 13, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (306, 1, 31, 9, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (307, 1, 31, 8, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (308, 1, 31, 17, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (309, 1, 31, 12, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (310, 1, 31, 15, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (311, 1, 32, 3, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (312, 1, 32, 1, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (313, 1, 32, 16, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (314, 1, 32, 17, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (315, 1, 32, 12, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (316, 1, 32, 17, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (317, 1, 32, 11, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (318, 1, 32, 10, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (319, 1, 32, 17, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (320, 1, 32, 3, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (321, 1, 33, 9, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (322, 1, 33, 15, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (323, 1, 33, 5, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (324, 1, 33, 17, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (325, 1, 33, 17, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (326, 1, 33, 13, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (327, 1, 33, 20, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (328, 1, 33, 19, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (329, 1, 33, 8, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (330, 1, 33, 19, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (331, 1, 34, 12, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (332, 1, 34, 17, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (333, 1, 34, 17, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (334, 1, 34, 16, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (335, 1, 34, 12, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (336, 1, 34, 11, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (337, 1, 34, 3, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (338, 1, 34, 10, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (339, 1, 34, 3, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (340, 1, 34, 1, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (341, 1, 35, 15, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (342, 1, 35, 19, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (343, 1, 35, 17, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (344, 1, 35, 20, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (345, 1, 35, 17, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (346, 1, 35, 5, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (347, 1, 35, 8, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (348, 1, 35, 13, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (349, 1, 35, 19, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (350, 1, 35, 17, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (351, 1, 36, 3, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (352, 1, 36, 12, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (353, 1, 36, 16, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (354, 1, 36, 10, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (355, 1, 36, 9, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (356, 1, 36, 3, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (357, 1, 36, 11, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (358, 1, 36, 1, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (359, 1, 36, 12, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (360, 1, 36, 17, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (361, 1, 37, 17, 1, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (362, 1, 37, 13, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (363, 1, 37, 19, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (364, 1, 37, 20, 11, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (365, 1, 37, 8, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (366, 1, 37, 17, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (367, 1, 37, 17, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (368, 1, 37, 10, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (369, 1, 37, 5, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (370, 1, 37, 15, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (371, 1, 38, 9, 19, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (372, 1, 38, 16, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (373, 1, 38, 3, 10, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (374, 1, 38, 12, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (375, 1, 38, 12, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (376, 1, 38, 11, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (377, 1, 38, 3, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (378, 1, 38, 17, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (379, 1, 38, 1, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (380, 1, 38, 19, 8, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (381, 2, 1, 5, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (382, 2, 1, 12, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (383, 2, 1, 16, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (384, 2, 1, 20, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (385, 2, 1, 9, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (386, 2, 1, 14, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (387, 2, 1, 5, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (388, 2, 1, 15, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (389, 2, 1, 4, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (390, 2, 1, 13, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (391, 2, 2, 5, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (392, 2, 2, 7, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (393, 2, 2, 15, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (394, 2, 2, 3, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (395, 2, 2, 18, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (396, 2, 2, 5, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (397, 2, 2, 17, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (398, 2, 2, 17, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (399, 2, 2, 7, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (400, 2, 2, 5, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (401, 2, 3, 15, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (402, 2, 3, 16, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (403, 2, 3, 4, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (404, 2, 3, 20, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (405, 2, 3, 13, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (406, 2, 3, 9, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (407, 2, 3, 12, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (408, 2, 3, 5, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (409, 2, 3, 14, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (410, 2, 3, 14, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (411, 2, 4, 5, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (412, 2, 4, 17, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (413, 2, 4, 5, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (414, 2, 4, 13, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (415, 2, 4, 5, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (416, 2, 4, 7, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (417, 2, 4, 15, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (418, 2, 4, 18, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (419, 2, 4, 7, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (420, 2, 4, 3, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (421, 2, 5, 9, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (422, 2, 5, 12, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (423, 2, 5, 15, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (424, 2, 5, 20, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (425, 2, 5, 17, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (426, 2, 5, 16, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (427, 2, 5, 14, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (428, 2, 5, 4, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (429, 2, 5, 14, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (430, 2, 5, 5, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (431, 2, 6, 13, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (432, 2, 6, 5, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (433, 2, 6, 12, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (434, 2, 6, 5, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (435, 2, 6, 7, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (436, 2, 6, 15, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (437, 2, 6, 5, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (438, 2, 6, 7, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (439, 2, 6, 3, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (440, 2, 6, 17, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (441, 2, 7, 4, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (442, 2, 7, 5, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (443, 2, 7, 15, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (444, 2, 7, 20, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (445, 2, 7, 16, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (446, 2, 7, 14, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (447, 2, 7, 18, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (448, 2, 7, 14, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (449, 2, 7, 17, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (450, 2, 7, 9, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (451, 2, 8, 13, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (452, 2, 8, 15, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (453, 2, 8, 3, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (454, 2, 8, 5, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (455, 2, 8, 5, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (456, 2, 8, 5, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (457, 2, 8, 12, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (458, 2, 8, 7, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (459, 2, 8, 7, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (460, 2, 8, 16, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (461, 2, 9, 17, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (462, 2, 9, 20, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (463, 2, 9, 5, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (464, 2, 9, 4, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (465, 2, 9, 17, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (466, 2, 9, 14, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (467, 2, 9, 18, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (468, 2, 9, 14, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (469, 2, 9, 9, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (470, 2, 9, 15, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (471, 2, 10, 7, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (472, 2, 10, 16, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (473, 2, 10, 5, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (474, 2, 10, 13, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (475, 2, 10, 7, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (476, 2, 10, 14, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (477, 2, 10, 15, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (478, 2, 10, 3, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (479, 2, 10, 12, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (480, 2, 10, 5, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (481, 2, 11, 5, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (482, 2, 11, 14, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (483, 2, 11, 17, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (484, 2, 11, 15, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (485, 2, 11, 9, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (486, 2, 11, 4, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (487, 2, 11, 17, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (488, 2, 11, 18, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (489, 2, 11, 5, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (490, 2, 11, 20, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (491, 2, 12, 16, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (492, 2, 12, 12, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (493, 2, 12, 13, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (494, 2, 12, 14, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (495, 2, 12, 15, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (496, 2, 12, 7, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (497, 2, 12, 5, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (498, 2, 12, 5, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (499, 2, 12, 7, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (500, 2, 12, 5, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (501, 2, 13, 17, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (502, 2, 13, 17, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (503, 2, 13, 9, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (504, 2, 13, 15, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (505, 2, 13, 5, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (506, 2, 13, 4, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (507, 2, 13, 3, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (508, 2, 13, 14, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (509, 2, 13, 20, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (510, 2, 13, 18, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (511, 2, 14, 5, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (512, 2, 14, 16, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (513, 2, 14, 5, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (514, 2, 14, 5, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (515, 2, 14, 13, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (516, 2, 14, 14, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (517, 2, 14, 15, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (518, 2, 14, 7, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (519, 2, 14, 15, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (520, 2, 14, 12, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (521, 2, 15, 3, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (522, 2, 15, 14, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (523, 2, 15, 9, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (524, 2, 15, 7, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (525, 2, 15, 5, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (526, 2, 15, 4, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (527, 2, 15, 17, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (528, 2, 15, 20, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (529, 2, 15, 18, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (530, 2, 15, 17, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (531, 2, 16, 5, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (532, 2, 16, 12, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (533, 2, 16, 13, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (534, 2, 16, 16, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (535, 2, 16, 5, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (536, 2, 16, 5, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (537, 2, 16, 20, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (538, 2, 16, 14, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (539, 2, 16, 15, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (540, 2, 16, 15, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (541, 2, 17, 17, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (542, 2, 17, 3, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (543, 2, 17, 5, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (544, 2, 17, 7, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (545, 2, 17, 4, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (546, 2, 17, 14, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (547, 2, 17, 7, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (548, 2, 17, 18, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (549, 2, 17, 9, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (550, 2, 17, 17, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (551, 2, 18, 16, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (552, 2, 18, 5, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (553, 2, 18, 15, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (554, 2, 18, 20, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (555, 2, 18, 12, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (556, 2, 18, 9, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (557, 2, 18, 5, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (558, 2, 18, 13, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (559, 2, 18, 15, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (560, 2, 18, 14, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (561, 2, 19, 17, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (562, 2, 19, 17, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (563, 2, 19, 5, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (564, 2, 19, 4, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (565, 2, 19, 5, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (566, 2, 19, 14, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (567, 2, 19, 7, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (568, 2, 19, 7, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (569, 2, 19, 18, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (570, 2, 19, 3, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (571, 2, 20, 7, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (572, 2, 20, 5, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (573, 2, 20, 5, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (574, 2, 20, 7, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (575, 2, 20, 17, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (576, 2, 20, 18, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (577, 2, 20, 3, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (578, 2, 20, 17, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (579, 2, 20, 15, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (580, 2, 20, 14, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (581, 2, 21, 16, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (582, 2, 21, 20, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (583, 2, 21, 9, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (584, 2, 21, 4, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (585, 2, 21, 14, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (586, 2, 21, 5, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (587, 2, 21, 14, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (588, 2, 21, 12, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (589, 2, 21, 13, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (590, 2, 21, 15, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (591, 2, 22, 5, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (592, 2, 22, 15, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (593, 2, 22, 18, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (594, 2, 22, 7, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (595, 2, 22, 3, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (596, 2, 22, 17, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (597, 2, 22, 5, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (598, 2, 22, 7, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (599, 2, 22, 17, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (600, 2, 22, 5, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (601, 2, 23, 20, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (602, 2, 23, 16, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (603, 2, 23, 4, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (604, 2, 23, 14, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (605, 2, 23, 15, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (606, 2, 23, 5, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (607, 2, 23, 12, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (608, 2, 23, 17, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (609, 2, 23, 14, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (610, 2, 23, 9, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (611, 2, 24, 18, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (612, 2, 24, 5, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (613, 2, 24, 7, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (614, 2, 24, 13, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (615, 2, 24, 5, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (616, 2, 24, 7, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (617, 2, 24, 5, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (618, 2, 24, 15, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (619, 2, 24, 3, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (620, 2, 24, 17, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (621, 2, 25, 9, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (622, 2, 25, 18, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (623, 2, 25, 15, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (624, 2, 25, 20, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (625, 2, 25, 5, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (626, 2, 25, 17, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (627, 2, 25, 14, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (628, 2, 25, 14, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (629, 2, 25, 4, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (630, 2, 25, 16, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (631, 2, 26, 5, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (632, 2, 26, 7, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (633, 2, 26, 3, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (634, 2, 26, 5, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (635, 2, 26, 7, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (636, 2, 26, 17, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (637, 2, 26, 5, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (638, 2, 26, 13, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (639, 2, 26, 12, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (640, 2, 26, 15, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (641, 2, 27, 4, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (642, 2, 27, 17, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (643, 2, 27, 17, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (644, 2, 27, 14, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (645, 2, 27, 20, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (646, 2, 27, 15, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (647, 2, 27, 5, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (648, 2, 27, 14, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (649, 2, 27, 9, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (650, 2, 27, 18, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (651, 2, 28, 5, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (652, 2, 28, 12, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (653, 2, 28, 13, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (654, 2, 28, 15, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (655, 2, 28, 5, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (656, 2, 28, 3, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (657, 2, 28, 5, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (658, 2, 28, 7, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (659, 2, 28, 16, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (660, 2, 28, 7, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (661, 2, 29, 5, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (662, 2, 29, 20, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (663, 2, 29, 4, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (664, 2, 29, 5, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (665, 2, 29, 17, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (666, 2, 29, 18, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (667, 2, 29, 14, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (668, 2, 29, 9, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (669, 2, 29, 17, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (670, 2, 29, 15, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (671, 2, 30, 14, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (672, 2, 30, 7, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (673, 2, 30, 12, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (674, 2, 30, 15, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (675, 2, 30, 7, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (676, 2, 30, 13, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (677, 2, 30, 3, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (678, 2, 30, 16, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (679, 2, 30, 5, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (680, 2, 30, 5, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (681, 2, 31, 4, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (682, 2, 31, 17, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (683, 2, 31, 5, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (684, 2, 31, 9, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (685, 2, 31, 3, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (686, 2, 31, 20, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (687, 2, 31, 14, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (688, 2, 31, 17, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (689, 2, 31, 15, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (690, 2, 31, 18, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (691, 2, 32, 5, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (692, 2, 32, 14, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (693, 2, 32, 15, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (694, 2, 32, 7, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (695, 2, 32, 13, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (696, 2, 32, 7, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (697, 2, 32, 16, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (698, 2, 32, 5, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (699, 2, 32, 12, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (700, 2, 32, 5, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (701, 2, 33, 20, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (702, 2, 33, 18, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (703, 2, 33, 4, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (704, 2, 33, 17, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (705, 2, 33, 7, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (706, 2, 33, 3, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (707, 2, 33, 5, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (708, 2, 33, 9, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (709, 2, 33, 14, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (710, 2, 33, 17, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (711, 2, 34, 13, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (712, 2, 34, 12, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (713, 2, 34, 7, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (714, 2, 34, 15, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (715, 2, 34, 15, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (716, 2, 34, 16, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (717, 2, 34, 5, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (718, 2, 34, 5, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (719, 2, 34, 5, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (720, 2, 34, 14, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (721, 2, 35, 18, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (722, 2, 35, 9, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (723, 2, 35, 17, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (724, 2, 35, 5, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (725, 2, 35, 7, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (726, 2, 35, 4, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (727, 2, 35, 14, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (728, 2, 35, 3, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (729, 2, 35, 17, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (730, 2, 35, 7, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (731, 2, 36, 5, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (732, 2, 36, 15, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (733, 2, 36, 15, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (734, 2, 36, 5, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (735, 2, 36, 20, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (736, 2, 36, 5, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (737, 2, 36, 16, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (738, 2, 36, 14, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (739, 2, 36, 13, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (740, 2, 36, 12, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (741, 2, 37, 17, 14, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (742, 2, 37, 3, 12, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (743, 2, 37, 17, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (744, 2, 37, 5, 16, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (745, 2, 37, 14, 20, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (746, 2, 37, 7, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (747, 2, 37, 7, 13, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (748, 2, 37, 5, 15, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (749, 2, 37, 4, 9, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (750, 2, 37, 18, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (751, 2, 38, 20, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (752, 2, 38, 15, 4, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (753, 2, 38, 5, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (754, 2, 38, 13, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (755, 2, 38, 15, 18, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (756, 2, 38, 16, 3, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (757, 2, 38, 5, 17, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (758, 2, 38, 12, 7, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (759, 2, 38, 14, 5, 0)
GO
INSERT [dbo].[SeasonFixtures] ([FixtureID], [SeasonID], [MatchDayID], [HomeTeamID], [AwayTeamID], [Played]) VALUES (760, 2, 38, 9, 14, 0)
GO
SET IDENTITY_INSERT [dbo].[SeasonFixtures] OFF
GO
SET IDENTITY_INSERT [dbo].[Teams] ON 
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (6, N'Ajegunle Devils')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (12, N'Anthony Peacocks')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (3, N'Bonny Camp Lilywhites')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (4, N'CMS Seagulls')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (10, N'Ejigbo Bees')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (16, N'Enugu Saints')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (13, N'Gbagada Poppies')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (17, N'Ibadan Eagles')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (8, N'Isolo Cottagers')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (9, N'Jakande Reds')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (20, N'Jos Foxes')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (18, N'Kaduna Wolves')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (14, N'Kano Lions')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (1, N'Lekki Gunners')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (7, N'Mushin Magpies')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (5, N'Oshodi Blues')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (15, N'Port Harcourt Irons')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (11, N'Surulere Dogs Of War')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (19, N'Uyo Rangers')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (2, N'Victoria Island Citizens')
GO
SET IDENTITY_INSERT [dbo].[Teams] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 06/10/2022 9:17:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 06/10/2022 9:17:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 06/10/2022 9:17:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 06/10/2022 9:17:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 06/10/2022 9:17:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 06/10/2022 9:17:36 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 06/10/2022 9:17:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DeviceCodes_DeviceCode]    Script Date: 06/10/2022 9:17:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_DeviceCodes_DeviceCode] ON [dbo].[DeviceCodes]
(
	[DeviceCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DeviceCodes_Expiration]    Script Date: 06/10/2022 9:17:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_DeviceCodes_Expiration] ON [dbo].[DeviceCodes]
(
	[Expiration] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Keys_Use]    Script Date: 06/10/2022 9:17:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_Keys_Use] ON [dbo].[Keys]
(
	[Use] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LeagueSeasons]    Script Date: 06/10/2022 9:17:36 AM ******/
ALTER TABLE [dbo].[LeagueSeasons] ADD  CONSTRAINT [IX_LeagueSeasons] UNIQUE NONCLUSTERED 
(
	[SeasonName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MatchDays]    Script Date: 06/10/2022 9:17:36 AM ******/
ALTER TABLE [dbo].[MatchDays] ADD  CONSTRAINT [IX_MatchDays] UNIQUE NONCLUSTERED 
(
	[MatchDayName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersistedGrants_Expiration]    Script Date: 06/10/2022 9:17:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersistedGrants_Expiration] ON [dbo].[PersistedGrants]
(
	[Expiration] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersistedGrants_SubjectId_ClientId_Type]    Script Date: 06/10/2022 9:17:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersistedGrants_SubjectId_ClientId_Type] ON [dbo].[PersistedGrants]
(
	[SubjectId] ASC,
	[ClientId] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Teams]    Script Date: 06/10/2022 9:17:36 AM ******/
ALTER TABLE [dbo].[Teams] ADD  CONSTRAINT [IX_Teams] UNIQUE NONCLUSTERED 
(
	[TeamName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[SeasonFixtures]  WITH CHECK ADD  CONSTRAINT [FK_SeasonFixtures_LeagueSeasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[LeagueSeasons] ([SeasonID])
GO
ALTER TABLE [dbo].[SeasonFixtures] CHECK CONSTRAINT [FK_SeasonFixtures_LeagueSeasons]
GO
ALTER TABLE [dbo].[SeasonFixtures]  WITH CHECK ADD  CONSTRAINT [FK_SeasonFixtures_MatchDays] FOREIGN KEY([MatchDayID])
REFERENCES [dbo].[MatchDays] ([MatchDayID])
GO
ALTER TABLE [dbo].[SeasonFixtures] CHECK CONSTRAINT [FK_SeasonFixtures_MatchDays]
GO
ALTER TABLE [dbo].[SeasonFixtures]  WITH CHECK ADD  CONSTRAINT [FK_SeasonFixtures_Teams] FOREIGN KEY([HomeTeamID])
REFERENCES [dbo].[Teams] ([TeamID])
GO
ALTER TABLE [dbo].[SeasonFixtures] CHECK CONSTRAINT [FK_SeasonFixtures_Teams]
GO
ALTER TABLE [dbo].[SeasonFixtures]  WITH CHECK ADD  CONSTRAINT [FK_SeasonFixtures_Teams1] FOREIGN KEY([AwayTeamID])
REFERENCES [dbo].[Teams] ([TeamID])
GO
ALTER TABLE [dbo].[SeasonFixtures] CHECK CONSTRAINT [FK_SeasonFixtures_Teams1]
GO
ALTER TABLE [dbo].[VirtualLeagueResults]  WITH CHECK ADD  CONSTRAINT [FK_VirtualLeagueResults_LeagueSeasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[LeagueSeasons] ([SeasonID])
GO
ALTER TABLE [dbo].[VirtualLeagueResults] CHECK CONSTRAINT [FK_VirtualLeagueResults_LeagueSeasons]
GO
ALTER TABLE [dbo].[VirtualLeagueResults]  WITH CHECK ADD  CONSTRAINT [FK_VirtualLeagueResults_MatchDays] FOREIGN KEY([MatchDayID])
REFERENCES [dbo].[MatchDays] ([MatchDayID])
GO
ALTER TABLE [dbo].[VirtualLeagueResults] CHECK CONSTRAINT [FK_VirtualLeagueResults_MatchDays]
GO
ALTER TABLE [dbo].[VirtualLeagueResults]  WITH CHECK ADD  CONSTRAINT [FK_VirtualLeagueResults_Teams] FOREIGN KEY([HomeTeamID])
REFERENCES [dbo].[Teams] ([TeamID])
GO
ALTER TABLE [dbo].[VirtualLeagueResults] CHECK CONSTRAINT [FK_VirtualLeagueResults_Teams]
GO
ALTER TABLE [dbo].[VirtualLeagueResults]  WITH CHECK ADD  CONSTRAINT [FK_VirtualLeagueResults_Teams1] FOREIGN KEY([AwayTeamID])
REFERENCES [dbo].[Teams] ([TeamID])
GO
ALTER TABLE [dbo].[VirtualLeagueResults] CHECK CONSTRAINT [FK_VirtualLeagueResults_Teams1]
GO
/****** Object:  StoredProcedure [dbo].[FixtureGenerator]    Script Date: 06/10/2022 9:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FixtureGenerator]
--Take in the names of 20 football teams as parameter
@Team1 nvarchar(50),
@Team2 nvarchar(50),
@Team3 nvarchar(50),
@Team4 nvarchar(50),
@Team5 nvarchar(50),
@Team6 nvarchar(50),
@Team7 nvarchar(50),
@Team8 nvarchar(50),
@Team9 nvarchar(50),
@Team10 nvarchar(50),
@Team11 nvarchar(50),
@Team12  nvarchar(50),
@Team13 nvarchar(50),
@Team14 nvarchar(50),
@Team15 nvarchar(50),
@Team16 nvarchar(50),
@Team17 nvarchar(50),
@Team18 nvarchar(50),
@Team19 nvarchar(50),
@Team20 nvarchar(50)
AS
SELECT TemplateID,  CASE WHEN HomeTeam='PL1' THEN @Team1   WHEN HomeTeam='PL2' THEN @Team2   WHEN HomeTeam='PL3' THEN @Team3   WHEN HomeTeam='PL4' THEN @Team4   WHEN HomeTeam='PL5' THEN @Team5   WHEN HomeTeam='PL6' THEN @Team6   WHEN HomeTeam='PL7' THEN @Team7   WHEN HomeTeam='PL8' THEN @Team8   WHEN HomeTeam='PL9' THEN @Team9   WHEN HomeTeam='PL10' THEN @Team10   WHEN HomeTeam='PL11' THEN @Team11   WHEN HomeTeam='PL12' THEN @Team12   WHEN HomeTeam='PL13' THEN @Team13   WHEN HomeTeam='PL14' THEN @Team14   WHEN HomeTeam='PL15' THEN @Team15   WHEN HomeTeam='PL16' THEN @Team16   WHEN HomeTeam='PL17' THEN @Team17   WHEN HomeTeam='PL18' THEN @Team18   WHEN HomeTeam='PL19' THEN @Team19   WHEN HomeTeam='PL20' THEN @Team20 ELSE HomeTeam END As HomeTeam, 



CASE  WHEN AwayTeam='PL1' THEN @Team1  WHEN AwayTeam='PL2' THEN @Team2  WHEN AwayTeam='PL3' THEN @Team3  WHEN AwayTeam='PL4' THEN @Team4  WHEN AwayTeam='PL5' THEN @Team5  WHEN AwayTeam='PL6' THEN @Team6  WHEN AwayTeam='PL7' THEN @Team7  WHEN AwayTeam='PL8' THEN @Team8  WHEN AwayTeam='PL9' THEN @Team9  WHEN AwayTeam='PL10' THEN @Team10  WHEN AwayTeam='PL11' THEN @Team11  WHEN AwayTeam='PL12' THEN @Team12  WHEN AwayTeam='PL13' THEN @Team13  WHEN AwayTeam='PL14' THEN @Team14  WHEN AwayTeam='PL15' THEN @Team15  WHEN AwayTeam='PL16' THEN @Team16  WHEN AwayTeam='PL17' THEN @Team17  WHEN AwayTeam='PL18' THEN @Team18  WHEN AwayTeam='PL19' THEN @Team19  WHEN AwayTeam='PL20' THEN @Team20 ELSE AwayTeam END As AwayTeam



FROM   FixtureTemplates
GO
/****** Object:  StoredProcedure [dbo].[SeasonFixturesList]    Script Date: 06/10/2022 9:17:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeasonFixturesList]
@SeasonID int
AS
SELECT FixtureID, SeasonID, MatchDayID, HomeTeamID, AwayTeamID, Played
FROM   SeasonFixtures
WHERE (SeasonID = @SeasonID)
GO
USE [master]
GO
ALTER DATABASE [VirtualLeagueDB] SET  READ_WRITE 
GO
