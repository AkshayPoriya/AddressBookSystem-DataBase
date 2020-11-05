/**************************************************************************
Count of contacts by city or state
**************************************************************************/

USE address_book_service;

SELECT city, COUNT(first_name) AS contacts_count
FROM address_book
GROUP BY city;

SELECT state, COUNT(first_name) AS contacts_count
FROM address_book
GROUP BY state;