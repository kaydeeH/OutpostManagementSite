SELECT 'dynamic' AS component,
       sqlpage.run_sql('authpage.sql') AS properties;

select 
    'title' as component,
    'Edit Game' as contents,
    3 as level;

select 
    'button' as component;
select 
    '/gameslist.sql' as link,
    'Cancel' as title,
    'azure' as color;

select
    'form' as component,
    false as auto_submit,
    'Reset' as reset,
    'editgamesubmit.sql' as action,
    'Save' as validate,
    'azure' as validate_color;

select 'text' as type, 'Name' as name, true as required, game_name as value from games where game_id = $id::integer;
select 'textarea' as type, 'Notes' as name, false as required, game_notes as value from games where game_id = $id::integer;
select 'checkbox' as type, 'Active' as name, is_active as checked, is_active as value, 'Active' as label from games where game_id = $id::integer;
select 'hidden' as type, 'Id' as name, $id as value;