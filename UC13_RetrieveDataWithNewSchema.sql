/**************************************************************************
Retrieve Details

UC6, UC7, UC8 and UC10
**************************************************************************/

USE address_book_service;

--UC6
SELECT c.first_name,c.last_name,c.email,type,name 
FROM contacts  c, contacts_name c_n, contacts_type c_t
WHERE (c.first_name+c.last_name) = (c_n.first_name+c_n.last_name) AND 
		(c.first_name+c.last_name) = (c_t.first_name+c_t.last_name) AND
		c.state='NYC';

--UC7
SELECT c.city, COUNT(c.first_name) AS contacts_count
FROM contacts  c, contacts_name c_n, contacts_type c_t
WHERE (c.first_name+c.last_name) = (c_n.first_name+c_n.last_name) AND 
		(c.first_name+c.last_name) = (c_t.first_name+c_t.last_name)
GROUP BY c.city;

SELECT c.state, COUNT(c.first_name) AS contacts_count
FROM contacts  c, contacts_name c_n, contacts_type c_t
WHERE (c.first_name+c.last_name) = (c_n.first_name+c_n.last_name) AND 
		(c.first_name+c.last_name) = (c_t.first_name+c_t.last_name)
GROUP BY c.state;

--UC8
SELECT c.first_name,c.last_name,c.city ,c_n.name,c_t.type
FROM contacts  c, contacts_name c_n, contacts_type c_t
WHERE (c.first_name+c.last_name) = (c_n.first_name+c_n.last_name) AND 
		(c.first_name+c.last_name) = (c_t.first_name+c_t.last_name)
ORDER BY (c.first_name+c.last_name);

--UC10
SELECT c_t.type, COUNT(c.first_name) AS contacts_count
FROM contacts  c, contacts_name c_n, contacts_type c_t
WHERE (c.first_name+c.last_name) = (c_n.first_name+c_n.last_name) AND 
		(c.first_name+c.last_name) = (c_t.first_name+c_t.last_name)
GROUP BY c_t.type;

SELECT * from contacts;
SELECT * from contacts_type;
SELECT * from contacts_name;