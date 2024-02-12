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
