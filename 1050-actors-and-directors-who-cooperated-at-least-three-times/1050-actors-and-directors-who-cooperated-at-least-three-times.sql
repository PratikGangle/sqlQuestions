# Write your MySQL query statement below

SELECT actor_Id , director_id
FROM ActorDirector 
GROUP BY actor_id , director_id
HAVING COUNT(*) > 2