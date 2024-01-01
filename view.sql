SELECT * FROM Products WHERE product_id = 1;

UPDATE Products
SET product_name = 'High-protein Dog Food'
WHERE product_id = 1;

SELECT * FROM Products WHERE product_id = 1;

SELECT * FROM Offers WHERE product_id = 1;

SELECT * FROM Products WHERE product_name = 'Fish Tank Filter';

DELETE FROM Products
WHERE product_name = 'Fish Tank Filter';

SELECT * FROM Products WHERE product_name = 'Fish Tank Filter';;
SELECT * FROM Offers WHERE product_id = (SELECT product_id FROM Products WHERE product_name = 'Fish Tank Filter');
SELECT * FROM Products_ordered WHERE offer_id IN (SELECT offer_id FROM Offers WHERE product_id = (SELECT product_id FROM Products WHERE product_name = 'Fish Tank Filter'));


