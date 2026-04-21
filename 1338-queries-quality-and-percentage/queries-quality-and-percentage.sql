select
query_name,
ROUND(AVG(rating/position),2) as quality,
ROUND(100  * SUM(CASE when rating <3 then 1 else 0 end)/ count(*),2) as poor_query_percentage
from Queries
group by query_name