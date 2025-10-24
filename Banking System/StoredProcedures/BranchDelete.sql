USE [Banking_System_by_Mativenga_Kudzaishe]
GO

/****** Object:  StoredProcedure [dbo].[BranchDelete]    Script Date: 24/10/2025 21:43:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BranchDelete]
@ID int 
AS
BEGIN 
INSERT INTO BranchShadow(ShadowTimestamp, ShadowOperation, ID, Name, Location, BankTypeID, CityID)
SELECT GETDATE(), 'D',ID, Name, Location, BankTypeID, CityID FROM Branch
WHERE ID = @ID;
DELETE FROM Branch
WHERE ID = @ID;
END;
GO


