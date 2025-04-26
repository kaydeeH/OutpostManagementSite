SELECT 'dynamic' AS component,
       sqlpage.run_sql('authpage.sql') AS properties;

select 
    'button' as component;
select 
    '/gameslist.sql' as link,
    'Games List' as title,
    'azure' as color;
select 
    '/newcollection.sql' as link,
    'New Collection' as title,
    'azure' as color;