-- Player Stats 
CREATE TABLE player_stats (
    stat_id SERIAL PRIMARY KEY,
    player_id INTEGER REFERENCES players(player_id),
    
    -- Basic Info
    season VARCHAR(7),
    age INTEGER,
    team VARCHAR(3),
    league VARCHAR(3) DEFAULT 'NBA',
    position VARCHAR(2),
    
    -- Games
    games_played INTEGER,
    games_started INTEGER,
    
    -- Minutes
    minutes_per_game DECIMAL(4,1),
    
    -- Field Goals
    field_goals_per_game DECIMAL(3,1),
    field_goals_attempted_per_game DECIMAL(4,1),
    field_goal_percentage DECIMAL(4,3),
    
    -- 3-Pointers
    three_point_made_per_game DECIMAL(3,1),
    three_point_attempted_per_game DECIMAL(3,1),
    three_point_percentage DECIMAL(4,3),
    
    -- 2-Pointers
    two_point_made_per_game DECIMAL(3,1),
    two_point_attempted_per_game DECIMAL(3,1),
    two_point_percentage DECIMAL(4,3),
    
    -- Effective FG%
    effective_field_goal_percentage DECIMAL(4,3),
    
    -- Free Throws
    free_throws_per_game DECIMAL(3,1),
    free_throws_attempted_per_game DECIMAL(3,1),
    free_throw_percentage DECIMAL(4,3),
    
    -- Rebounds
    offensive_rebounds_per_game DECIMAL(3,1),
    defensive_rebounds_per_game DECIMAL(3,1),
    total_rebounds_per_game DECIMAL(3,1),
    
    -- Other Stats
    assists_per_game DECIMAL(3,1),
    steals_per_game DECIMAL(3,1),
    blocks_per_game DECIMAL(3,1),
    turnovers_per_game DECIMAL(3,1),
    personal_fouls_per_game DECIMAL(3,1),
    points_per_game DECIMAL(4,1)
);