
CREATE VIEW [dbo].[BranchView]
AS
SELECT
Branch.ID,
Branch.Name,
Branch.Location,
Branch.BankTypeID,
BankType.Name AS BankTypeName,
Branch.CityID,
City.Name AS CityName
FROM Branch
JOIN BankType ON Branch.BankTypeID = BankType.ID
JOIN City ON Branch.CityID = City.ID
GO
