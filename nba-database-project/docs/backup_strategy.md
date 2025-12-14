## Backup Commands

### 1. Full Database Backup
```bash
# Backup entire database
pg_dump -U postgres -d nba_database -F c -f nba_backup_$(date +%Y%m%d).dump

# Backup with compression
pg_dump -U postgres -d nba_database | gzip > nba_backup_$(date +%Y%m%d).sql.gz

# Backup schema only (no data)
pg_dump -U postgres -d nba_database --schema-only -f nba_schema.sql

# Backup data only (no schema)
pg_dump -U postgres -d nba_database --data-only -f nba_data.sql

# Restore from custom format
pg_restore -U postgres -d nba_database nba_backup.dump

# Restore from plain SQL
psql -U postgres -d nba_database -f nba_backup.sql

# Restore only players table
pg_restore -U postgres -d nba_database -t players nba_backup.dump
