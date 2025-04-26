SET username = (SELECT username FROM login_session WHERE id = sqlpage.cookie('session'));

SELECT 'redirect' AS component,
        'signin.sql?error' AS link
WHERE $username IS NULL;

select
    'title' as component,
    'The Outpost Arcade' as contents;
select 
    'title' as component,
    'Game Management Portal' as contents,
    2 as level;