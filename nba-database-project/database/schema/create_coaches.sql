-- Coaches
CREATE TABLE coaches (
    coach_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    team_id INTEGER REFERENCES teams(team_id)
);