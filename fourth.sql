use college2;

create table dept (
id int primary key,
name varchar(50)
);

insert into  dept values(101,"engllish"),(102,"IT");

select * from dept;

drop table teacher ;

create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key(dept_id) references dept(id)
on update CASCADE 
on delete CASCADE
);

insert into teacher values(101,"Adam",101),(102,"eve" ,102);

select * from teacher;

update dept set id=103 where id=102;

select * from teacher;



