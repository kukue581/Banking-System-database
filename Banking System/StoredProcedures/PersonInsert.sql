USE [Banking_System_by_Mativenga_Kudzaishe]
GO

/****** Object:  StoredProcedure [dbo].[PersonInsert]    Script Date: 24/10/2025 21:48:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PersonInsert]
@LastName varchar(50),
@FirstName varchar(50),
@DateOfBirth date,
@Address varchar(50),
@PhoneNumber varchar(50),
@GenderID int,
@CustomerTypeID int,
@ID int output
AS
BEGIN
INSERT INTO Person(LastName, FirstName, DateOfBirth, Address, PhoneNumber,GenderID, CustomerTypeID)
VALUES(@LastName, @FirstName, @DateOfBirth, @Address, @PhoneNumber,@GenderID, @CustomerTypeID);
SET @ID= @@IDENTITY;
END;
GO


