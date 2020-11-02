-- Get Count of contacts by type

SELECT type, COUNT(type) as contacts_count
FROM address_book
GROUP BY type;