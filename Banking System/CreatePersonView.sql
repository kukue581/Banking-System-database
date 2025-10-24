CREATE VIEW [dbo].[PersonView]
AS
SELECT
Person.ID,
Person.LastName,
Person.FirstName,
Person.DateOfBirth,
Person.Address,
Person.PhoneNumber,
Person.GenderID,
Gender.Name AS GenderName,
Person.CustomerTypeID,
CustomerType.Name AS CustomerTypeName
FROM Person
JOIN Gender ON Person.GenderID = Gender.ID
JOIN CustomerType ON Person.CustomerTypeID = CustomerType.ID
GO