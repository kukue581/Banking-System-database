USE [Banking_System_by_Mativenga_Kudzaishe]
GO

/****** Object:  StoredProcedure [dbo].[BranchUpdate]    Script Date: 24/10/2025 21:47:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BranchUpdate]
@Name varchar(50),
@Location varchar(50),
@BankTypeID int,
@CityID int,
@ID int
AS
BEGIN
INSERT INTO BranchShadow(ShadowTimestamp, ShadowOperation, ID, Name, Location, BankTypeID, CityID)
SELECT GETDATE(), 'U',ID, Name, Location, BankTypeID, CityID FROM Branch
WHERE ID = @ID;

UPDATE Branch
SET
Name = @Name,
Location = @Location,
BankTypeID = @BankTypeID,
CityID = @CityID
WHERE ID = @ID;
END;
GO


