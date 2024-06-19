/* versi aku */
SELECT name AS Employee
FROM Employee a
WHERE salary > (SELECT salary FROM Employee b WHERE id = a.managerId)

/* versi orang

SELECT EMP.name AS Employee FROM Employee EMP,Employee MGR
WHERE EMP.managerId=MGR.id AND EMP.salary>MGR.salary

SELECT a.name AS Employee
FROM Employee a
INNER JOIN Employee b
ON a.managerId = b.id
AND a.salary > b.salary

SELECT e.name AS Employee
FROM Employee e
INNER JOIN Employee m ON e.managerId = m.id
WHERE e.salary > m.salary

*/