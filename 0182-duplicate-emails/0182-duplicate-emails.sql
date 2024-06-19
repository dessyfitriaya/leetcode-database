/* versi aku */
SELECT email AS Email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1

/* versi orang

SELECT DISTINCT P1.Email FROM Person P1,Person P2 
WHERE P1.id <> P2.id AND P1.Email=P2.Email

SELECT email as Email
FROM Person
GROUP BY email
HAVING count(*) > 1

*/