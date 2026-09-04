create database tcl;

use tcl;

create table  account
(accno int primary key , holdername varchar(30) , balance decimal(10,2));

insert into account values(101,"sakshi" ,10000) ,(102,"rahul" ,15000),(103,"priya" ,20000);

select * from account;

start transaction;

update account set balance = balance+1500 where accno =101;

select * from account;

commit;

start transaction;

update account set balance=balance - 3000 where accno =102;

select * from account;

rollback;

select * from account;

start transaction;

update account set balance = balance +2000 where accno = 101;

savepoint sp1;

update account set balance = balance +5000 where accno = 102;

select * from account;

rollback to sp1;

select * from account;

select * from information_schema.innodb_trx;

select trx_id,trx_state,trx_started,trx_query from information_schema.innodb_trx;

show processlist;

commit;

start transaction;

update account set balance = balance +9000 where accno = 102;

select trx_id,trx_state,trx_started,trx_query from information_schema.innodb_trx;

show processlist;
