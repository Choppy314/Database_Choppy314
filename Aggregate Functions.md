## **What Are Aggregate Functions?**
---
Aggregate functions operate on a set of values and return a single value as a result. They are typically used with the GROUP BY clause to group rows that have the same values in specified columns, and then perform calculations on each group. Think of aggregate functions as mathematical operations that "collapse" multiple rows into a single summary value. For example, if you have sales data for different months, you can use aggregate functions to calculate the total sales, average sales, or count the number of transactions.

## **Common Aggregate Functions**
---
### **COUNT() - Counting Rows**
The COUNT() function returns the number of rows that match a specified condition.

**Syntax:**
`-- Count all rows (including NULLs)`  
`COUNT(*)`  
`-- Count non-NULL values in a specific column`  
`COUNT(column_name)`  
`-- Count distinct values`  
`COUNT(DISTINCT column_name)`

**Examples:**

![](attachment/5ae9f118b87e78a12493840bcab7bc2a.png)

![](attachment/27e23a236e50db7d4f51f05672e01a9b.png)

### **SUM() - Calculating Totals**
**The SUM() function calculates the total sum of numeric values.**

**Examples:**

![](attachment/70bdc6a4f1ea244363ee7095c9acc5e9.png)

## **AVG() - Calculating Averages**
The AVG() function calculates the arithmetic mean of numeric values.

**Examples:**

![](attachment/3a042bf8bb833bda3ff2a5f911020dcd.png)

### **MAX() and MIN() - Finding Extremes**
These functions find the maximum and minimum values respectively.

**Examples:**

![](attachment/f06eca3c1f729b9b0d5eb17d0ae264d0.png)

## **Advanced Aggregate Functions**
---
### **STRING_AGG() - Concatenating Strings**
Concatenates values from multiple rows into a single string with a specified delimiter.

**Examples:**

![](attachment/1c1e56bae165c43511057ec268acf3ed.png)

### **ARRAY_AGG() - Creating Arrays**
Collects values from multiple rows into an array.

![](attachment/7ebd23d20afbf7dd1e7892cdb413803f.png)

### **Statistical Aggregate Functions**

![](attachment/022e27b9239fc0e5196212155bc5c0aa.png)

## **Working with GROUP BY**
---
The GROUP BY clause is essential when using aggregate functions to group rows based on one or more columns.

**Basic GROUP BY**

![](attachment/704c0f04585237cd1925238abcd3aa01.png)

**Multiple Column Grouping**

![](attachment/e9bf4e214b9200abc2f6b7edced4b866.png)

## **GROUP BY with Expressions**
---
![](attachment/b4637819e8f65631c526b135594c02c4.png)

## **HAVING Clause - Filtering Groups**
---
The HAVING clause filters groups created by GROUP BY, similar to how WHERE filters individual rows.

**Key difference: WHERE filters before grouping, HAVING filters after grouping.**

![](attachment/c57218185aad5cc3849382bf498362bb.png)

## **Window Functions vs Aggregate Functions**
---
While aggregate functions collapse rows, window functions perform calculations across rows while preserving individual row details.

![](attachment/0ff6d8b45ab99940d981117896178eeb.png)

### **Handling NULL Values**

![](attachment/a257e3b0e7abed52d6364973c43dfcab.png)

![](attachment/dd92b8ff6c487bdd3e9a7a50ba6b11bc.png)

## **Common Patterns and Best Practices**
---
### **1. Combining Multiple Aggregations**

![](attachment/cedfa9c9bbb14d30ff3d96ea79feca33.png)

### **2. Conditional Aggregation**

![](attachment/fc2eb52363a59cf4d230b7dc8f26d23e.png)

### **3. Percentage Calculations**

![](attachment/ca82547d44bec4bd56b4f8a1d48e8419.png)