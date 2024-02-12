/*in*/  --syntax: value in(option1,option2.....option n)

select rental_id from rental where rental_id in('2','5')

select distinct(amount) from payment
order by amount

select * from payment
where amount in(0.09,1.98,1.99)  --in


select count(*) from payment
where amount not in (0.09,1.98,1.99)  --not in


select * from customer where first_name in ('John','Jake','Julie')
------------------------
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
----------------
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