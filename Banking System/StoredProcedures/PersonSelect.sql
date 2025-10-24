USE [Banking_System_by_Mativenga_Kudzaishe]
GO

/****** Object:  StoredProcedure [dbo].[PersonSelect]    Script Date: 24/10/2025 21:48:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PersonSelect]
AS
BEGIN
SELECT
ID,
LastName,
FirstName,
DateOfBirth,
Address,
PhoneNumber,
GenderID,
GenderName,
CustomerTypeID,
CustomerTypeName
FROM PersonView;
END;
GO


