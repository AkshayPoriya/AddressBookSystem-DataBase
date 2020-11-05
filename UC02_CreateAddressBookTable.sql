/**************************************************************************
Create address_book Table
**************************************************************************/

USE address_book_service;

CREATE TABLE address_book
(
first_name VARCHAR(20),
last_name VARCHAR(20),
address VARCHAR(50),
city VARCHAR(20),
state VARCHAR(20),
zip VARCHAR(10),
phone_number VARCHAR(15),
email VARCHAR(100),
CONSTRAINT PK_name PRIMARY KEY (first_name, last_name)
);

SELECT * FROM address_book;