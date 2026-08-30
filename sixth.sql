create database college3;

use college3;

create table student(id int primary key ,name varchar(30));

insert into student values(101,"adam"),(102,"bob"),(103,"casey");

create table course(id int primary key ,course varchar(20));

insert into course values(102,"english"),(105,"math"),(103,"science"),(107,"computer science");

select * from student;

select * from course;

select *
from student as s
inner join course as c
on s.id = c.id;

select *
from student as s
left join course as c
on s.id = c.id;

select * 
from student as s
right join course as c
on s.id= c.id;

select *
from student as s
left join course as c
on s.id = c.id
union 
select * 
from student as s
right join course as c
on s.id= c.id;

select *
from student as s
left join course as c
on s.id = c.id
where c.id is null;

select * 
from student as s
right join course as c
on s.id= c.id
where s.id is null;