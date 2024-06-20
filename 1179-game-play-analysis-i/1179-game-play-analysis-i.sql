SELECT player_id, MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id

/* versi lain

SELECT player_id, TO_CHAR( MIN(event_date),'YYYY-MM-DD') 
AS first_login FROM Activity GROUP BY player_id

With CTE as
(
    select 
    Player_id, 
    event_date,
    row_number() over (PARTITION BY player_id ORDER BY event_date) as row
    from Activity
)
select player_id, event_date as first_login  from CTE where row = 1;

 */