create table simple(
a int,b int,c int)

select * from simple
-----------------------------------------------
create table countries(
country_id varchar(40),
country_name varchar(400),
region_id decimal(10,0))

select * from countries
------------------------------------
--create the structure of a table dup_countries similar to countries
create table dup_countries as (select * from countries)

---------------------------------------
--create table countries set a constraint null
create table if not exists countries
(country_id varchar(40) not null,
country_name varchar(400) not null,
region_id decimal(10,0) not null
)
------------------------------
--craete table named job including column job_id,job_title,
--,max_salary and check wether the max salary amount
--exceeding the upper limit 25000
create table if not exists job
(
job_id int,
job_title varchar(300),
min_salary int,
max_salary  int check(max_salary>250000)
)
-----------------------------------------
--craete table name countries including column country_id,country_name
--,region_id, and make sure thet no countries except italy,indid
-- and china will be enterd in table

create table if not exists countries(
country_id varchar(300),
country_name varchar(600) check(country_name in('italy','india','china')),
region_id varchar(50))

--------------------------------
--craete table name countries including column country_id,country_name
--,region_id, and make sure that no duplicate data against column country_id
create table if not exists countries
(country_id varchar(40) not null unique,
country_name varchar(400) not null,
region_id decimal(10,0) not null
)

------------------------------------------------
/*craete table named job including column job_id,job_title,
,max_salary and check wether default value for job_title is blank
and min salary is 80000 and max salary is null will be entered automatically
at the time of insertion if no value assign for specified column*/


create table if not exists job
(
job_id int not null unique,
job_title varchar(300) default ' ',
min_salary int default 8000,
max_salary  int  default null)

select * from job


----------------------------------
/*craete table name countries including column country_id,country_name
,region_id, and make sure that country_id column will be key field which is not contain duplicate data against column country_id
*/
create table if not exists countries
(country_id varchar(40) not null unique primary key,
country_name varchar(400) not null,
region_id decimal(10,0) not null
)
---------------------------------
/*craete table name countries including column country_id,country_name
,region_id, and make sure that country_id column is unique and stroe an auto increment value
*/
create table if not exists countries
(country_id  serial primary key,
country_name varchar(400) not null,
region_id decimal(10,0) not null
)

-----------------------------------------
/*craete table name countries including column country_id,country_name
,region_id, and make sure that combination of columns country_id column  and regin_id will be unique */

create table if not exists countries
(country_id  varchar(400) not null unique default ' ' primary key,
country_name varchar(400) default null,
region_id decimal(10,0) not null primary key
)

--------------------------------------------------
create table job_history(
employee_id decimal(6,0) not null primary key,
start_date date not null,
end_date date not null,
job_id varchar(400) not null,
department_id decimal(4,0) default null,
	foreign key(job_id) references jobs(job_id)
)

-------------------------------------------

create table employee(
location_id int,
street_address varchar(300),
city varchar(400),
	state_provience  varchar(200),
	country_name varchar(300)
)

create table  departmentt(
first_name varchar(300),
last_name varchar(400),
department_id int,
department varchar(444))

select * from departmentt


select * from employee

insert into departmentt(first_name,last_name,department_id,department) 
values('vaishnavi','punde',1,'comp'),('vishwajit','punde',2,'comp')

insert into employee(location_id,street_address,city,state_provience,country_name)
values(1,'maulinagar','shevgaon','maharastra','india'),(2,'irrigation colony','shevgaon','maharastra','india')


select street_address,city,first_name,last_name from departmentt
inner join employee
on departmentt.department_id=employee.location_id



