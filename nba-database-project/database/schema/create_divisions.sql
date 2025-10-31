-- Divisions
CREATE TABLE divisions (
    division_id SERIAL PRIMARY KEY,
    division_name VARCHAR(20) UNIQUE NOT NULL,
    conference_id INTEGER REFERENCES conferences(conference_id)
);