USE [Banking_System_by_Mativenga_Kudzaishe]
GO

/****** Object:  StoredProcedure [dbo].[TransactionsSelect]    Script Date: 24/10/2025 21:51:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TransactionsSelect]
AS
BEGIN
SELECT
Transactions.ID,
Transactions.OperationType,
Transactions.OperarionDate,
Transactions.Amount,
Transactions.PersonID,
PersonView.LastName,
PersonView.FirstName,
PersonView.DateOfBirth,
PersonView.Address,
PersonView.PhoneNumber,
PersonView.GenderID,
PersonView.GenderName,
PersonView.CustomerTypeID,
PersonView.CustomerTypeName,
Transactions.BranchID,
BranchView.Name AS BranchName,
BranchView.Location,
BranchView.BankTypeName,
BranchView.CityName
FROM Transactions 
JOIN PersonView ON Transactions.PersonID = PersonView.ID
JOIN BranchView ON Transactions.BranchID = BranchView.ID
END;
GO


