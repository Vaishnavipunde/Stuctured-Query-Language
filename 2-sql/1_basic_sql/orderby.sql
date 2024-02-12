
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