select 
    'title' as component,
    'The Outpost Arcade' as contents;
select 
    'title' as component,
    'Game Management Portal' as contents,
    2 as level;
select 
    'title' as component,
    'Delete Game' as contents,
    3 as level;

select 
    'button' as component;
select 
    '/gameslist.sql' as link,
    'Cancel' as title,
    'azure' as color;

select
	'alert' as component,
	'Warning' AS title,
	'You are about to delete the following game: ' || game_name || '. Are you sure you wish to continue?' AS description
from games where game_id = $id::integer;

select
    'form' as component,
    false as auto_submit,
    'deletegame.sql' as action,
    'Confirm Delete' as validate,
    'red' as validate_color;

select 'hidden' as type, 'Name' as name, game_name as value from games where game_id = $id::integer;
select 'hidden' as type, 'Id' as name, $id as value;