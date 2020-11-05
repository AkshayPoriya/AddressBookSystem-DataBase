/**************************************************************************
Delete Contact from address_book
**************************************************************************/

USE address_book_service;

INSERT INTO address_book(first_name,last_name)
VALUES
('Janice','Hosenstein'),
('Gunther','.'),
('Ben','Geller');

DELETE FROM address_book
WHERE first_name IN ('Gunther','Janice');

SELECT * FROM address_book;