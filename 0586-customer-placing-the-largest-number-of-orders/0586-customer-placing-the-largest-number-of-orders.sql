/* Write your T-SQL query statement below */
WITH ECT AS (SELECT customer_number, 
COUNT(order_number) as amount 
FROM Orders 
GROUP BY customer_number)
SELECT TOP 1 customer_number
FROM ECT
ORDER BY amount DESC

/* versi lain

SELECT TOP 1 customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(order_number) DESC

*/