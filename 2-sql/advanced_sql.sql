show all
select current_date

select now()
select timeofday()

select * from payment

select extract(year from payment_date) as myyear from payment

select extract(month from payment_date) as pay_month from payment

select extract(QUATER from payment_date)
as pay_month from payment

select age(payment_date) from payment

select to_char(payment_date,'') from payment

select to_char(payment_date,'MM/DD/YYYY') FROM PAYMENT

select to_char(payment_date,'DD-MM-YYYY') FROM PAYMENT
------------------------------------------------------

/* during which month did payment occure
format your ans to return back the full month name*/

select distinct(to_char(payment_date,'month')) from payment
----------------------------------------

/* how many occure on monday*/

select payment_date from payment
select count(*) from payment
where extract(dow from payment_date)=1  --here 1 denotes monday and 'dow' means day of week
-------------------------------------------------------
/* mathematical operations*/
select * from film

select rental_rate/replacement_cost from film

select rental_rate*replacement_cost from film

select rental_rate+replacement_cost from film

select rental_rate-replacement_cost from film

select rental_rate%replacement_cost from film

select  |/rental_rate from film

select  ||/rental_rate from film

select  @rental_rate from film

--------------------------------
select round(rental_rate%replacement_cost) from film

select round(rental_rate%replacement_cost,4)*100 from film

select round(rental_rate%replacement_cost,4)*100  as percent_cost from film

--------------------------------------------------
select * from customer

select length(first_name) from customer

select first_name || last_name from customer  --used for concatenation of string(||)

select first_name ||' '|| last_name as full_name from customer  --used for concatenation of string(||) and give space

select upper(first_name) ||' '|| upper(last_name) as full_name from customer  --used for concatenation of string(||) and give space and upper case


select left(first_name,1) || last_name||'@gmail.com' as full_name from customer  -- creating gmail

select lower( left(first_name,1)) ||lower( last_name)||'@gmail.com' as email from customer  -- creating gmail

---------------------------------------------------------------------------------------
/*sub query*/ --query inside query called sub query

select * from film

select avg(rental_rate)from film

select title,rental_rate from film
where rental_rate>(select avg(rental_rate) from film)

select  * from rental

select * from inventory

select  * from rental
where return_date between '2005-05-29' and '2005-05-30'

select inventory.film_id from rental
inner join inventory on inventory.inventory_id=rental.inventory_id
where return_date between '2005-05-29' and '2005-05-30'


select film_id,title from film
where film_id in 
(select inventory.film_id from rental
inner join inventory on inventory.inventory_id=rental.inventory_id
where return_date between '2005-05-29' and '2005-05-30'
)