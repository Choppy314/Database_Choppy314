-- Turnover Leaders (who to avoid)
SELECT 
    p.first_name || ' ' || p.last_name as player,
    t.team_name,
    ps.turnovers_per_game as tov,
    ps.assists_per_game as apg,
    ROUND(ps.assists_per_game / NULLIF(ps.turnovers_per_game, 0), 2) as ast_to_ratio
FROM players p
JOIN player_stats ps ON p.player_id = ps.player_id
JOIN teams t ON p.team_id = t.team_id
WHERE ps.season = '2024-25'
  AND ps.turnovers_per_game >= 2
ORDER BY ps.turnovers_per_game DESC
LIMIT 15;

-- Three-Point Specialists
SELECT 
    p.first_name || ' ' || p.last_name as player,
    t.team_name,
    ps.three_point_made_per_game as threes_made,
    ps.three_point_attempted_per_game as threes_attempted,
    ps.three_point_percentage as three_pct,
    ROUND(ps.three_point_made_per_game * 3, 1) as points_from_threes
FROM players p
JOIN player_stats ps ON p.player_id = ps.player_id
JOIN teams t ON p.team_id = t.team_id
WHERE ps.season = '2024-25'
  AND ps.three_point_attempted_per_game >= 3
  AND ps.three_point_percentage >= 0.38
ORDER BY ps.three_point_made_per_game DESC
LIMIT 15;

-- Defensive Specialists
SELECT 
    p.first_name || ' ' || p.last_name as player,
    t.team_name,
    ps.steals_per_game as spg,
    ps.blocks_per_game as bpg,
    ps.total_rebounds_per_game as rpg,
    ps.steals_per_game + ps.blocks_per_game as defensive_impact
FROM players p
JOIN player_stats ps ON p.player_id = ps.player_id
JOIN teams t ON p.team_id = t.team_id
WHERE ps.season = '2024-25'
  AND (ps.steals_per_game >= 1.5 OR ps.blocks_per_game >= 1.0)
ORDER BY defensive_impact DESC
LIMIT 15;

-- Minutes Leaders
SELECT 
    p.first_name || ' ' || p.last_name as player,
    t.team_name,
    ps.minutes_per_game as mpg,
    ps.points_per_game as ppg,
    ps.assists_per_game as apg,
    ps.total_rebounds_per_game as rpg,
    ROUND(ps.points_per_game / ps.minutes_per_game * 36, 1) as points_per_36
FROM players p
JOIN player_stats ps ON p.player_id = ps.player_id
JOIN teams t ON p.team_id = t.team_id
WHERE ps.season = '2024-25'
  AND ps.minutes_per_game >= 30
ORDER BY ps.minutes_per_game DESC
LIMIT 20;

-- Complete Player Profile Query
SELECT 
    p.first_name || ' ' || p.last_name as "Player",
    t.team_name as "Team",
    ps.position as "Pos",
    p.height as "Height",
    p.experience || ' yrs' as "Exp",
    ps.games_played as "GP",
    ps.minutes_per_game as "MPG",
    ps.points_per_game as "PPG",
    ps.total_rebounds_per_game as "RPG",
    ps.assists_per_game as "APG",
    ps.steals_per_game as "SPG",
    ps.blocks_per_game as "BPG",
    ps.field_goal_percentage as "FG%",
    ps.three_point_percentage as "3P%",
    ps.free_throw_percentage as "FT%"
FROM players p
JOIN teams t ON p.team_id = t.team_id
JOIN player_stats ps ON p.player_id = ps.player_id
WHERE ps.season = '2024-25'
  AND p.last_name LIKE '%James%'  -- Example: Search for James
ORDER BY ps.points_per_game DESC;