CREATE TABLE players (
    player_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    team_id INTEGER REFERENCES teams(team_id),
	height VARCHAR(10),
    weight_pounds INTEGER,
	shoots VARCHAR(5) CHECK (shoots IN ('Right', 'Left')),
    experience INTEGER
);