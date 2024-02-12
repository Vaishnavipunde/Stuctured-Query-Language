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
