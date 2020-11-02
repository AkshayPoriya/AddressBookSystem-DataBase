-- Add name and type to address book to categorize contacts

ALTER TABLE address_book
ADD type VARCHAR(20), name VARCHAR(20);

UPDATE address_book
SET name='Haryana';

UPDATE address_book
SET type='Family' WHERE firstName='Akshay';

UPDATE address_book
SET type = 'Friends' WHERE firstName='Shankar';