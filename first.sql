show databases;
create database college;
use college;
create table student(
 rollno INT primary key,
 name varchar(100)
);
select * from student;
insert into student(rollno , name) values(101,"karan"),(102,"arjun"),(103,"ram");
insert into student values(104,"shyam");

create database XYZ;
use XYZ;
create table employeeinfo(
id INT primary key ,
name varchar(70),
salary double);
insert into employeeinfo values(1,"adam",25000),(2,"bob",30000),(3,"casey",400000);
select * from employeeinfo;