USE [Banking_System_by_Mativenga_Kudzaishe]
GO

/****** Object:  StoredProcedure [dbo].[BranchSelect]    Script Date: 24/10/2025 21:47:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BranchSelect]
AS
BEGIN
SELECT
ID,
Name,
Location,
BankTypeID,
BankTypeName,
CityID,
CityName
FROM BranchView;
END;
GO


