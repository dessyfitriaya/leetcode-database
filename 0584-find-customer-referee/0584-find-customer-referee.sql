/* Write your T-SQL query statement below */
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;

/* versi lain 

SELECT name
FROM Customer
WHERE isnull(referee_id, '') != '2'

SELECT name
FROM Customer
WHERE id NOT IN (SELECT id FROM Customer WHERE referee_id = 2);

*/