/*case*/

select * from customer


select customer_id,
case
when(customer_id<=100) then 'premium'
when(customer_id between 100 and 200) then 'plus'
else 'normal'
end
from customer

/*case and expression*/
select customer_id,
case customer_id
when 2 then 'winner'
when 3 then 'second place'
else 'normal'
end as raffleresults
from customer
---------------------------
select * from film

select  case rental_rate when 0.99 then 1 else 0 end from film
----------------------------------------
-- for getting one column
select sum(case rental_rate when 0.99 then 1 else 0 end)
as number_of_bargin
from film

-------------------------------------
--for getting two column
select sum(case rental_rate when 0.99 then 1 else 0 end)
as number_of_bargin,
sum(case rental_rate when 2.99 then 1 else 0 end)
as regular
from film

--------------------------------
-- for getting three column
select 
sum(case rental_rate when 0.99 then 1 else 0 end)
as number_of_bargin,
sum(case rental_rate when 2.99 then 1 else 0 end)
as regular,
sum(case rental_rate when 4.99 then 1 else 0 end)
as premium
from film

