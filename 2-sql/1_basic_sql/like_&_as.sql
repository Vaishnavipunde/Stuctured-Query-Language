/*like*/  --like is case sensitive so use ilike

select * from customer 
where first_name like 'J%'


select count(*) from customer 
where first_name like 'J%'


select * from customer 
where first_name like 'J%' and last_name like 'S%'


select * from customer 
where first_name ilike 'j%' and last_name ilike 'S%'


select * from customer 
where first_name like '%re%'  --letters which contain 're' they get displaye


select * from customer 
where first_name like '%_her%'


select * from customer 
where first_name like 'A%'
order by last_name



select * from customer 
where first_name like 'A%' and last_name like 'B%'
order by last_name


/* how actors have first name that start with letter P
*/

select count(first_name) from actor
where first_name like 'P%'

/*how may fims have the word truman somewhere in
the title*/

select count(*) from film
where title like '%Truman%'


/*how may films begin with the letter 'j'*/

select count(*) from film
where title like 'J%'



--------------------------------------------------
/*AS*/  --used to change the column name
select amount as rental_price from payment --here create new column of name rental_price

select count(amount) as num_transaction from payment

select customer_id,sum(amount) from payment
group by customer_id


select customer_id,sum(amount) as total_spent from payment
group by customer_id


select customer_id,sum(amount) from payment
group by customer_id
having sum(amount)>100

select customer_id,sum(amount) as total_amount from payment
group by customer_id
having sum(amount)>100
--------------------------------------------------------------------------------------------------
--we are not use the new column name after having,where clause

-----------------------------------------------------------
select customer_id,amount as new_name from payment
where amount>2
