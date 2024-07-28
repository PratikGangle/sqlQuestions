# Write your MySQL query statement below

SELECT u.name , CASE WHEN r.distance IS NULL THEN 0 ELSE r.distance END  as travelled_distance 
FROM Users u
LEFT JOIN (select user_id , SUM(distance) as distance
from rides
group by user_id) AS r
ON r.user_id = u.id 
ORDER BY r.distance DESC, u.name ASC


