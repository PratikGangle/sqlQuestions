# Write your MySQL query statement below


SELECT product_id , "store1" AS store,store1 as price
FROM Products
WHERE store1 IS NOT NULL
UNION ALL
SELECT product_id ,  "store2"  AS store ,store2 as price
FROM Products
WHERE store2 IS NOT NULL
UNION ALL
SELECT product_id ,  "store3"  AS store ,store3 as price
FROM Products
WHERE store3 IS NOT NULL


