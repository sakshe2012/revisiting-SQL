create database college4;

use college4;

create table student(
rollno int primary key,
name varchar(30),
marks int not null,
grade varchar(30),
city varchar(30)
);


insert into student values (101,"anil",78 ,"c" ,"pune"),
(102,"bhumika",93 ,"A" ,"mumabai"),
(103,"chetam",85 ,"B" ,"mumbai"),
(104,"dhruv",96,"A" ,"delhi"),
(105,"emanueal",92 ,"F" ,"delhi"),
(106,"farah",82 ,"B" ,"delhi");

select * from student;

select avg(marks) from student;

select name, marks
 from student 
 where marks>87.6667;
 
 select name, marks
 from student 
 where marks > (select avg(marks) from student);
 
 
 
select rollno from student where rollno % 2 =0;
 
 select  rollno, name   from student where rollno in(102,104,106);
 
 select  name, rollno 
 from student
 where rollno in(select rollno from student where rollno % 2 =0);
 
 select * from student where city =  "delhi";
 
 select max(marks) from (select * from student where city =  "delhi") as temp ;
 
 select max(marks)  from student where city ="delhi";
 
 select (select marks from student) ,name from student;
 
 create view view1 as 
 select rollno,name ,marks from student;
 
 select * from view1;
 
 select * from view1 where marks>90;
 
 drop view view1;