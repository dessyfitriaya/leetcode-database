/* Write your T-SQL query statement below */
SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y'

/* versi lain 

SELECT product_id
FROM (
    SELECT *
    FROM Products
    WHERE low_fats = 'Y'
) low_fat_products
WHERE low_fat_products.recyclable = 'Y';

*/