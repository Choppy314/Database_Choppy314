-- Insert 2024-25 stats for Wizards players

INSERT INTO player_stats (
    player_id, season, age, team, league, position,
    games_played, games_started, minutes_per_game,
    field_goals_per_game, field_goals_attempted_per_game, field_goal_percentage,
    three_point_made_per_game, three_point_attempted_per_game, three_point_percentage,
    two_point_made_per_game, two_point_attempted_per_game, two_point_percentage,
    effective_field_goal_percentage,
    free_throws_per_game, free_throws_attempted_per_game, free_throw_percentage,
    offensive_rebounds_per_game, defensive_rebounds_per_game, total_rebounds_per_game,
    assists_per_game, steals_per_game, blocks_per_game,
    turnovers_per_game, personal_fouls_per_game, points_per_game
) VALUES
-- Khris Middleton
(423, '2024-25', 33, 'WAS', 'NBA', 'SF',
37,21,22.8,4.3,9.1,.475,1.3,3.6,.361,3.0,5.5,.549,.546,1.9,2.3,.857,0.4,3.4,3.7,4.1,0.9,0.2,1.5,2.0,11.9),

-- Jordan Poole
(424, '2024-25', 25, 'WAS', 'NBA', 'SG',
68,68,29.4,6.7,15.5,.432,3.5,9.1,.378,3.3,6.4,.510,.544,3.6,4.0,.883,0.5,2.5,3.0,4.5,1.3,0.4,3.0,3.0,20.5),

-- Malcolm Brogdon
(425, '2024-25', 32, 'WAS', 'NBA', 'PG',
24,13,23.5,4.3,10.0,.433,0.7,2.3,.286,3.7,7.7,.478,.467,3.4,3.8,.880,0.9,2.9,3.8,4.1,0.5,0.2,1.6,1.3,12.7),

-- Marcus Smart
(426, '2024-25', 30, 'WAS', 'NBA', 'PG',
34,7,20.0,3.0,7.6,.393,1.4,4.1,.348,1.5,3.4,.448,.488,1.6,2.1,.761,0.5,1.6,2.1,3.2,1.1,0.3,1.6,1.6,9.0),

-- Richaun Holmes
(427, '2024-25', 31, 'WAS', 'NBA', 'PF',
31,7,17.2,2.9,4.5,.647,0.0,0.1,.000,2.9,4.4,.662,.647,1.6,1.9,.833,2.0,3.7,5.7,1.4,0.3,0.7,0.7,1.6,7.4),

-- Alex Sarr
(428, '2024-25', 19, 'WAS', 'NBA', 'C',
67,67,27.1,4.9,12.4,.394,1.6,5.1,.308,3.3,7.3,.454,.457,1.7,2.5,.679,1.9,4.6,6.5,2.4,0.7,1.5,1.7,2.2,13.0),

-- Bilal Coulibaly
(429, '2024-25', 20, 'WAS', 'NBA', 'SF',
59,59,33.0,4.5,10.6,.421,1.1,3.8,.281,3.4,6.8,.500,.472,2.3,3.1,.746,1.5,3.4,5.0,3.4,1.3,0.7,2.1,2.4,12.3),

-- Corey Kispert
(430, '2024-25', 25, 'WAS', 'NBA', 'SF',
61,0,26.3,4.2,9.3,.451,2.0,5.4,.364,2.2,3.9,.574,.558,1.2,1.4,.852,0.6,2.4,3.0,1.7,0.4,0.2,1.0,1.6,11.6),

-- Bub Carrington
(431, '2024-25', 19, 'WAS', 'NBA', 'PG',
82,57,30.0,3.7,9.1,.401,1.7,5.0,.339,2.0,4.2,.475,.493,0.8,1.0,.812,0.4,3.8,4.2,4.4,0.7,0.3,1.7,2.3,9.8),

-- Kyshawn George
(432, '2024-25', 21, 'WAS', 'NBA', 'SG',
68,38,26.5,3.0,8.0,.372,1.7,5.2,.322,1.3,2.8,.464,.476,1.0,1.4,.753,0.7,3.5,4.2,2.5,1.0,0.7,1.4,3.0,8.7),

-- AJ Johnson
(433, '2024-25', 20, 'WAS', 'NBA', 'SG',
29,11,22.0,2.8,7.3,.385,0.8,3.1,.267,2.0,4.2,.472,.441,1.1,1.3,.865,0.3,1.8,2.0,2.6,0.4,0.1,1.2,1.7,7.6),

-- Anthony Gill
(434, '2024-25', 32, 'WAS', 'NBA', 'PF',
51,0,7.8,0.8,1.7,.489,0.2,0.6,.323,0.6,1.1,.579,.545,0.6,1.0,.660,0.4,0.9,1.3,0.3,0.2,0.0,0.2,0.6,2.5);