use college2;

alter table student add column age int not null default 19;

select * from student;

alter table student  modify column age varchar(2);

alter table student change age stu_age int;

alter table student drop stu_age ;

insert into student values(107,"bob",78,"c","solapur",20);

select * from student;

alter table student rename to STUD_ENT;

alter table STUD_ENT rename to student;

truncate table student;

select * from student;

insert into student values
(101,"anil",78,"c","pune",19),
(102,"bhumka",93,"A","mumbai",18),
(103,"chtan",85,"B","mumbai",12),
(104,"dhruva",96,"A","delhi",8),
(105,"emanuel",12,"F","delhi",12),
(106,"farah",82,"B","delhi",23);

alter table student change column name Fullname varchar(30) not null;

select * from student;

set SQL_SAFE_UPDATES = 0;

delete from  student where marks <70;

alter table student drop column grade;

select * from student;

