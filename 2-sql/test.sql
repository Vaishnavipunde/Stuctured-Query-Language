--1
create table jobs1(job_id int primary key,
				 job_title varchar(400),
				 min_salary int,
				 max_salary check(max_salary>25000) int)
				 
select * from jobs1

--2
alter table jobs1
add column email varchar(300)


				 
--3
				 
alter table jobs1
rename to jobs_new1				 
				 
select * from jobs_new1				 

--4
alter table jobs_new1
add column dept_id int unique



				 
--5
insert into jobs_new1(job_id,job_title,min_salary,max_salary,dept_id) values(1,'teacher',100,10000,5),(2,'director',2500,25000,3),(3,'principle',4000,50000,4)

				 
--6
select job_id,dept_id from jobs_new1

--7
select max(max_salary) from jobs_new1

--8

select avg(min_salary,max_salary) from jobs_new1

--9
create table manager_details(manager_id  int primary key,
							manager_name varchar(300),
							 dept_id int unique)



							
select * from manager_details



select * from manager_details						
inner join jobs_new1
on manager_details.dept_id=jobs_new1.dept_id
	


