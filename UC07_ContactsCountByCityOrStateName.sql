-- Count of contacts by city or state

select city, COUNT(city) as contacts_count
FROM address_book
GROUP BY city;

select state, COUNT(state) as contacts_count
FROM address_book
GROUP BY state;