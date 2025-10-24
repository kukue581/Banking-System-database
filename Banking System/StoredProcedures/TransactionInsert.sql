USE [Banking_System_by_Mativenga_Kudzaishe]
GO

/****** Object:  StoredProcedure [dbo].[TransactionsInsert]    Script Date: 24/10/2025 21:50:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TransactionsInsert]
@OperationType varchar(50),
@OperarionDate date,
@Amount decimal(7,0),
@BranchID int,
@PersonID int,
@ID int output 
AS
BEGIN
INSERT INTO Transactions(OperationType, OperarionDate, Amount, BranchID, PersonID)
VALUES(@OperationType,@OperarionDate,@Amount,@BranchID,@PersonID);
SET @ID= @@IDENTITY;
END;
GO


