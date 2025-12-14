-- Insert 2024-25 NBA Head Coaches

INSERT INTO coaches (first_name, last_name, team_id) VALUES
-- Eastern Conference
('Joe', 'Mazzulla', (SELECT team_id FROM teams WHERE team_name = 'Boston Celtics')),
('Tom', 'Thibodeau', (SELECT team_id FROM teams WHERE team_name = 'New York Knicks')),
('Nick', 'Nurse', (SELECT team_id FROM teams WHERE team_name = 'Philadelphia 76ers')),
('Jordi', 'Fernández', (SELECT team_id FROM teams WHERE team_name = 'Brooklyn Nets')),
('Darko', 'Rajakovic', (SELECT team_id FROM teams WHERE team_name = 'Toronto Raptors')),

('Doc', 'Rivers', (SELECT team_id FROM teams WHERE team_name = 'Milwaukee Bucks')),
('Kenny', 'Atkinson', (SELECT team_id FROM teams WHERE team_name = 'Cleveland Cavaliers')),
('Rick', 'Carlisle', (SELECT team_id FROM teams WHERE team_name = 'Indiana Pacers')),
('Billy', 'Donovan', (SELECT team_id FROM teams WHERE team_name = 'Chicago Bulls')),
('J.B.', 'Bickerstaff', (SELECT team_id FROM teams WHERE team_name = 'Detroit Pistons')),

('Erik', 'Spoelstra', (SELECT team_id FROM teams WHERE team_name = 'Miami Heat')),
('Quin', 'Snyder', (SELECT team_id FROM teams WHERE team_name = 'Atlanta Hawks')),
('Jamahl', 'Mosley', (SELECT team_id FROM teams WHERE team_name = 'Orlando Magic')),
('Charles', 'Lee', (SELECT team_id FROM teams WHERE team_name = 'Charlotte Hornets')),
('Brian', 'Keefe', (SELECT team_id FROM teams WHERE team_name = 'Washington Wizards')),

-- Western Conference  
('Mark', 'Daigneault', (SELECT team_id FROM teams WHERE team_name = 'Oklahoma City Thunder')),
('David', 'Adelman', (SELECT team_id FROM teams WHERE team_name = 'Denver Nuggets')),
('Chris', 'Finch', (SELECT team_id FROM teams WHERE team_name = 'Minnesota Timberwolves')),
('Will', 'Hardy', (SELECT team_id FROM teams WHERE team_name = 'Utah Jazz')),
('Chauncey', 'Billups', (SELECT team_id FROM teams WHERE team_name = 'Portland Trail Blazers')),

('JJ', 'Redick', (SELECT team_id FROM teams WHERE team_name = 'Los Angeles Lakers')),
('Mike', 'Budenholzer', (SELECT team_id FROM teams WHERE team_name = 'Phoenix Suns')),
('Steve', 'Kerr', (SELECT team_id FROM teams WHERE team_name = 'Golden State Warriors')),
('Tyronn', 'Lue', (SELECT team_id FROM teams WHERE team_name = 'Los Angeles Clippers')),
('Doug', 'Christie', (SELECT team_id FROM teams WHERE team_name = 'Sacramento Kings')),

('Jason', 'Kidd', (SELECT team_id FROM teams WHERE team_name = 'Dallas Mavericks')),
('Willie', 'Green', (SELECT team_id FROM teams WHERE team_name = 'New Orleans Pelicans')),
('Ime', 'Udoka', (SELECT team_id FROM teams WHERE team_name = 'Houston Rockets')),
('Tuomas', 'Iisalo', (SELECT team_id FROM teams WHERE team_name = 'Memphis Grizzlies')),
('Mitch', 'Johnson', (SELECT team_id FROM teams WHERE team_name = 'San Antonio Spurs'));