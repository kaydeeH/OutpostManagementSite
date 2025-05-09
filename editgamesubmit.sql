SELECT 'dynamic' AS component,
       sqlpage.run_sql('authpage.sql') AS properties;

update
	games
set
	game_name = :Name,
	game_notes = :Notes,
	is_active = cast((CASE WHEN :Active IS NOT NULL THEN 'true' ELSE 'false' END) as boolean)
where
	game_id = $Id::integer;

select 
    'title'   as component,
    'Game Edited' as contents,
    3 as level;

select
	'alert' as component,
	:Name AS title,
	'Successfully updated.' AS description;

select 
    'button' as component;
select 
    '/gameslist.sql' as link,
    'Return to Game List' as title,
    'azure' as color;
