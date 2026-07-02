use college2;

select * from student;

select count(rollno) from student;

select max(marks) from student;

select min(marks) from student;

select count(city) from student;

select city from student group by city;

select city ,count(rollno) from student group by city;

select city ,avg(marks) from student group by city;

select city ,avg(marks) from student group by city order by city;

select city ,avg(marks) from student group by city order by avg(marks) DESC;

select grade ,count(name) from student group by grade order by grade; 

select city,count(rollno) from student  group by city having max(marks) >90;

select city  from student where grade="A" group by city having max(marks>90)  order by city DESC;

set SQL_SAFE_UPDATES = 0;

update student set grade="O" where grade="A";

select name , grade from student;

update student set marks="82" where rollno="105";

select name , marks from student;

update student set grade="B" where marks BETWEEN 80 and 90;

select name , grade from student;

update student set marks=marks+1;

select * from student;

update student set marks=13 where rollno=105;

delete from student where rollno=105;

select * from student;