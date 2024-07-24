# Write your MySQL query statement below

# from SalesPerson

SELECT name
FROM SalesPerson
where sales_id NOT IN
(select o.sales_id
from Orders o
LEFT JOIN Company c
ON c.com_id = o.com_id
WHERE c.name = 'RED')