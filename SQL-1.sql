select * from actor;

--QUESTION 1
select first_name,last_name 
from actor 
where last_name  like 'Wahlberg';

--QUESTION 2
select * from payment;
select count(amount)
from payment
where amount between 3.99 and 5.99;

--QUESTION 3
select * from inventory;
select film_id,count(inventory_id)
from inventory
group by film_id 
order by film_id;

--QUESTION 4
select * from customer;
select first_name,last_name
from customer
where last_name like 'Williams';

--Question 5
select * from rental;
select staff_id,count(staff_id)
from rental
group by staff_id
order by staff_id;

--QUESTION 6
select * from address;
select count(distinct district)
from address;

--QUESTION 7
select * from film_actor;
select film_id,count(actor_id)
from film_actor
group by film_id
order by film_id desc;

--QUESTION 8
select * from customer;
select store_id,last_name
from customer
where last_name like '%es'
order by store_id;

--QUESTION 9
select * from payment;
select count(rental_id),customer_id,amount 
from payment
where customer_id between 380 and 430
group by customer_id 
having count(rental_id) > 250; 

--QUESTION 10
select * from film;
select rating,count(rating)
from film
group by rating;