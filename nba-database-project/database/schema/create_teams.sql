-- Teams 
CREATE TABLE teams (
    team_id SERIAL PRIMARY KEY,
    team_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    division_id INTEGER REFERENCES divisions(division_id),
    wins INTEGER DEFAULT 0,
    losses INTEGER DEFAULT 0,
    
    -- Basic stats
    points_per_game DECIMAL(4,1),
    points_allowed_per_game DECIMAL(4,1),
    
    -- Advanced metrics
    pace DECIMAL(4,1),                    -- Possessions per 48 minutes
    offensive_rating DECIMAL(4,1),        -- Points per 100 possessions
    defensive_rating DECIMAL(4,1)         -- Points allowed per 100 possessions
);