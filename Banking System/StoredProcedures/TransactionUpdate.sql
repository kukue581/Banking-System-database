USE [Banking_System_by_Mativenga_Kudzaishe]
GO

/****** Object:  StoredProcedure [dbo].[TransactionsUpdate]    Script Date: 24/10/2025 21:51:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TransactionsUpdate]
@OperationType varchar(50),
@OperarionDate date,
@Amount decimal(7,0),
@BranchID int,
@PersonID int,
@ID int output 
AS
BEGIN
UPDATE Transactions
SET 
OperationType = @OperationType,
OperarionDate = @OperarionDate,
Amount = @Amount,
BranchID  = @BranchID,
PersonID = @PersonID 
WHERE ID = @ID;
END;
GO


