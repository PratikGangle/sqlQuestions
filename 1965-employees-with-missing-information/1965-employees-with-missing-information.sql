# Write your MySQL query statement below
SELECT employee_id
FROM  
  (SELECT * FROM Employees LEFT JOIN Salaries USING(employee_id)
   UNION 
   SELECT * FROM Salaries LEFT JOIN Employees  USING(employee_id))
AS Temp
WHERE salary IS NULL OR name IS NULL
ORDER BY employee_id ASC



