USE [Banking_System_by_Mativenga_Kudzaishe]
GO

/****** Object:  Table [dbo].[Person]    Script Date: 24/10/2025 21:52:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Person](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[Address] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[GenderID] [int] NULL,
	[CustomerTypeID] [int] NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_CustomerType] FOREIGN KEY([CustomerTypeID])
REFERENCES [dbo].[CustomerType] ([ID])
GO

ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_CustomerType]
GO

ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([ID])
GO

ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_Gender]
GO


