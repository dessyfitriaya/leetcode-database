/* Write your T-SQL query statement below */
SELECT Employee.name, Bonus.bonus
FROM Employee
FULL OUTER JOIN Bonus
ON Employee.empId = Bonus.empId
WHERE Bonus.bonus < 1000 OR Bonus.bonus IS NULL

/* versi lain

SELECT name, bonus
FROM Employee E
LEFT JOIN Bonus B
ON E.empId = B.empId
WHERE bonus < 1000  OR bonus IS NULL

SELECT e.name, b.bonus from
    Employee e left join bonus b 
        USING(empId)
    where 
        ifnull(b.bonus, 0) <1000;

*/