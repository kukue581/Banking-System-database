# Banking-System-database (Microsoft SQL Server)
SQL Server database project simulating a simple banking system. Includes table creation scripts, relationships, and stored procedures for managing customer data and transactions and audit tracking.

📂 Project Structure
Banking System/
-   CreateBankTypeTable.sql
-   CreateBranchShadowTable.sql
-   CreateBranchTable.sql
-   CreateBranchView.sql
-   CreateCityTable.sql
-   CreateCustomerTypeTable.sql
-   CreateGenderTable.sql
-   CreatePersonTable.sql
-   CreatePersonView.sql
-   CreateShadowPersonTable.sql
-   CreateTransactionsTable.sql
-   CreateTransactionView.sql


Banking System/StoredProcedures/
•       BranchDelete.sql
•	BranchInsert.sql
•	BranchSelect.sql
•	BranchUpdate.sql
•	PersonDelete.sql
•	PersonInsert.sql
•	PersonSelect.sql
•	PersonUpdate.sql
•	TransactionDelete.sql
•	TransactionInsert.sql
•	TransactionSelect.sql
•	TransactionUpdate.sql


        



 ⚙️ Features
- **Normalized database structure** with proper primary and foreign keys  
- **Stored procedures** for adding, updating, and retrieving customer data  
- **Audit tracking** using shadow tables (`ShadowPerson`)  
- **Example data** for testing and learning  

---

🧰 Tools & Technologies
- Microsoft SQL Server  
- SQL Server Management Studio (SSMS)  

---

📘 How to Use
1. Open the `.sql` files in SSMS.  
2. Run the table creation scripts first (in the `banking system` folder).
3. Then execute the stored procedures (in the `stored procedures` folder).  
4. Test the database by inserting and retrieving customer or transaction data.
5. Then execute the stored procedures (in the `stored procedures` folder).  
6. Test the database by inserting and retrieving customer or transaction data.

👤 Author
Kudzaishe Mativenga
