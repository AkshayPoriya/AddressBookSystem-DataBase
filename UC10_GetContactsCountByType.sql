/**************************************************************************
Get Count of contacts by type
**************************************************************************/

USE address_book_service; 

SELECT type, COUNT(type) as contacts_count
FROM address_book
GROUP BY type;