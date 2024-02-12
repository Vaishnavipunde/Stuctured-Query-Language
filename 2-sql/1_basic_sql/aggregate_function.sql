
/*Q.  agregate fun ex*/
select count(category_id) from film_category


-----------------------------------------------------------
/*Q.  get max payment got from rental*/
select max(amount) from payment


/*aggregate function*/

select avg(replacement_cost) from film

select round(avg(replacement_cost)) from film  --round used to  round up the value means 19.88=>20

select round(avg(replacement_cost),4) from film  --round used to  round up the value means 19.88=>20 upto 4 digit

select min(replacement_cost) from film

select max(replacement_cost) from film

select sum(replacement_cost) from film