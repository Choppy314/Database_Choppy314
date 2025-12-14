## Table: players
| Column | Type | Description | Constraints |
|--------|------|-------------|-------------|
| player_id | SERIAL | Unique player identifier | PRIMARY KEY |
| first_name | VARCHAR(50) | Player's first name | NOT NULL |
| last_name | VARCHAR(50) | Player's last name | NOT NULL |
| team_id | INTEGER | Current team | FOREIGN KEY (teams) |
| experience | INTEGER | Seasons before current | 0-30 range |
| height | VARCHAR(10) | Height in feet-inches | Format: X-Y |
| weight_pounds | INTEGER | Weight in pounds | 150-350 range |
| shoots | VARCHAR(5) | Shooting hand | 'Right' or 'Left' |
## Table: player_stats
| Column | Type | Description | Constraints |
|--------|------|-------------|-------------|
| stat_id | SERIAL | Unique stat record | PRIMARY KEY |
| player_id | INTEGER | Player reference | FOREIGN KEY (players) |
| season | VARCHAR(7) | Season year | Format: YYYY-YY |
| position | VARCHAR(2) | Position played | PG,SG,SF,PF,C |
| points_per_game | DECIMAL(4,1) | Average points | 0-50 range |
| ... | ... | ... | ... |
## Key Relationships:
- player_stats.player_id → players.player_id
- players.team_id → teams.team_id  
- teams.division_id → divisions.division_id
- divisions.conference_id → conferences.conference_id
