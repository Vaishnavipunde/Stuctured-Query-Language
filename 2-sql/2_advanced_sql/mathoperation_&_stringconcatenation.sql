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
