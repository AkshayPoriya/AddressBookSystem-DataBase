/**************************************************************************
Update phone_number in address_book
**************************************************************************/

USE address_book_service;

UPDATE address_book
SET phone_number='+1-646-9998887' WHERE first_name in ('Monica','Rachel','Ross','Phoebe');

UPDATE address_book
SET phone_number='+1-646-9998886' WHERE first_name in ('Chandler','Joey');

SELECT * FROM address_book;