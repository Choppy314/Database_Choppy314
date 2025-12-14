-- Insert 2024-25 stats for Nets players

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
-- Nic Claxton
(271, '2024-25', 25, 'BRK', 'NBA', 'C',
70,62,26.9,4.6,8.1,.563,0.1,0.3,.238,4.5,7.8,.576,.568,1.1,2.2,.513,2.2,5.1,7.4,2.2,0.9,1.4,1.2,2.1,10.3),

-- Cameron Johnson
(272, '2024-25', 28, 'BRK', 'NBA', 'PF',
57,57,31.6,6.2,13.1,.475,2.8,7.2,.390,3.4,5.9,.578,.582,3.5,3.9,.893,0.9,3.4,4.3,3.4,0.9,0.4,1.7,1.8,18.8),

-- D'Angelo Russell
(273, '2024-25', 28, 'BRK', 'NBA', 'PG',
58,36,25.5,4.3,11.0,.390,1.9,6.2,.314,2.3,4.8,.489,.479,2.1,2.5,.834,0.3,2.4,2.8,5.1,1.0,0.4,1.9,2.0,12.6),

-- Ziaire Williams
(274, '2024-25', 23, 'BRK', 'NBA', 'SF',
63,45,24.5,3.4,8.3,.412,1.6,4.8,.341,1.8,3.5,.509,.511,1.6,2.0,.821,1.0,3.6,4.6,1.3,1.0,0.4,1.1,2.4,10.0),

-- Cam Thomas
(275, '2024-25', 23, 'BRK', 'NBA', 'SG',
25,23,31.2,8.0,18.2,.438,2.7,7.8,.349,5.2,10.4,.506,.513,5.3,6.0,.881,0.6,2.7,3.3,3.8,0.6,0.1,2.5,1.8,24.0),

-- Day'Ron Sharpe
(276, '2024-25', 23, 'BRK', 'NBA', 'C',
50,2,18.1,3.3,6.3,.521,0.2,0.9,.244,3.1,5.4,.566,.538,1.1,1.5,.757,3.0,3.6,6.6,1.8,0.8,0.8,1.3,2.3,7.9),

-- Noah Clowney
(277, '2024-25', 20, 'BRK', 'NBA', 'PF',
46,20,22.7,2.9,8.1,.358,1.9,5.7,.333,1.0,2.4,.414,.474,1.5,1.7,.838,0.9,3.0,3.9,0.9,0.5,0.5,1.0,2.3,9.1),

-- Dariq Whitehead
(278, '2024-25', 20, 'BRK', 'NBA', 'SF',
20,0,12.3,2.0,4.8,.406,1.7,3.7,.446,0.3,1.1,.273,.578,0.2,0.3,.600,0.2,1.3,1.5,0.6,0.3,0.1,0.8,1.1,5.7),

-- Trendon Watford
(279, '2024-25', 24, 'BRK', 'NBA', 'PF',
44,6,20.8,3.7,8.0,.469,0.7,2.0,.330,3.1,6.0,.515,.510,2.1,2.8,.762,0.8,2.8,3.6,2.6,0.6,0.3,1.9,2.2,10.2),

-- Keon Johnson
(280, '2024-25', 22, 'BRK', 'NBA', 'SG',
79,56,24.4,3.8,9.9,.389,1.6,5.1,.314,2.2,4.8,.468,.470,1.4,1.8,.770,0.8,3.0,3.8,2.2,1.0,0.4,1.5,2.6,10.6),

-- Maxwell Lewis
(281, '2024-25', 22, 'BRK', 'NBA', 'SF',
28,1,11.7,1.6,3.9,.417,0.7,1.8,.380,0.9,2.1,.448,.505,0.3,0.4,.700,0.6,1.3,2.0,0.7,0.3,0.3,0.5,1.0,4.1),

-- Jalen Wilson
(282, '2024-25', 24, 'BRK', 'NBA', 'PF',
79,22,25.7,3.1,7.8,.397,1.5,4.6,.337,1.6,3.3,.481,.495,1.7,2.1,.818,0.9,2.5,3.4,1.8,0.5,0.1,1.0,2.1,9.5),

-- Tyrese Martin
(283, '2024-25', 25, 'BRK', 'NBA', 'SG',
79,22,25.7,3.1,7.8,.397,1.5,4.6,.337,1.6,3.3,.481,.495,1.7,2.1,.818,0.9,2.5,3.4,1.8,0.5,0.1,1.0,2.1,9.5);