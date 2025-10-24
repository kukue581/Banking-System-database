CREATE VIEW [dbo].[TransactionsView]
AS
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
GO