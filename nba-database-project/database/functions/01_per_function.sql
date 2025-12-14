-- Player Efficiency Rating (PER) Calculation
CREATE OR REPLACE FUNCTION calculate_player_per(
    player_id_param INTEGER,
    season_param VARCHAR DEFAULT '2024-25'
) RETURNS DECIMAL AS $$
DECLARE
    per_score DECIMAL;
    stats_record RECORD;
BEGIN
    SELECT 
        points_per_game,
        total_rebounds_per_game,
        assists_per_game,
        steals_per_game,
        blocks_per_game,
        turnovers_per_game,
        field_goals_attempted_per_game,
        field_goals_per_game,
        free_throws_attempted_per_game,
        free_throws_per_game,
        games_played
    INTO stats_record
    FROM player_stats 
    WHERE player_id = player_id_param 
      AND season = season_param;
    
    IF stats_record.games_played = 0 THEN
        RETURN 0;
    END IF;
    
    per_score := (
        stats_record.points_per_game + 
        stats_record.total_rebounds_per_game + 
        stats_record.assists_per_game + 
        stats_record.steals_per_game + 
        stats_record.blocks_per_game - 
        (stats_record.field_goals_attempted_per_game - stats_record.field_goals_per_game) - 
        (stats_record.free_throws_attempted_per_game - stats_record.free_throws_per_game) - 
        stats_record.turnovers_per_game
    ) / stats_record.games_played;
    
    RETURN ROUND(per_score, 2);
END;
$$ LANGUAGE plpgsql;