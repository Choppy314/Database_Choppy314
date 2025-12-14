-- Lakers vs Clippers Comparison
SELECT 
    'Lakers' as team,
    COUNT(*) as player_count,
    ROUND(AVG(ps.points_per_game), 1) as avg_ppg,
    ROUND(AVG(p.experience), 1) as avg_experience,
    ROUND(AVG(p.weight_pounds), 0) as avg_weight
FROM players p
JOIN player_stats ps ON p.player_id = ps.player_id
WHERE p.team_id = (SELECT team_id FROM teams WHERE team_name = 'Los Angeles Lakers')
  AND ps.season = '2024-25'
UNION ALL
SELECT 
    'Clippers',
    COUNT(*),
    ROUND(AVG(ps.points_per_game), 1),
    ROUND(AVG(p.experience), 1),
    ROUND(AVG(p.weight_pounds), 0)
FROM players p
JOIN player_stats ps ON p.player_id = ps.player_id
WHERE p.team_id = (SELECT team_id FROM teams WHERE team_name = 'Los Angeles Clippers')
  AND ps.season = '2024-25';

-- Rookies Analysis (Experience = 0)
SELECT 
    p.first_name || ' ' || p.last_name as rookie,
    t.team_name,
    ps.points_per_game,
    ps.minutes_per_game,
    ps.field_goal_percentage
FROM players p
JOIN teams t ON p.team_id = t.team_id
JOIN player_stats ps ON p.player_id = ps.player_id
WHERE p.experience = 0
  AND ps.season = '2024-25'
ORDER BY ps.points_per_game DESC;

-- Left-Handed Players Analysis
SELECT 
    p.first_name || ' ' || p.last_name as lefty_player,
    t.team_name,
    ps.position,
    ps.points_per_game,
    ps.assists_per_game,
    p.height
FROM players p
JOIN teams t ON p.team_id = t.team_id
JOIN player_stats ps ON p.player_id = ps.player_id
WHERE p.shoots = 'Left'
  AND ps.season = '2024-25'
ORDER BY ps.points_per_game DESC;

-- 14. Division Standings
SELECT 
    d.division_name,
    c.conference_name,
    t.team_name,
    t.wins,
    t.losses,
    ROUND(t.wins::DECIMAL / (t.wins + t.losses), 3) as win_pct
FROM teams t
JOIN divisions d ON t.division_id = d.division_id
JOIN conferences c ON d.conference_id = c.conference_id
ORDER BY d.division_name, win_pct DESC;

-- Player Height Analysis
SELECT 
    CASE 
        WHEN (SPLIT_PART(p.height, '-', 1)::INTEGER * 12 + 
              SPLIT_PART(p.height, '-', 2)::INTEGER) >= 84 THEN '7ft+'
        WHEN (SPLIT_PART(p.height, '-', 1)::INTEGER * 12 + 
              SPLIT_PART(p.height, '-', 2)::INTEGER) >= 78 THEN '6''6" - 6''11"'
        WHEN (SPLIT_PART(p.height, '-', 1)::INTEGER * 12 + 
              SPLIT_PART(p.height, '-', 2)::INTEGER) >= 72 THEN '6''0" - 6''5"'
        ELSE 'Under 6ft'
    END as height_group,
    COUNT(*) as player_count,
    ROUND(AVG(ps.points_per_game), 1) as avg_ppg,
    ROUND(AVG(ps.total_rebounds_per_game), 1) as avg_rpg,
    ROUND(AVG(ps.blocks_per_game), 1) as avg_bpg
FROM players p
JOIN player_stats ps ON p.player_id = ps.player_id
WHERE ps.season = '2024-25'
GROUP BY height_group
ORDER BY height_group;