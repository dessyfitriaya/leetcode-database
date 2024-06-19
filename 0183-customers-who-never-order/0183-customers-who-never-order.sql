/* versi aku */
SELECT Customers.name AS Customers
FROM Customers
LEFT JOIN Orders
ON Customers.id = Orders.customerId
WHERE Orders.customerId IS NULL

/* versi orang 

SELECT name AS Customers FROM Customers WHERE Customers.id 
NOT IN (SELECT CustomerId FROM Orders);

*/