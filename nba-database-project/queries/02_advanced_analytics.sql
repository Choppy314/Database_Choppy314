-- Player Efficiency Calculation
SELECT 
    p.first_name || ' ' || p.last_name as player,
    t.team_name,
    ps.points_per_game,
    ps.total_rebounds_per_game,
    ps.assists_per_game,
    ps.steals_per_game,
    ps.blocks_per_game,
    ps.turnovers_per_game,
    ROUND(
        (ps.points_per_game + ps.total_rebounds_per_game + ps.assists_per_game +
         ps.steals_per_game + ps.blocks_per_game - ps.turnovers_per_game), 
        1
    ) as efficiency_score
FROM players p
JOIN player_stats ps ON p.player_id = ps.player_id
JOIN teams t ON p.team_id = t.team_id
WHERE ps.season = '2024-25'
ORDER BY efficiency_score DESC
LIMIT 20;

-- Shooting Efficiency Analysis
SELECT 
    p.first_name || ' ' || p.last_name as player,
    t.team_name,
    ps.field_goal_percentage as fg_pct,
    ps.three_point_percentage as three_pct,
    ps.free_throw_percentage as ft_pct,
    ps.effective_field_goal_percentage as efg_pct,
    CASE 
        WHEN ps.effective_field_goal_percentage > 0.55 THEN 'Elite'
        WHEN ps.effective_field_goal_percentage > 0.50 THEN 'Good'
        WHEN ps.effective_field_goal_percentage > 0.45 THEN 'Average'
        ELSE 'Below Average'
    END as efficiency_tier
FROM players p
JOIN player_stats ps ON p.player_id = ps.player_id
JOIN teams t ON p.team_id = t.team_id
WHERE ps.season = '2024-25'
  AND ps.field_goals_attempted_per_game >= 5
ORDER BY ps.effective_field_goal_percentage DESC
LIMIT 15;

-- All-Around Players (20+ PPG, 5+ RPG, 5+ APG)
SELECT 
    p.first_name || ' ' || p.last_name as player,
    t.team_name,
    ps.points_per_game as ppg,
    ps.total_rebounds_per_game as rpg,
    ps.assists_per_game as apg,
    ROUND(ps.points_per_game + ps.total_rebounds_per_game + ps.assists_per_game, 1) as total_impact
FROM players p
JOIN player_stats ps ON p.player_id = ps.player_id
JOIN teams t ON p.team_id = t.team_id
WHERE ps.season = '2024-25'
  AND ps.points_per_game >= 20
  AND ps.total_rebounds_per_game >= 5
  AND ps.assists_per_game >= 5
ORDER BY total_impact DESC;

-- 9. Team Composition Analysis
SELECT 
    t.team_name,
    COUNT(p.player_id) as roster_size,
    ROUND(AVG(p.experience), 1) as avg_experience,
    ROUND(AVG(ps.points_per_game), 1) as avg_team_ppg,
    ROUND(AVG(p.weight_pounds), 0) as avg_weight,
    STRING_AGG(DISTINCT ps.position, ', ' ORDER BY ps.position) as positions_represented
FROM teams t
JOIN players p ON t.team_id = p.team_id
JOIN player_stats ps ON p.player_id = ps.player_id AND ps.season = '2024-25'
GROUP BY t.team_name
ORDER BY avg_team_ppg DESC;

-- Conference Comparison
SELECT 
    c.conference_name,
    COUNT(DISTINCT t.team_id) as team_count,
    ROUND(AVG(t.wins), 1) as avg_wins,
    ROUND(AVG(t.points_per_game), 1) as avg_ppg,
    ROUND(AVG(t.offensive_rating), 1) as avg_off_rating,
    ROUND(AVG(t.defensive_rating), 1) as avg_def_rating
FROM conferences c
JOIN divisions d ON c.conference_id = d.conference_id
JOIN teams t ON d.division_id = t.division_id
GROUP BY c.conference_name;