DELETE 
FROM Person
WHERE id NOT IN (SELECT MIN(id) FROM Person GROUP BY email)

/* versi lain

delete p1 
from Person p1, Person p2
where p1.Email = p2.Email 
and p1.id>p2.Id;

DELETE FROM PERSON
Where id in (select id from(
SELECT id, 
	email, 
    ROW_NUMBER() OVER (PARTITION BY email ORDER BY id) rw  
FROM PERSON ) c where c.rw > 1)

*/