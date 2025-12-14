-- Insert 2024-25 stats for Hornets players

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
-- LaMelo Ball
(411, '2024-25', 23, 'CHO', 'NBA', 'PG',
47,47,32.0,8.6,21.3,.405,3.8,11.2,.339,4.8,10.1,.478,.494,4.1,4.9,.843,1.0,3.9,4.9,7.4,1.1,0.3,3.6,3.3,25.2),

-- Miles Bridges
(412, '2024-25', 26, 'CHO', 'NBA', 'PF',
64,64,31.7,7.3,17.0,.431,2.2,7.0,.313,5.1,10.0,.513,.495,3.5,4.0,.870,1.1,6.4,7.5,3.9,0.7,0.7,2.1,1.5,20.3),

-- Jusuf Nurkić
(413, '2024-25', 30, 'CHO', 'NBA', 'C',
51,32,20.8,3.3,6.9,.477,0.6,2.1,.305,2.7,4.8,.551,.523,1.7,2.5,.664,1.7,6.1,7.8,2.3,0.8,0.7,1.9,2.5,8.9),

-- Grant Williams
(414, '2024-25', 26, 'CHO', 'NBA', 'PF',
16,7,29.9,3.4,7.7,.439,1.7,4.6,.365,1.7,3.1,.551,.549,1.9,2.3,.838,1.1,4.0,5.1,2.3,1.1,0.8,1.8,2.9,10.4),

-- Josh Green
(415, '2024-25', 24, 'CHO', 'NBA', 'SG',
68,67,27.8,2.6,6.2,.428,1.4,3.6,.391,1.2,2.5,.480,.543,0.7,1.1,.681,0.8,1.7,2.5,1.6,1.1,0.2,1.0,2.4,7.4),

-- Brandon Miller
(416, '2024-25', 22, 'CHO', 'NBA', 'SF',
27,27,34.2,7.3,18.2,.403,3.9,10.9,.355,3.5,7.3,.475,.509,2.5,2.9,.861,0.9,3.9,4.9,3.6,1.1,0.7,2.8,2.7,21.0),

-- Josh Okogie
(417, '2024-25', 26, 'CHO', 'NBA', 'SG',
40,7,15.6,2.4,5.3,.443,0.8,2.3,.348,1.6,3.0,.517,.519,1.6,2.1,.741,1.1,1.7,2.8,0.8,1.2,0.5,0.8,1.2,7.1),

-- Tidjane Salaün
(418, '2024-25', 19, 'CHO', 'NBA', 'PF',
12,0,14.9,2.1,4.1,.510,1.3,2.5,.500,0.8,1.6,.526,.663,0.9,1.3,.733,0.6,3.1,3.7,0.8,0.6,0.2,0.6,1.4,6.3),

-- Tre Mann
(419, '2024-25', 23, 'CHO', 'NBA', 'PG',
13,0,24.5,5.4,12.4,.435,1.8,4.6,.400,3.5,7.8,.455,.509,1.5,1.6,.905,0.9,2.0,2.9,3.0,0.5,0.3,1.9,1.8,14.1),

-- Mark Williams
(420, '2024-25', 23, 'CHO', 'NBA', 'C',
44,41,26.6,6.1,10.2,.604,0.0,0.1,.000,6.1,10.1,.609,.604,3.0,3.7,.804,3.0,7.2,10.2,2.5,0.7,1.2,1.6,2.4,15.3),

-- Nick Smith Jr.
(421, '2024-25', 20, 'CHO', 'NBA', 'SG',
60,27,22.8,3.7,9.5,.391,1.7,5.1,.340,2.0,4.4,.450,.482,0.7,0.8,.935,0.2,1.9,2.1,2.4,0.3,0.1,1.4,1.3,9.9),

-- DaQuan Jeffries
(422, '2024-25', 27, 'CHO', 'NBA', 'SG',
47,20,22.8,2.5,6.2,.405,1.2,3.5,.335,1.3,2.7,.496,.500,0.5,0.6,.800,0.8,2.1,2.9,1.1,0.6,0.5,0.7,2.1,6.7);