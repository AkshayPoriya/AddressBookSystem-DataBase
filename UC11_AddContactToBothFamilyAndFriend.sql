/**************************************************************************
Add Rachel to both family and friends type

Problem in adding Rachel as one more contact as name is primary key
To overcome this problem need to modify schema using NF and ERD
**************************************************************************/

USE address_book_service;

INSERT INTO address_book
VALUES
('Rachel','Green','90 Bedford St','New York','NYC','10014','NA','rach@green.co','Friends','Characters');


SELECT * FROM address_book;