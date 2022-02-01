-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5
SELECT film.title
FROM film
LEFT JOIN inventory
ON film.film_id = inventory.film_id
LEFT JOIN rental
ON rental.inventory_id = inventory.inventory_id
LEFT JOIN customer
ON customer.customer_id = rental.customer_id
WHERE customer.first_name = 'Roberta'