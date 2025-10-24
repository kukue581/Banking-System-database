USE [Banking_System_by_Mativenga_Kudzaishe]
GO

/****** Object:  StoredProcedure [dbo].[PersonUpdate]    Script Date: 24/10/2025 21:49:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PersonUpdate]
@LastName varchar(50),
@FirstName varchar(50),
@DateOfBirth date,
@Address varchar(50),
@PhoneNumber varchar(50),
@GenderID int,
@CustomerTypeID int,
@ID int 
AS
BEGIN 
INSERT INTO ShadowPerson(ShadowTimestamp, ShadowOperation,ID,LastName, FirstName, DateOfBirth, Address, PhoneNumber, GenderID, CustomerTypeID)
SELECT GETDATE(), 'U', ID, LastName, FirstName, DateOfBirth, Address, PhoneNumber, GenderID, CustomerTypeID FROM Person
WHERE ID = @ID;

UPDATE Person
SET
LastName = @LastName,
FirstName = @FirstName,
DateOfBirth = @DateOfBirth,
Address = @Address,
PhoneNumber = @PhoneNumber,
GenderID = @GenderID,
CustomerTypeID = @CustomerTypeID
WHERE ID = @ID;
END;
GO


