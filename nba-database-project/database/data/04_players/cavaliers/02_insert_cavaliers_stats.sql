-- Insert 2024-25 stats for Cavaliers players

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
-- Darius Garland
(299, '2024-25', 25, 'CLE', 'NBA', 'PG',
75,75,30.7,7.4,15.7,.472,2.8,7.1,.401,4.6,8.6,.530,.562,3.0,3.4,.878,0.6,2.2,2.9,6.7,1.2,0.1,2.5,1.9,20.6),

-- Donovan Mitchell
(300, '2024-25', 28, 'CLE', 'NBA', 'SG',
71,71,31.4,8.2,18.6,.443,3.3,8.9,.368,5.0,9.7,.512,.531,4.2,5.1,.823,0.8,3.7,4.5,5.0,1.3,0.2,2.1,2.0,24.0),

-- De'Andre Hunter
(301, '2024-25', 27, 'CLE', 'NBA', 'SF',
64,9,27.2,5.6,11.9,.470,2.5,6.1,.405,3.1,5.8,.537,.573,3.4,4.0,.846,0.7,3.3,4.0,1.4,0.8,0.2,1.3,2.4,17.0),

-- Jarrett Allen
(302, '2024-25', 26, 'CLE', 'NBA', 'C',
82,82,28.0,5.5,7.8,.706,0.0,0.1,.000,5.5,7.7,.712,.706,2.4,3.4,.718,2.6,7.1,9.7,1.9,0.9,0.9,1.2,1.5,13.5),

-- Max Strus
(303, '2024-25', 28, 'CLE', 'NBA', 'SF',
50,37,25.5,3.3,7.5,.442,2.3,5.9,.386,1.0,1.6,.650,.594,0.6,0.7,.824,1.1,3.3,4.3,3.2,0.5,0.2,1.1,2.1,9.4),

-- Evan Mobley
(304, '2024-25', 23, 'CLE', 'NBA', 'PF',
71,71,30.5,7.1,12.8,.557,1.2,3.2,.370,5.9,9.5,.621,.604,3.1,4.3,.725,2.3,7.0,9.3,3.2,0.9,1.6,2.0,2.0,18.5),

-- Isaac Okoro
(305, '2024-25', 24, 'CLE', 'NBA', 'SG',
55,22,19.1,2.3,4.9,.464,1.0,2.7,.371,1.2,2.1,.586,.569,0.6,0.8,.717,0.9,1.5,2.4,1.2,0.6,0.3,0.4,1.9,6.1),

-- Dean Wade
(306, '2024-25', 28, 'CLE', 'NBA', 'PF',
59,30,21.2,1.9,4.6,.413,1.4,3.8,.360,0.5,0.8,.653,.561,0.3,0.5,.533,0.9,3.4,4.2,1.3,0.7,0.3,0.4,1.7,5.4),

-- Jaylon Tyson
(307, '2024-25', 22, 'CLE', 'NBA', 'SG',
47,3,9.6,1.4,3.2,.430,0.4,1.2,.345,0.9,1.9,.484,.497,0.4,0.5,.792,0.8,1.3,2.0,0.9,0.3,0.1,0.6,1.1,3.6),

-- Ty Jerome
(308, '2024-25', 27, 'CLE', 'NBA', 'SG',
70,3,19.9,4.6,8.8,.516,1.6,3.6,.439,3.0,5.2,.570,.606,1.8,2.1,.872,0.7,1.8,2.5,3.4,1.1,0.0,1.3,1.5,12.5),

-- Sam Merrill
(309, '2024-25', 28, 'CLE', 'NBA', 'SG',
71,4,19.7,2.4,6.0,.406,1.9,5.2,.372,0.5,0.8,.625,.567,0.4,0.4,.966,0.5,1.7,2.2,1.5,0.7,0.2,0.5,1.7,7.2),

-- Tristan Thompson
(310, '2024-25', 33, 'CLE', 'NBA', 'C',
40,0,8.2,0.8,1.8,.437,0.0,0.1,.000,0.8,1.7,.456,.437,0.2,0.8,.233,0.8,2.6,3.4,0.6,0.1,0.3,0.4,0.9,1.7),

-- Craig Porter Jr.
(311, '2024-25', 24, 'CLE', 'NBA', 'PG',
51,1,10.1,1.4,2.7,.514,0.4,0.9,.438,1.0,1.8,.554,.589,0.5,0.6,.719,0.4,0.9,1.3,1.4,0.3,0.3,0.7,0.5,3.7);