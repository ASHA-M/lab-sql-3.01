USE sakila;

#1. Drop column picture from staff.

ALTER TABLE staff
DROP picture;

SELECT*
FROM STAFF;

#2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

SELECT *
FROM  sakila.customer
WHERE first_name = 'TAMMY' and last_name = 'SANDERS';

INSERT INTO sakila.staff(staff_id,first_name, last_name, address_id, email, store_id, active, username)
VALUES
(3, 'Tammy', 'Saunders', 79, 'tammy.saunders@sakilacustomer.org',2,1,'Tammy' );

SELECT*
FROM sakila.staff;

#Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
#You can use current date for the rental_date column in the rental table. 
#Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. 
#For eg., you would notice that you need customer_id information as well. To get that you can use the following query:

#A customer named Charlotte Hunter has rented the movie "Academy Dinosaur" from Store 1, and the employee
#who rented it to her is Mike Hillyer.

#Use similar method to get inventory_id, film_id, and staff_id.

INSERT INTO sakila.rental(rental_id,inventory_id,customer_id,staff_id) 
VALUES                    
(16050,'1', 130,1);

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

SELECT * FROM  inventory
where film_id =1 AND store_id =1;

select * 
from sakila.staff;


#activity 2. 
#I would add city and country to the address table and keep the primary key as address_ID
#Put language table in film table
#add film actor to actor table actor_id as primary key
