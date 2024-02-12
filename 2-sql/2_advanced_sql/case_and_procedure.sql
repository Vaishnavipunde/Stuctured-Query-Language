create table employee(
emp_id serial primary key,
first_name varchar(300) not null,
	last_name varchar(700) not null,
	birthdate date check(birthdate>'1900-01-01'),
	hire_date date check(hire_date>birthdate),
	salary int check(salary>0)
	)
	
insert into employee(first_name,last_name,birthdate,
					hire_date,salary) 
values('jose','portilla','1990-11-03','2010-01-01',65437)


select * from employee
--------------------------------------------------------------------






