delete from
	games
where
	game_id = $Id::integer;

select 
    'title' as component,
    'The Outpost Arcade' as contents;
select 
    'title' as component,
    'Game Management Portal' as contents,
    2 as level;
select 
    'title' as component,
    'Game Deleted' as contents,
    3 as level;

select
	'alert' as component,
	:Name AS title,
	'Successfully deleted.' AS description;

select 
    'button' as component;
select 
    '/gameslist.sql' as link,
    'Return to Game List' as title,
    'azure' as color;