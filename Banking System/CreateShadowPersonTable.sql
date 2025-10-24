USE [Banking_System_by_Mativenga_Kudzaishe]
GO

/****** Object:  Table [dbo].[ShadowPerson]    Script Date: 22/10/2025 18:34:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ShadowPerson](
	[ShadowID] [int] IDENTITY(1,1) NOT NULL,
	[ShadowTimestamp] [datetime2](7) NOT NULL,
	[ShadowOperation] [varchar](1) NOT NULL,
	[ID] [int] NULL,
	[LastName] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[Address] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[GenderID] [int] NULL,
	[CustomerTypeID] [int] NULL,
 CONSTRAINT [PK_ShadowPerson] PRIMARY KEY CLUSTERED 
(
	[ShadowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



