# Write your MySQL query statement below
WITH cte AS
(SELECT reports_to AS employee_id , COUNT(employee_id) AS reports_count 
       ,ROUND(AVG(age),0) AS average_age
FROM Employees
WHERE reports_to IS NOT NULL
GROUP BY reports_to)


SELECT e.employee_id , name , reports_count , average_age
FROM cte c
JOIN Employees e
WHERE c.employee_id = e.employee_id
ORDER BY e.employee_id