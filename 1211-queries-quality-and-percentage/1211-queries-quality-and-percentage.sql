-- select query_name,round((sum(quality1)/count(query_name)),2) as quality, round((1/count(query_name)*100),2) as poor_query_percentage  from
-- (select query_name, (rating/position), count(rating) as quality1
-- from Queries where rating < 3  ) as t1
-- group by query_name

select query_name,round((sum(quality)/count(query_name)),2) as quality, round(coalesce((sum(rating)/count(query_name)*100),0),2) as poor_query_percentage  from
(select query_name, (rating/position) as quality,    (CASE WHEN rating < 3 THEN 1 ELSE 0 END) AS rating
from Queries ) as t1
group by query_name