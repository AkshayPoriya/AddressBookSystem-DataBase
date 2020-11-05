/**************************************************************************
Retrieve contacts sorted by name
**************************************************************************/

USE address_book_service; 

SELECT * FROM address_book
ORDER BY (first_name+last_name);