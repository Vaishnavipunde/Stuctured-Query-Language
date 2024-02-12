create table account(
  user_id serial primary key,
  username varchar(50) unique not null,
  password varchar(50) not null,
  email varchar(250) unique not null,
  created_on timestamp not null,
  last_login timestamp
)

create table job(
  job_id serial primary key,
  job_name varchar(200) unique not null
)

create table account_job(
  user_id integer references account(user_id),
  job_id integer references job(job_id),
  hire_date timestamp
)


insert into account(username,password,email,created_on)
values
('Ram','root','ram1@sanjivani.org.in',current_timestamp)

insert into account(username,password,email,created_on)
values
('Sham','root','sham1@sanjivani.org.in',current_timestamp)

select * from account

insert into job(job_name)
values('Data Scientist')

select * from job

insert into account_job(job_id,user_id,hire_date)
values
(1,1,current_timestamp)

select * from account_job



/*update*/

update account
set last_login=current_timestamp
where last_login is null;


select * from account
update account
set last_login=created_on
returning user_id,last_login


select * from job

select * from account_job

update account_job
set hire_date=account.created_on
from account
where account_job.user_id=account.user_id


update account
set last_login=current_timestamp
returning email,created_on,last_login


/*delete*/

insert into job(job_name)values('cowboy')
select * from job

delete from job
where job_name='cowboy'
returning job_id,job_name

/*alter*/


create table information(info_id serial primary key,
						 title varchar(500) not null,
						 person varchar(500) not null unique)


select * from information

alter table information
rename to new_info

select * from new_info

alter table new_info
rename column person to people

insert into new_info (title)
values('some_new_title')

alter table new_info
alter column people drop not null


select * from new_info

/*https://www.postgresql.org?docs/curretn/sql-altertable.html*/


select * from new_info



alter table new_info drop column people

select * from new_info

alter table new_info drop column if exists people










