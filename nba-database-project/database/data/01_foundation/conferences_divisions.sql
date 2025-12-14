-- Insert conferences
INSERT INTO conferences (conference_name) VALUES 
('Eastern'), ('Western');

-- Insert divisions  
INSERT INTO divisions (division_name, conference_id) VALUES
-- Eastern Conference
('Atlantic', 1), ('Central', 1), ('Southeast', 1),

-- Western Conference
('Northwest', 2), ('Pacific', 2), ('Southwest', 2);