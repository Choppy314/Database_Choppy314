## Entities and Relationships
---
conferences (1) ---< (many) divisions (1) ---< (many) teams (1) ---< (many) players  
| |  
| (1) coaches  
|  
(many) teams ---< (many) player_stats


## Entity Details:
---
### conferences
- conference_id (PK)
- conference_name (Eastern, Western)

### divisions  
- division_id (PK)
- division_name (Atlantic, Pacific, etc.)
- conference_id (FK → conferences)

### teams
- team_id (PK)
- team_name
- city
- division_id (FK → divisions)
- wins, losses, stats...

### coaches
- coach_id (PK)
- first_name, last_name
- team_id (FK → teams)

### players
- player_id (PK)
- first_name, last_name
- team_id (FK → teams)
- height, weight, shoots, experience

### player_stats
- stat_id (PK)
- player_id (FK → players)
- season (2024-25)
- position, games_played, points_per_game, etc.

## Cardinalities:
- One conference has many divisions
- One division has many teams
- One team has many players
- One team has one current coach
- One player has many season stats