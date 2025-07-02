# Write your MySQL query statement below
select round(sum(A.event_date is not null)/count(*),2) as fraction from Activity as A
right join(
    select player_id, min(event_date) as m_date from Activity
    group by player_id
) as M
on(A.player_id = M.player_id and datediff(event_date, m_date) = 1)
