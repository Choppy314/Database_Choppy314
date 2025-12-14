-- Team Standings with Win Percentage
SELECT 
    t.team_name,
    t.city,
    t.wins,
    t.losses,
    ROUND(t.wins::DECIMAL / (t.wins + t.losses), 3) as win_pct,
    t.points_per_game as ppg,
    t.points_allowed_per_game as opp_ppg
FROM teams t
ORDER BY win_pct DESC;

-- Top 15 Scorers
SELECT 
    p.first_name || ' ' || p.last_name as player,
    t.team_name,
    ps.points_per_game as ppg,
    ps.assists_per_game as apg,
    ps.total_rebounds_per_game as rpg,
    ps.field_goal_percentage as fg_pct
FROM players p
JOIN player_stats ps ON p.player_id = ps.player_id
JOIN teams t ON p.team_id = t.team_id
WHERE ps.season = '2024-25'
ORDER BY ps.points_per_game DESC
LIMIT 15;

-- Players by Position
SELECT 
    ps.position,
    COUNT(*) as player_count,
    ROUND(AVG(ps.points_per_game), 1) as avg_ppg,
    ROUND(AVG(ps.assists_per_game), 1) as avg_apg,
    ROUND(AVG(ps.total_rebounds_per_game), 1) as avg_rpg
FROM player_stats ps
WHERE ps.season = '2024-25'
GROUP BY ps.position
ORDER BY avg_ppg DESC;

-- Team Efficiency (Offense vs Defense)
SELECT 
    team_name,
    offensive_rating,
    defensive_rating,
    offensive_rating - defensive_rating as net_rating,
    pace
FROM teams
ORDER BY net_rating DESC;

-- Veteran Players (10+ years experience)
SELECT 
    p.first_name || ' ' || p.last_name as veteran,
    t.team_name,
    p.experience,
    ps.points_per_game,
    ps.assists_per_game
FROM players p
JOIN teams t ON p.team_id = t.team_id
JOIN player_stats ps ON p.player_id = ps.player_id
WHERE p.experience >= 10
  AND ps.season = '2024-25'
ORDER BY p.experience DESC;