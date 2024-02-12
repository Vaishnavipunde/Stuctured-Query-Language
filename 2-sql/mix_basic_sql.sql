

/*Q.  agregate fun ex*/
select count(category_id) from film_category


-----------------------------------------------------------
/*Q.  get max payment got from rental*/
select max(amount) from payment


--------------------------------------------------------------
select first_name,last_name from actor

select first_name,last_name from actor where first_name="mayumi" and lst_name="schueller";

-------------------------------------------------------------------------------------
select film_id from film_category where film_id=1

select * from address 


/* how many actor from particular city*/

select district,city_id from address where district='Alberta'

-----------------------------------------------------

/* we want to send our promotional email to our existing cuatomer*/
select first_name,last_name,email from customer

--------------------------------------------------------------------------------------------------------------
/* for removing duplicate value from table*/
select distinct first_name from customer

--------------------------------------------------------------------------------
/* distinct*/
select * from film

select distinct release_year from film

select distinct (length) from film

/*dispay the types of rating*/ 
select  distinct rating from film
-------------------------------------------------------
/*count*/  /* for getting rows from column*/
select count (length) from film
--------------------------------------------------------------------------
/*count and distinct both function together*/
select count(distinct(title)) from film


------------------------------------------------------------------
----------------------------------------

select * from payment

select count(amount) from payment

select amount from payment

select distinct amount from payment

select count(distinct (amount)) from payment

----------------------------------------------------
/*where condition*/
select language_id from language

select language_id,last_update from language where language_id=1

select title from film
select title,film_id from film
select *  from film where title='"Airport Pollock"' and film_id='8'
-----------------------------------------------------
---------------------------------------------------------------------

select * from film where rental_rate>4
-------------------------------------------------------------------------
/*use of logical operator  and ,or,not*/

select * from film where rental_rate>4 and replacement_cost>=19.99

select * from film where rental_rate>4 and replacement_cost>=19.99 and rating ='R'

select title from film where rental_rate>4 and replacement_cost>=19.99 and rating ='R'

select count(title) from film where rental_rate>4 and replacement_cost>=19.99 and rating ='R'

select count(*) from film where rental_rate>4 and replacement_cost>=19.99 and rating ='R'




select count(*) from film where rating='R' or rating='PG-13'



select * from film where rating !='R'
select * from film where rating <>'R'

/*que ans*/
select email from customer where first_name='Nancy' and last_name='Thomas'

/* customer want to know what the movie 'Outlaw Hanky' is about
could you get the description of movie*/

select  description from film where title='Outlaw Hanky'

/* costomer is late on theire movie return and we 
have mail them a letter to theire addresss at '256 Ipoh Drive' we should
also call them on the phone to let them know
can youu get the phone no for tthe coustomer who 
lives at '256 Ipoh Drive'*/

select phone from address where address='256 Ipoh Drive'



/*order by*/
select * from customer
order by first_name asc  --ascending

select * from customer
order by first_name desc  --descending

select * from customer
order by store_id

select first_name,last_name,store_id from customer
order by store_id,first_name

select first_name,last_name,store_id from customer
order by store_id desc,first_name asc
-----------------------------------------------------------------------------------------------------------------------
/*limit*/

select * from payment
order by payment_date desc
limit 5



select * from payment
where amount!=0.00
order by payment_date desc
limit 5



/* we wnant to reward our first 10 paying customers
what are the customer id of first 10 customer who 
created payment
*/
select customer_id from payment
order by payment_date asc
limit 10


/*customer want to quikly rent a video to watch over
their short lunch break
what are the titles of 5 shortest movies*/

select title,length from film
order by length asc
limit 5

/* if the previous customer watch any movie that 
is 50 min or less in run time
,how many option does she have*/

select count(title) from film where length<=50
------------------------------------------------------------------
/*between*/

select * from payment
limit 2

select * from payment
 where amount between 8 and 9  --between

select * from payment
 where amount  not between 8 and 9  --not between

--between operator can also used with dates in the form 'YYYY-MM-DD'

select payment_date from payment
where payment_date between '2007-02-15' and '2007-02-21'
-----------------------------------------------------------------------------------------------------------------------
/*in*/  --syntax: value in(option1,option2.....option n)

select rental_id from rental where rental_id in('2','5')

select distinct(amount) from payment
order by amount

select * from payment
where amount in(0.09,1.98,1.99)  --in


select count(*) from payment
where amount not in (0.09,1.98,1.99)  --not in


select * from customer where first_name in ('John','Jake','Julie')
--------------------------------------------------------------------
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


----------------------------------------------------------------------------------
/* how many payment transaction were greater than $5.00
*/
select count(amount) from payment
where amount>5
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/* how actors have first name that start with letter P
*/

select count(first_name) from actor
where first_name like 'P%'


----------------------------------------------------------------------------------------

/*how many unique districts are our customer from*/

select count(distinct(district)) from address
------------------------------------------------------------------------------
/*retrive the list of names for those distinct 
disrict from the previous question*/

select distinct(district) from address

----------------------------------------------------------
/* how many films have rating of R and a replacement
cost between 5 and 15*/


select count(*) from film
where rating='R' and replacement_cost between '5' and '15'

-------------------------------------------------------------------------------------------
/*how may fims have the word truman somewhere in
the title*/

select count(*) from film
where title like '%Truman%'

--------------------------------------------------------------------------------------

/*aggregate function*/

select avg(replacement_cost) from film

select round(avg(replacement_cost)) from film  --round used to  round up the value means 19.88=>20

select round(avg(replacement_cost),4) from film  --round used to  round up the value means 19.88=>20 upto 4 digit

select min(replacement_cost) from film

select max(replacement_cost) from film

select sum(replacement_cost) from film
-----------------------------------------------------------
/*group by*/  ---!!!!imp

select * from payment

select customer_id from payment
group by customer_id
order by customer_id

select customer_id,sum (amount) from payment
group by customer_id


select customer_id,sum (amount) from payment
group by customer_id
order by sum(amount)



select customer_id,sum (amount) from payment
group by customer_id
order by sum(amount) desc



select customer_id,staff_id,sum(amount) from payment
group by staff_id,customer_id


select customer_id,staff_id,sum(amount) from payment
group by staff_id,customer_id
order by customer_id

select date(payment_date),sum(amount) from payment
group by date(payment_date)

select date(payment_date),sum(amount) from payment
group by date(payment_date)
order by sum(amount) desc

/*       */
select staff_id,count(amount)
from payment
group by staff_id


/* carporate hq is conducting a study on relationship
between replacement cost and movie MPAA rating
what is the average replacement cost per mpaa rating  */

select  rating, avg(replacement_cost) from film
group by rating



/* we are running a promotion to reward our top 5 
customer with coupons
what are the customer id of top 5 customer by total
spend*/

select customer_id,sum(amount) from payment
group by customer_id
order by sum (amount) desc
limit 5

--------------------------------------------------------------------------

/* having*/
select * from payment

select customer_id,sum(amount ) from payment 
where customer_id not in (184,87,477)
group by customer_id


select customer_id,sum(amount ) from payment 
group by customer_id
having sum(amount)>100

------------------------

select * from customer

select store_id ,count(customer_id)from customer
group by store_id


select store_id ,count(*)from customer
group by store_id



select store_id,count(customer_id ) from customer 
group by store_id
having count(customer_id)>300

/* we are launching a platinum service for our most 
layal customer we will assign platinum status to 
customer that hvae had 40 or more transaction 
payment
what customer_id are eligible for platinum status*/

select customer_id,count(*) from payment
group by customer_id
having count(*)>=40

/*what are the customer id of customer who have
spent more than 100 on payment transaction with our 
staff id member 2*/

select customer_id,sum(amount) from payment
where staff_id=2
group by customer_id
having sum(amount)>100
--------------------------------------------------------------
/*return the costomer_id of customer who have spent 
at least 110 with staff member who has an id 2*/

select customer_id ,sum(amount) from payment
where staff_id=2
group by customer_id
having sum(amount)>110



/*how may films begin with the letter 'j'*/

select count(*) from film
where title like 'J%'




/*what customer has the highest customer_id number
whose name stsrt with 'E' and has an address id 
lower than 500*/





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

-----------------------------------------------------------------------------
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
















































