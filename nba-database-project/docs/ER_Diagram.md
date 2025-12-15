## Entities and Relationships
---
conferences (1) ---< divisions (many)
     |
     v
divisions (1) ---< TEAMS (many)
     |
     +---< PLAYERS (many) ---< PLAYER_STATS (many)
     |
     +---< COACHES (1) [one-to-one]
     |
     +---< PLAYER_STATS (indirectly through players)

## Entity Details:
---
### conferences (1) ───< divisions (many)
- conference_id (PK)
- conference_name (Eastern, Western)

### divisions (1) ───< teams (many)
- division_id (PK)
- division_name (Atlantic, Pacific, etc.)
- conference_id (FK → conferences)

### teams ───< players (many)
- team_id (PK)
- team_name
- city
- division_id (FK → divisions)
- wins, losses, stats...

### coaches ───> teams(1) (One team has one current coach)
- coach_id (PK)
- first_name, last_name
- team_id (FK → teams)

### players (1) ───< player_stats (many)
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