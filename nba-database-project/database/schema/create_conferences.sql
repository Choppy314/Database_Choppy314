-- Conferences
CREATE TABLE conferences (
    conference_id SERIAL PRIMARY KEY,
    conference_name VARCHAR(10) UNIQUE NOT NULL
);