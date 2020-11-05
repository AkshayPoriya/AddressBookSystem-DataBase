/**************************************************************************
Add name and type column to address_bbok
**************************************************************************/

USE address_book_service;

ALTER TABLE address_book
ADD type VARCHAR(20), name VARCHAR(20);

UPDATE address_book
SET name='Characters';

UPDATE address_book
SET type='Family' WHERE first_name IN ('Ben','Monica','Ross');

UPDATE address_book
SET type = 'Friends' WHERE first_name IN ('Chandler','Joey','Phoebe','Rachel');

SELECT * FROM address_book
ORDER BY type;