/* Write your T-SQL query statement below */
SELECT class
FROM Courses a
GROUP BY class
HAVING COUNT(class) >= 5