SELECT 'dynamic' AS component,
       sqlpage.run_sql('authpage.sql') AS properties;

insert into games (game_name, game_notes, is_active)
values (
	:Name, :Notes, cast((CASE WHEN :Active IS NOT NULL THEN 'true' ELSE 'false' END) as boolean)
);

select 
    'title' as component,
    'Game Added' as contents,
    3 as level;

select
	'alert' as component,
	:Name AS title,
	'Successfully added.' AS description;

select 
    'button' as component;
select 
    '/gameslist.sql' as link,
    'Return to Game List' as title,
    'azure' as color;