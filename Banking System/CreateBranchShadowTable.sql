USE [Banking_System_by_Mativenga_Kudzaishe]
GO

/****** Object:  Table [dbo].[BranchShadow]    Script Date: 24/10/2025 21:59:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BranchShadow](
	[ShadowID] [int] IDENTITY(1,1) NOT NULL,
	[ShadowTimestamp] [datetime2](7) NOT NULL,
	[ShadowOperation] [varchar](1) NOT NULL,
	[ID] [int] NULL,
	[Name] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[BankTypeID] [int] NULL,
	[CityID] [int] NULL,
 CONSTRAINT [PK_BranchShadow] PRIMARY KEY CLUSTERED 
(
	[ShadowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


