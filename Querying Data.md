---

---
## **SELECT statements**
---
The SELECT statement is the starting point for every query. It's used to specify which columns you want to retrieve from a table.

**Syntax:**
`SELECT column1, column2, ...`  
`FROM table_name;`

**Examples:**
Select all columns from the customers table:

![](attachment/e19bae763accaf1fc26c1b8d14e649d8.png)

**Select specific columns**

![](attachment/3831d0b767398451f6bc93385fbbffb2.png)

**Perform calculations on the fly. This query calculates a 10% bonus for each employee:**

![](attachment/1804968c6057c18ccb9a39d5a12edd62.png)

**Note: The AS keyword is used to alias (rename) a column or calculation in the output.**

## **WHERE clause conditions**
---
**The WHERE clause is used to filter records and return only those that meet a specified condition. It comes after the FROM clause.**

**Syntax:**
`SELECT column1, column2`  
`FROM table_name`  
`WHERE condition;`

***Common Operators:***
-     Comparison: =, <> or != (not equal), >, <, >=, <=
-     Logical: AND, OR, NOT
-     Range: BETWEEN (inclusive range)
-     Null Check: IS NULL, IS NOT NULL

**Examples:**
**Find all employees in the 'Sales' department:**

![](attachment/8c77a6331f7b37827781f070fb7fef73.png)

**Find employees with a salary greater than 75,000 in the 'Engineering' department:**

![](attachment/0a573a5256f8f226bd4f6abaa37bdefc.png)

![](attachment/6dc587751fe1056157067a70843940f1.png)

**Find products with a price between 20 and 50 dollars:**

![](attachment/849c07d0f0a3cfb0267f0a86a8b8a851.png)

## **Pattern matching (LIKE, ILIKE)**
---
The LIKE and ILIKE operators are used in a WHERE clause to search for a specified pattern in a column.
- % represents zero, one, or multiple characters.
- _ represents a single character.
- ILIKE is a PostgreSQL-specific operator that is case-insensitive.

**Examples:
Find products whose name ends with 'berry' (e.g., Strawberry, Blueberry):

![](attachment/d5ef643d5d8824835270486d7b4a767a.png)

## **Regular expressions**
---
For more complex pattern matching than LIKE can handle, PostgreSQL offers powerful Regular Expression operators. The most common is ~.
- ~ : Case-sensitive regular expression match
- ~* : Case-insensitive regular expression match
- !~ : Does not match (case-sensitive)    
- !~* : Does not match (case-insensitive)

**Examples:**
**Find names that start with 'A' or 'B':**

![](attachment/2ff2c4089bb86fb393a121bbd4392748.png)

## **IN and EXISTS operators**
---
**These operators are used to check if a value is present in a set of results.

***IN:*** Used to check if a value matches any value in a list or subquery. Best for static lists or small subqueries.

![](attachment/2db799e6e49292838cde6ef67552c0ad.png)

***EXISTS:*** Used to test for the existence of any rows in a subquery. It returns true if the subquery returns one or more rows. Often more efficient than IN for large datasets because it stops processing as soon as it finds one match.

![](attachment/b3599ef7d2defb80e36501dfa568e0d6.png)

## **CASE statements**
---
**The CASE statement is the SQL equivalent of IF-THEN-ELSE logic. It's used to create conditional output inside your queries.**

**Syntax:**
`SELECT column1,`  
  `CASE`  
    `WHEN condition1 THEN result1`  
    `WHEN condition2 THEN result2`  
    `ELSE result_default`  
  `END AS new_column_name`  
`FROM table_name;`

**Example:**

![](attachment/f1b9c2ac254a889f6bace85be24846ae.png)

## **Common Table Expressions (CTEs)**
---
**CTEs (also called "WITH clauses") allow you to define a temporary named result set that you can reference within your main SELECT, INSERT, UPDATE, or DELETE statement. They are fantastic for breaking down complex queries into simple, logical parts.**

**Syntax:**
`WITH cte_name AS (`  
  `-- Subquery here`  
  `SELECT ...`  
  `FROM ...`  
  `WHERE ...`  
`)`  
`-- Main query that uses the CTE`  
`SELECT *`  
`FROM cte_name`  
`WHERE ...;`

**Example:**

![](attachment/0dfe381b00d8985b818dbcff09248d92.png)