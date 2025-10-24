USE [Banking_System_by_Mativenga_Kudzaishe]
GO

/****** Object:  StoredProcedure [dbo].[TransactionsDelete]    Script Date: 24/10/2025 21:49:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TransactionsDelete]
@ID int
AS
BEGIN
DELETE FROM Transactions
WHERE ID = @ID;
END;
GO


