A transaction is a sequence of one or more SQL operations that are treated as a single logical unit of work. Either all operations in the transaction succeed (commit), or none of them do (rollback). This ensures data consistency and integrity in the database. Think of a transaction like a bank transfer: when you transfer money from Account A to Account B, two operations must happen - deducting from Account A and adding to Account B. Both must succeed, or neither should happen. A transaction ensures this "all-or-nothing" behavior.

**Key characteristics of transactions:**
- **Atomicity:** All operations succeed or all fail
- **Consistency:** Database moves from one valid state to another
- **Isolation:** Concurrent transactions don't interfere with each other
* **Durability:** Committed changes are permanently stored

## **BEGIN, COMMIT, ROLLBACK**
---
PostgreSQL provides three main commands to control transactions:

### **BEGIN - Start a new transaction**
`BEGIN;`  
`-- or alternatively`  
`BEGIN TRANSACTION;`  
`-- or simply`  
`START TRANSACTION;`

### **COMMIT - Save all changes made in the transaction**

![](attachment/6163ab2f9be849bbe9e8a0f3640fb49c.png)

### **ROLLBACK - Undo all changes made in the transaction**

![](attachment/d946705e3f2bc1c54f109f8a459aa5a2.png)

![](attachment/edd8a011b3c237012a42c83305ee798c.png)

## **ACID properties in detail**
---
ACID is an acronym that describes the four fundamental properties that guarantee reliable database transactions:

### **ATOMICITY**
- Ensures that all operations within a transaction are completed successfully or none at all
- If any operation fails, the entire transaction is rolled back
- Creates an "all-or-nothing" scenario

![](attachment/d1390c72b09f8e8b4d988d61422281d2.png)

### **CONSISTENCY**
- Ensures the database moves from one valid state to another
- All database rules, constraints, and triggers are satisfied
- Data integrity is maintained throughout the transaction

![](attachment/c49e266594ee6629a18d0346041371b9.png)

### **ISOLATION**
- Ensures that concurrent transactions don't interfere with each other
- Each transaction appears to execute in isolation from others
- Controlled by isolation levels (discussed below)

### **DURABILITY**
- Once a transaction is committed, changes are permanent
- Data survives system crashes, power failures, etc.
- Changes are stored in non-volatile storage

## **Isolation levels**
---
Isolation levels control how transactions interact with each other. PostgreSQL supports four standard isolation levels:

### **READ UNCOMMITTED**
- Lowest isolation level
- Allows dirty reads (reading uncommitted changes from other transactions)
- Rarely used in practice

![](attachment/fac6ab1db8d587b19b8a733f7e6d2e92.png)

### **READ COMMITTED (Default)**
- Most commonly used isolation level
- Prevents dirty reads
- Allows non-repeatable reads and phantom reads

![](attachment/638d8241780c4296832ac9dc8e3d6f88.png)

### **REPEATABLE READ**
- Prevents dirty reads and non-repeatable reads
- Same SELECT query returns same results throughout transaction
- May still experience phantom reads

![](attachment/a14dbcb2312b42bcf94b5ca25f93d0f3.png)

### **SERIALIZABLE**
- Highest isolation level
- Prevents all read phenomena (dirty reads, non-repeatable reads, phantom reads)
- Transactions appear to execute serially

![](attachment/b748bd457bb52da8e3061bd5d5714539.png)

**Setting session-level isolation:**
`SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;`

## **Savepoints**
---
Savepoints allow you to create intermediate points within a transaction that you can rollback to without rolling back the entire transaction.

### **Creating and using savepoints:**

![](attachment/b935e9d08236276e7c0bc88651277501.png)

### **Multiple savepoints:**

![](attachment/23cf5d33df1bc0ec8fb4cd22dde656fa.png)

![](attachment/ed6eed659a9c1842a7a9db294be1683e.png)

## **Transaction best practices**
---
### **Keep transactions short and focused**

![](attachment/10d41a3348b4a6ced328c1efffee5142.png)

### **Handle errors properly**

![](attachment/3cad727d8a9040c4995849e693907d84.png)

### **Use appropriate isolation levels**

**-- For financial operations, use higher isolation**
`BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;`  
`-- Critical financial operations here`  
`COMMIT;`  
  
`-- For reporting, READ COMMITTED is usually sufficient`  
`BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;`  
`-- Generate reports here`  
`COMMIT;`

### **Use savepoints for complex operations**

![](attachment/d5b439ad52b99f3c384d132be204d7d6.png)

### **Monitor transaction locks and deadlocks**

![](attachment/40043e13488b93fa1e3dadef5190d891.png)

### **Use explicit transactions for multiple operations**

![](attachment/9ab1acb8d82c8fe1967ccd8db8fac72e.png)

![](attachment/3293d6c715a525b649da534852a6b2f0.png)

