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
