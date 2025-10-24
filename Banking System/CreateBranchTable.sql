USE [Banking_System_by_Mativenga_Kudzaishe]
GO

/****** Object:  Table [dbo].[Branch]    Script Date: 24/10/2025 21:59:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Branch](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[BankTypeID] [int] NULL,
	[CityID] [int] NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_Branch_BankType] FOREIGN KEY([BankTypeID])
REFERENCES [dbo].[BankType] ([ID])
GO

ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Branch_BankType]
GO

ALTER TABLE [dbo].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_Branch_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([ID])
GO

ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Branch_City]
GO


