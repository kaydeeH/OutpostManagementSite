SELECT 'dynamic' AS component,
       sqlpage.run_sql('authpage.sql') AS properties;

select 
    'title' as component,
    'New Collection' as contents,
    3 as level;

select 
    'button' as component;
select 
    '/index.sql' as link,
    'Home' as title,
    'azure' as color;