----------------------------------------------
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
