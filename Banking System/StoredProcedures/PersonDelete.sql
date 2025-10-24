USE [Banking_System_by_Mativenga_Kudzaishe]
GO

/****** Object:  StoredProcedure [dbo].[PersonDelete]    Script Date: 24/10/2025 21:47:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PersonDelete]
@ID int 
AS
BEGIN 
INSERT INTO ShadowPerson(ShadowTimestamp, ShadowOperation,ID,LastName, FirstName, DateOfBirth, Address, PhoneNumber, GenderID, CustomerTypeID)
SELECT GETDATE(), 'D', ID, LastName, FirstName, DateOfBirth, Address, PhoneNumber, GenderID, CustomerTypeID FROM Person
WHERE ID = @ID;
DELETE FROM Person
WHERE ID = @ID;
END;
GO


