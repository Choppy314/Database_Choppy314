## **COPY Command**
---
The COPY command is PostgreSQL's most efficient method for bulk data transfer between files and database tables. It provides fast import and export capabilities for large datasets and supports various file formats, with CSV being the most common.

The COPY command can work in two directions:
- **COPY TO:** Export data from a table to a file
* **COPY FROM:** Import data from a file to a table

Think of COPY as a high-speed data pipeline that bypasses the normal SQL processing overhead, making it ideal for ETL (Extract, Transform, Load) operations and data migrations.

**Basic COPY syntax:**
`-- Export data to file`  
`COPY table_name TO '/path/to/file.csv' WITH CSV HEADER;`  
`-- Import data from file`  
`COPY table_name FROM '/path/to/file.csv' WITH CSV HEADER;`

**Advanced COPY options:**

**-- Export with custom delimiter and null representation:**
`university-# \copy employees TO 'C:\Users\user\Documents\employees.csv' WITH DELIMITER '|' NULL 'N/A' CSV HEADER;`
`COPY 5`

`emp_id|name|salary|department|age|email|manager_id|tenure`
`3|Aziz|78952.00|Engineering|42|N/A|N/A|3`
`4|Sultan|47538.00|Sales|28|sultan@company.com|3|2`
`5|Bektur|78731.00|IT|35|bektur@company.com|3|6`
`6|Diana|800000.00|Engineering|29|diana@company.com|3|4`
`7|Aziret|7878.00|Engineering|53|N/A|6|7`

**-- Import specific columns only:**
`university-# \copy employees(name, email) TO 'C:\Users\user\Documents\new_employees.csv' WITH CSV HEADER;`
`COPY 5`

`name,email`
`Aziz,`
`Sultan,sultan@company.com`
`Bektur,bektur@company.com`
`Diana,diana@company.com`
`Aziret,`

**-- Export query results:**
`university-# \copy (SELECT * FROM employees WHERE department = 'IT') TO 'C:\Users\user\Documents\it_employees.csv' WITH CSV HEADER;`
`COPY 1`

`emp_id,name,salary,department,age,email,manager_id,tenure`
`5,Bektur,78731.00,IT,35,bektur@company.com,3,6`

## **CSV Import/Export**
---
CSV (Comma-Separated Values) is the most common format for data exchange between different systems. PostgreSQL provides excellent support for CSV operations through the COPY command and various formatting options.

**CSV Export Examples:**

**-- Basic CSV export with headers:**

`university-# \copy products TO 'C:\Users\user\Documents\products.csv' WITH CSV HEADER`
`COPY 5`

`product_id,product_name,price`
`1,Laptop,999.99`
`2,Smartphone,699.99`
`3,Headphones,149.99`
`4,Tablet,399.99`
`5,Smartwatch,199.99`

**-- CSV export with custom quote character and delimiter:**

`university-# \copy customers TO 'C:\Users\user\Documents\customers.csv' WITH CSV HEADER DELIMITER ';' QUOTE '"';`
`COPY 15`

`customer_id;name;email`
`1;John Smith;john.smith@email.com`
`2;Sarah Johnson;sarah.j@email.com`
`3;Mike Davis;mike.davis@email.com`
`4;Emily Wilson;emily.wilson@email.com`
`5;David Brown;david.brown@email.com`
`6;Lisa Thompson;lisa.thompson@email.com`
`8;Alice;alice@email.com`
`9;Alice;alice@email.com`
`11;Alice;alice@email.com`
`12;Alice;alice@email.com`
`13;Alice;alice@email.com`
`14;Alice;alice@email.com`
`15;Alice;alice@email.com`
`16;John Doe;john@example.com`
`17;John Doe;john@example.com`

**CSV Import Examples:**

`-- Basic CSV import (assuming table already exists)`  
`COPY products FROM '/tmp/products.csv' WITH CSV HEADER;`  
  
`-- Import with error handling - skip bad rows`  
`COPY products FROM '/tmp/products_with_errors.csv'`  
`WITH CSV HEADER ON_ERROR IGNORE;`  
  
`-- Import with specific encoding`  
`COPY products FROM '/tmp/products_utf8.csv'`  
`WITH CSV HEADER ENCODING 'UTF8';

**Handling special cases:**

`-- Deal with embedded commas and quotes`  
`COPY customer_feedback TO '/tmp/feedback.csv'`  
`WITH CSV HEADER DELIMITER ',' QUOTE '"' ESCAPE '"';`  
  
`-- Custom NULL representation`  
`COPY sales_data FROM '/tmp/sales.csv'`  
`WITH CSV HEADER NULL 'NULL';`

## **pg_dump and pg_restore**
---
pg_dump and pg_restore are PostgreSQL's primary tools for database backup and restoration. pg_dump creates logical backups by generating SQL commands or custom binary formats, while pg_restore reconstructs databases from these backups.

`pg_dump -h localhost -U username -d database_name > backup.sql`
`pg_dump -h localhost -U username -d database_name -Fc > backup.dump`
`pg_dump -h localhost -U username -d database_name -t employees -t departments > tables_backup.sql`
`pg_dump -h localhost -U username -d database_name -Fc -v > backup.dump`
`pg_restore -h localhost -U username -d target_database backup.dump`
`createdb new_database`
`pg_restore -h localhost -U username -d new_database backup.dump`
`pg_restore -h localhost -U username -d database_name -t employees backup.dump`
`pg_restore -h localhost -U username -d database_name -j 4 backup.dump`

`pg_dump -h localhost -U username -d database_name -s > schema_only.sql`
`pg_dump -h localhost -U username -d database_name -a > data_only.sql`
`pg_dump -h localhost -U username -d database_name -T log_table -T temp_data > backup_without_logs.sql`

## _Full Database Backups_
---
Full database backups capture the complete state of your database at a specific point in time. They include all data, schema objects, and database settings, providing a complete recovery solution.

### **Creating full backups:**

`pg_dumpall -h localhost -U postgres > full_cluster_backup.sql`
`pg_dump -h localhost -U username -d production_db -Fc --verbose > full_production_backup.dump`
`pg_dump -h localhost -U username -d database_name -Fc -O > backup_with_ownership.dump`

### **Automated backup script example:**

`#!/bin/bash`
`DATE=$(date +%Y%m%d_%H%M%S)`
`BACKUP_DIR="/backups/postgresql"`
`DB_NAME="production_db"`

`pg_dump -h localhost -U backup_user -d $DB_NAME -Fc > "$BACKUP_DIR/${DB_NAME}_${DATE}.dump"`
`find $BACKUP_DIR -name "${DB_NAME}_*.dump" -mtime +7 -delete`

## **Incremental Backups**
---
Incremental backups capture only the changes made since the last backup, reducing storage requirements and backup time. PostgreSQL supports incremental backups through Write-Ahead Logging (WAL) and base backups.

### **Setting up continuous archiving:**

`archive_mode = on`
`archive_command = 'cp %p /backup/wal/%f'`
`wal_level = replica;`

### **Creating base backup:**

`pg_basebackup -h localhost -U replication_user -D /backup/base -Ft -z -P`
`pg_basebackup -h localhost -U replication_user -D /backup/base -x -P`
`--Manual WAL switch`
`SELECT pg_switch_wal();`
`--Archive cleanup`
`pg_archivecleanup /backup/wal 000000010000000000000010`

### **WAL archive management:**

`--  Manual WAL file archiving`  
`pg_switch_wal();  -- Force WAL segment switch`  
  
 `-- Archive cleanup (remove old WAL files)`  
`pg_archivecleanup /backup/wal 000000010000000000000010`

## **Point-in-Time Recovery (PITR)**
---
Point-in-Time Recovery allows you to restore your database to any specific moment in time, provided you have a base backup and the necessary WAL files. This is crucial for recovering from data corruption or accidental data loss.

### **PITR setup requirements:**

`-- Required configuration in postgresql.conf`  
`wal_level = replica`  
`archive_mode = on`  
`archive_command = 'cp %p /backup/wal/%f'`  
`restore_command = 'cp /backup/wal/%f %p'`

### **Performing PITR:**

`sudo systemctl stop postgresql`
`rm -rf /var/lib/postgresql/data/*`
`tar -xf /backup/base/base.tar -C /var/lib/postgresql/data/`
`cat > /var/lib/postgresql/data/recovery.signal << EOF`
`restore_command = 'cp /backup/wal/%f %p'`
`recovery_target_time = '2024-01-15 14:30:00'`
`EOF`
`sudo systemctl start postgresql`

### **Recovery targeting options:**

`recovery_target_time = '2024-01-15 14:30:00'`
`recovery_target_xid = '12345'`
`recovery_target_name = 'before_data_migration'`
`SELECT pg_create_restore_point('before_data_migration');`

## **Data Migration Strategies**
---
Data migration involves moving data between different database systems, versions, or environments. PostgreSQL provides several strategies depending on your specific requirements for downtime, data volume, and complexity.

### **Strategy 1: Dump and Restore (Simple Migration)**

`-- Source database dump`  
`pg_dump -h source_host -U username -d source_db -Fc > migration.dump`  
  
`-- Target database restore`  
`pg_restore -h target_host -U username -d target_db migration.dump`

### **Strategy 2: Logical Replication (Minimal Downtime)**

`-- On source database: Create publication`  
`CREATE PUBLICATION migration_pub FOR ALL TABLES;`  
  
`-- On target database: Create subscription`  
`CREATE SUBSCRIPTION migration_sub`  
`CONNECTION 'host=source_host dbname=source_db user=replication_user'`  
`PUBLICATION migration_pub;`  

### **Strategy 3: Physical Replication (Zero Downtime)**

`wal_level = replica`
`max_wal_senders = 3`
`--Standby creation`
`pg_basebackup -h primary_host -D /var/lib/postgresql/standby -U replication_user -R -P`

### **Strategy 4: ETL Pipeline Migration**

`-- Create staging tables`  
`CREATE TABLE staging_customers AS SELECT * FROM customers WHERE 1=0;`  
`-- Extract data in batches`  
`COPY (SELECT * FROM customers LIMIT 10000 OFFSET 0)`  
`TO '/tmp/customers_batch_1.csv' WITH CSV HEADER;`  
`-- Transform and load`  
`COPY staging_customers FROM '/tmp/customers_batch_1.csv' WITH CSV HEADER;`  
`-- Validate and merge`  
`INSERT INTO target_customers`  
`SELECT * FROM staging_customers`  
`ON CONFLICT (customer_id) DO UPDATE SET ...;`

### **Migration best practices:**

`-- Pre-migration checklist`  
`--  1. Verify source data integrity`  
`SELECT COUNT(*) FROM source_table;`  
  
`-- 2. Test migration on smaller dataset`  
`pg_dump -h source -U user -d db -t small_table | psql -h target -U user -d db`  
  
`-- 3. Monitor migration progress`  
`SELECT pid, usename, application_name, client_addr, state`  
`FROM pg_stat_activity`  
`WHERE application_name = 'pg_dump';`  
  
`-- 4. Post-migration validation`  
`SELECT COUNT(*) FROM target_table;`

### **Handling large table migrations:**

`-- Partition large tables for easier migration`  
`CREATE TABLE large_table_2023 PARTITION OF large_table`  
`FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');`  
  
`-- Migrate partitions individually`  
`pg_dump -h source -U user -d db -t large_table_2023 | psql -h target -U user -d db;`

