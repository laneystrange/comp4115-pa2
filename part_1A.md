# Shadowfall Tournament Tables

### players
Field | Type
:--- | ---:
__player_id__ | integer
first_name | varchar(15)
last_name | varchar(15)
handle | varchar(20)
dob | date
country | varchar(25)
gender | varchar(25)


### genders
Field | Type
:--- | ---:
__gender__ | varchar(25)


### teams
Field | Type
:--- | ---:
__team_id__ | integer
team_name | varchar(50)
date_formed | date
date_disbanded | date


### team_players
Field | Type
:--- | ---:
__team_player_id__ | integer
_team_id_ | integer
_player_id_ | integer

### events
Field | Type
:--- | ---:
__event_id__ | integer
event_name | varchar(50) 
event_city | varchar(30)
event_state | varchar(50)
start_date | date
end_date | date
grand_prize | double
event_winner | integer

### event_teams
Field | Type
:--- | ---:
__team_event_id__ | integer
_event_id_ | integer
_team_id_ | integer

### matches
Field | Type
:--- | ---:
__match_id__ | integer
_event_id_ | integer
_winning_team_ | integer

### match_results
Field | Type
:--- | ---:
__match_result_id__ | integer
_match_id_ | integer
_team_id_ | integer
wins | integer


