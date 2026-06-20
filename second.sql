create database college2;
use college2;
create table student(
rollno int primary key,
name varchar(70),
marks int not null ,
grade varchar(1),
city varchar(30)
);
insert into student values
(101,"anil",78,"c","pune"),
(102,"bhumka",93,"A","mumbai"),
(103,"chtan",85,"B","mumbai"),
(104,"dhruva",96,"A","delhi"),
(105,"emanuel",12,"F","delhi"),
(106,"farah",82,"B","delhi");

select * from student;

select rollno,city from student;

select distinct city from student;

select * from student where rollno = 104;

select name from student where marks > 90;

select name from student where marks > 90  and rollno =102;

select name from student where marks > 90  or rollno =102;

select * from student where marks between 80 and 90;

select  * from student where grade in("A","C");

select  * from student where grade  not in("A","C");


select  * from student where grade  not in("A","C") limit 2;

select  * from student where grade  not in("A","C") order by grade limit 2;

select  * from student where grade  not in("A","C") order by  grade DESC limit 2;

select * from student where marks between 80 and 90 order by marks ;
