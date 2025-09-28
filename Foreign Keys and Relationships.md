## **Creating foreign key constraints**
---
### **Method 1: Inline constraint during table creation**

![](attachment/4367a523bcb3f7b636743f50bfc97852.png)

### **Method 2: Table-level constraint during creation**

![](attachment/b76197da0bd3f0ff5709e8bbcb95e9ed.png)

## **Method 3: Adding constraint to existing table**

![](attachment/a5704c6a680245cf098e9d178ac8cc79.png)

## **Method 4: Named constraint during table creation**

![](attachment/9447fc3cd1058d215236a92816b37f6c.png)

## Referential Integrity
---
Referential Integrity is a database concept that ensures relationships between tables remain consistent. When a foreign key is defined, the database automatically enforces rules to maintain data consistency

### **Key principles of referential integrity:**
- Insert Rule: You cannot insert a record with a foreign key value that doesn't exist in the referenced table
- Update Rule: You cannot update a foreign key to a value that doesn't exist in the referenced table
- Delete Rule: When you try to delete a record that is referenced by foreign keys, the database must handle this according to the specified CASCADE options

![](attachment/3147762ff13186316cb7c4245520fa91.png)

![](attachment/43671ab648a19f74aa9723bc77796496.png)

![](attachment/ef7edb27333fda0d3bb538257cc0d159.png)
## CASCADE options (ON DELETE, ON UPDATE)

CASCADE options define what happens when the referenced (parent) record is updated or deleted. PostgreSQL provides several options

#### **ON DELETE Options:**
##### **CASCADE - Automatically delete child records when parent is deleted** 
![](attachment/f775f37e5ed3992405db1e8d3e17a9f2.png)

##### **SET NULL - Set foreign key to NULL when parent is deleted**

![](attachment/c8519a0861d798b74a5120c15894e61d.png)

##### **SET DEFAULT - Set foreign key to its default value when parent is deleted**

![](attachment/25db4264ba4e76f8b743820c23a5dc7d.png)

##### **RESTRICT (default) - Prevent deletion of parent if child records exist**

![](attachment/95f60072fca9bc0b4100f01f7137f78d.png)

#### **ON UPDATE Options:**
##### **CASCADE - Update foreign key values when parent key changes**

![](attachment/4b2164ac58aef4ef3bebc20c1a6d86ca.png)

##### **Combined CASCADE options:**

![](attachment/bdb2a121ead39a05a8964e3da423494e.png)

## **One-to-one relationships**
---
A one-to-one relationship means that each record in Table A corresponds to exactly one record in Table B, and vice versa. This is implemented using a foreign key with a UNIQUE constraint.

**Example:**

![](attachment/7b81d2f7d853aeeca7ec3a72fb32b5f0.png)

**Alternative approach - sharing the same primary key:**

![](attachment/eb028d9c971bea64ebd2b1497b711d97.png)

**Example usage:**

![](attachment/c0ca71a9d072547a1f3b3b8fb21ec28f.png)

## **One-to-many relationships**
---
A one-to-many relationship means that one record in Table A can correspond to multiple records in Table B, but each record in Table B corresponds to only one record in Table A. This is the most common type of relationship.

**Examples:**

![](attachment/ba19f474c1ad0e978ab98691cd8072f2.png)

**Example usage:**

![](attachment/1a2a7dc1d1797f6fda25dac079016a3a.png)

## **Many-to-many relationships**
---
A many-to-many relationship means that multiple records in Table A can correspond to multiple records in Table B. This requires a junction table (also called a bridge table or associative table) that contains foreign keys referencing both tables.

**Example:**

![](attachment/f622c4ac71b656145a5341bef8130948.png)

**Example usage:**

![](attachment/c2010d81f0a53d2547e3971cb10083e4.png)

![](attachment/bfd9adb87285fffc5d7c3529cd6b79bf.png)

![](attachment/5e8121d2a850be05694b42b2e5f73c53.png)

