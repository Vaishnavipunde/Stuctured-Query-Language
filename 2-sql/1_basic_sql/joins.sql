/* join*/
--inner join
select * from payment
inner join customer
on payment.customer_id=customer.customer_id

select payment.payment_id,payment.customer_id,
customer.first_name,customer.last_name from payment
inner join customer
on payment.customer_id=customer.customer_id

-- full outer join
select* from payment
full outer join customer
on payment.customer_id=customer.customer_id
where payment.customer_id is null or customer.customer_id is null

--left outer join
select* from payment left outer join customer
on payment.customer_id=customer.customer_id
where customer.customer_id is null

--------------------------------------------


select * from film
select * from inventory

select film.film_id,title,inventory_id,store_id from film
left join inventory on inventory.film_id=film.film_id
where inventory.film_id is null

/*right join*/

--same as left join only switching of table is take place

select * from film
right outer join inventory
on film.film_id=inventory.film_id

select * from film
right outer join inventory
on film.film_id=inventory.film_id
where film.film_id is null
----------------------------
/* califirnia sales a tax laws have changed and we
need to alert our customer to this through email
what are the emaila of customer who live in california*/

select district,email from address
inner join customer 
on address.address_id=customer.address_id 
where district='California'

-----------------------------------------------------------------------------------
/* a customer walk in and is a huge fan of the
actor"nick wahlberg" and want to know which movie he is in
get a list of all movies"nick wahlberg" has been in*/

select title,first_name,last_name from actor
inner join film_actor
on actor.actor_id=film_actor.actor_id
inner join film
on film_actor.actor_id=actor.actor_id
where first_name='Nick' and last_name='Wahlberg'
