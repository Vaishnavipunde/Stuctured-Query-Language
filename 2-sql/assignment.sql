create table teacherr(
teacher_id int primary key,
first_name varchar(500),
last_name varchar(400),
homeroom_number int,
department varchar(600),
email varchar(500),
phone int)


create table student
(
student_id int primary key,
first_name varchar(500),
last_name varchar(400),
homeroom_number int,
	phone int unique,
	email varchar(400) unique,
	graduation_year int)



insert into student(student_id,first_name,last_name,homeroom_number,phone,email,graduation_year)
values(1,'Rahul','Galande',5,777555123,'Rahul.galande@gmail.com',2023)

select* from student

insert into teacherr(teacher_id,first_name,last_name,homeroom_number,department,email,phone)values(1,'chandrashekhar','Gogte',5,'biology','chandrashekhar.gogte@gmail.com',773335555)

select * from teacherr


alter table student add column information varchar(70)

