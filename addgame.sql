select 
    'title' as component,
    'The Outpost Arcade' as contents;
select 
    'title' as component,
    'Game Management Portal' as contents,
    2 as level;
select 
    'title'   as component,
    'Add Game' as contents,
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
    'addgamesubmit.sql' as action,
    'Add' as validate,
    'teal' as validate_color;

select 'text' as type, 'Name' as name, true as required;
select 'textarea' as type, 'Notes' as name, false as required;
select 'checkbox' as type, 'Active' as name, 'true' as checked, 'true' as value, 'Active' as label;