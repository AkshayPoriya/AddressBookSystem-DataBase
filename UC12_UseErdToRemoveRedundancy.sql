/**************************************************************************
Modify Database

Add more tables

**************************************************************************/

USE address_book_service;

CREATE TABLE contacts
(
first_name VARCHAR(20),
last_name VARCHAR(20),
address VARCHAR(50),
city VARCHAR(20),
state VARCHAR(20),
zip VARCHAR(10),
phone_number VARCHAR(15),
email VARCHAR(100),
CONSTRAINT PK_contacts_name PRIMARY KEY (first_name, last_name)
);

CREATE TABLE contacts_type
(
first_name VARCHAR(20),
last_name VARCHAR(20),
type VARCHAR(20),
CONSTRAINT FK_type FOREIGN KEY(first_name,last_name) REFERENCES contacts(first_name,last_name)
);

CREATE TABLE contacts_name
(
first_name VARCHAR(20),
last_name VARCHAR(20),
name VARCHAR(20),
CONSTRAINT FK_name FOREIGN KEY(first_name,last_name) REFERENCES contacts(first_name,last_name)
);


INSERT INTO contacts
SELECT first_name,last_name,address,city,state,zip,phone_number,email
FROM address_book;

INSERT INTO contacts_type
SELECT first_name,last_name,type
FROM address_book;

INSERT INTO contacts_type
VALUES
('Rachel','Green','Family');

INSERT INTO contacts_name
SELECT first_name,last_name,name
FROM address_book;

SELECT * from contacts;
SELECT * from contacts_type;
SELECT * from contacts_name;