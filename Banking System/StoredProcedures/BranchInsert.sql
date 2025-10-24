USE [Banking_System_by_Mativenga_Kudzaishe]
GO

/****** Object:  StoredProcedure [dbo].[BranchInsert]    Script Date: 24/10/2025 21:46:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[BranchInsert]
@Name varchar(50),
@Location varchar(50),
@BankTypeID int,
@CityID int,
@ID int output
AS
BEGIN
INSERT INTO Branch(Name, Location, BankTypeID, CityID)
VALUES(@Name,@Location,@BankTypeID, @CityID);
SET @ID= @@IDENTITY;
END;
GO


