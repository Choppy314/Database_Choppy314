-- Insert 2024-25 NBA Teams with actual season statistics

INSERT INTO teams (team_name, city, division_id, wins, losses, 
points_per_game, points_allowed_per_game, pace, offensive_rating, defensive_rating) VALUES

-- Atlantic Division (Division IDs: Check your divisions table)
('Boston Celtics', 'Boston', 1, 61, 21, 116.3, 107.2, 95.7, 120.6, 111.1),
('New York Knicks', 'New York', 1, 51, 31, 115.8, 111.7, 96.7, 118.5, 114.3),
('Philadelphia 76ers', 'Philadelphia', 1, 24, 58, 109.6, 115.8, 97.4, 111.9, 118.2),
('Brooklyn Nets', 'Brooklyn', 1, 26, 56, 105.1, 112.2, 96.4, 108.5, 115.8),
('Toronto Raptors', 'Toronto', 1, 30, 52, 110.9, 115.2, 99.7, 110.5, 114.8),

-- Central Division
('Milwaukee Bucks', 'Milwaukee', 2, 48, 34, 115.5, 113.0, 99.3, 115.9, 113.4),
('Cleveland Cavaliers', 'Cleveland', 2, 64, 18, 121.9, 112.4, 99.8, 121.7, 112.2),
('Indiana Pacers', 'Indianapolis', 2, 50, 32, 117.4, 115.1, 99.9, 116.5, 114.3),
('Chicago Bulls', 'Chicago', 2, 39, 43, 117.8, 119.4, 102.8, 114.1, 115.6),
('Detroit Pistons', 'Detroit', 2, 44, 38, 115.5, 113.6, 99.8, 115.0, 113.1),

-- Southeast Division
('Miami Heat', 'Miami', 3, 37, 45, 110.6, 110.0, 96.2, 113.5, 112.9),
('Atlanta Hawks', 'Atlanta', 3, 40, 42, 118.2, 119.3, 102.6, 114.6, 115.7),
('Orlando Magic', 'Orlando', 3, 41, 41, 105.4, 105.5, 96.1, 109.4, 109.6),
('Charlotte Hornets', 'Charlotte', 3, 19, 63, 105.1, 114.2, 97.6, 107.3, 116.6),
('Washington Wizards', 'Washington', 3, 18, 64, 108.0, 120.4, 100.9, 106.8, 119.1),

-- Northwest Division
('Oklahoma City Thunder', 'Oklahoma City', 4, 68, 14, 120.5, 107.6, 100.0, 120.3, 107.5),
('Denver Nuggets', 'Denver', 4, 50, 32, 120.8, 116.9, 99.8, 119.9, 116.0),
('Minnesota Timberwolves', 'Minneapolis', 4, 49, 33, 114.3, 109.3, 97.3, 116.6, 111.5),
('Utah Jazz', 'Salt Lake City', 4, 17, 65, 111.9, 121.2, 100.0, 111.2, 120.4),
('Portland Trail Blazers', 'Portland', 4, 36, 46, 110.9, 113.9, 98.8, 111.7, 114.7),

-- Pacific Division
('Los Angeles Lakers', 'Los Angeles', 5, 50, 32, 113.4, 112.2, 97.6, 115.9, 114.7),
('Phoenix Suns', 'Phoenix', 5, 36, 46, 113.6, 116.6, 97.1, 116.2, 119.3),
('Golden State Warriors', 'San Francisco', 5, 48, 34, 113.8, 110.5, 98.7, 115.0, 111.7),
('Los Angeles Clippers', 'Los Angeles', 5, 50, 32, 112.9, 108.2, 97.5, 115.1, 110.3),
('Sacramento Kings', 'Sacramento', 5, 40, 42, 115.7, 115.3, 98.2, 116.7, 116.2),

-- Southwest Division
('Dallas Mavericks', 'Dallas', 6, 39, 43, 114.2, 115.4, 99.2, 114.8, 116.0),
('New Orleans Pelicans', 'New Orleans', 6, 21, 61, 109.8, 119.3, 99.1, 110.4, 119.9),
('Houston Rockets', 'Houston', 6, 52, 30, 114.3, 109.8, 98.6, 115.3, 110.8),
('Memphis Grizzlies', 'Memphis', 6, 48, 34, 121.7, 116.9, 103.3, 117.7, 113.0),
('San Antonio Spurs', 'San Antonio', 6, 34, 48, 113.9, 116.7, 99.3, 114.4, 117.2);