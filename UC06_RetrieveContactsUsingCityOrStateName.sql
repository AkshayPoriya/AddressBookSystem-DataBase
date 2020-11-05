/**************************************************************************
Retrieve Contacts belonging to a city or state
**************************************************************************/

USE address_book_service;

SELECT * FROM address_book 
WHERE city='New Jersy' OR state='NYC';