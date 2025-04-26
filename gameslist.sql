SELECT 'dynamic' AS component,
       sqlpage.run_sql('authpage.sql') AS properties;

select 
    'title' as component,
    'Games List' as contents,
    3 as level;

select 
    'button' as component;
select 
    '/index.sql' as link,
    'Home' as title,
    'azure' as color;
select 
    '/addgame.sql' as link,
    'Add New Game' as title,
    'teal' as color;

select 
    'table' as component,
    TRUE as hover,
    TRUE as striped_rows,
    'edit' as markdown,
    'delete' as markdown,
    TRUE as sort

SELECT
    game_name AS Name,
    game_notes AS Notes,
    is_active AS Active,
    format('[Edit](editgame.sql?id=%s)', game_id) as Edit,
    format('[Delete](deletegameconfirmation.sql?id=%s)', game_id) as Delete
FROM games;