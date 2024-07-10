# Write your MySQL query statement below

SELECT id, count(*) as num from
(SELECT requester_id AS id from RequestAccepted
UNION ALL
SELECT accepter_id AS id from RequestAccepted) AS friend_count
GROUP BY id
ORDER BY count(*) desc
LIMIT 1


