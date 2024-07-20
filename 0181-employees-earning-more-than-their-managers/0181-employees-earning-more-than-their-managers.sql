# Write your MySQL query statement below

# select name as Employee
# from Employee e1
# WHERE salary >( 
# select salary
# from Employee e2
# where e1.managerId = e2.id )



# using join
select e1.name as Employee
from Employee e1
INNER JOIN Employee e2
ON e1.managerId = e2.id
WHERE e1.salary > e2.salary