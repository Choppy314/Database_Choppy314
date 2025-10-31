-- Player Salaries
CREATE TABLE player_salaries (
    salary_id SERIAL PRIMARY KEY,
    player_id INTEGER REFERENCES players(player_id),
    season_year VARCHAR(9) DEFAULT '2024-25',
    salary_amount DECIMAL(12,2)  -- in dollars
);