/* Write your T-SQL query statement below */

SELECT name
FROM SalesPerson 
WHERE name NOT IN 
    (SELECT DISTINCT a.name
    FROM SalesPerson a
    LEFT JOIN Orders b ON a.sales_id = b.sales_id
    LEFT JOIN Company c ON c.com_id = b.com_id 
    WHERE c.name = 'RED')