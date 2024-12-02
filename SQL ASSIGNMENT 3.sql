use sales;
create table managers
(
manager_id INT primary key AUTO_INCREMENT,
first_name VARCHAR(20),
last_name varchar(20),
dob TIMESTAMP,
age int check(age<50),
last_update TIMESTAMP,
gender varchar(10),
department varchar(10),
salary int not null
);
select*from managers;
alter table managers 
modify  last_update date;


insert into managers(first_name,last_name,dob,age,last_update,gender,department,salary)
VALUE
('rohan','suban','1999-2-11','22','2013-10-25','male','IT','50000'),
('dhruv','vikram','2000-2-21','23','2013-9-23','male','IT','50000'),
('aliya','hameed','1999-10-24','20','2015-10-28','female','IT','60000'),
('shain','thomas','1999-10-25','22','2014-8-25','male','accountant','70000'),
('shalini','sajeev','1995-12-24','33','2016-12-24','female','govt emp','70000'),
('dharani','parabhu','1998-5-20','35','2017-10-22','female','doctor','85000'),
('dhiru','ambani','1995-11-19','45','2018-12-14','male','business','95000'),
('afsal','ali','1999-12-24','22','2015-5-28','male','doctor','55000'),
('tini','tom','2000-10-22','21','2015-2-22','male','IT','50000'),
('vivek','sasi','2001-12-25','23','2014-5-21','male','IT','70000');

select*from managers;


-- write a query that retrieves the name and date of birth of manager with manager id 1--
select first_name, last_name, dob from managers
where manager_id='1';

-- write a query to dispaly the annual salary of the employees--
select first_name, last_name, salary from managers;
select first_name,last_name, salary*12 annual_salary from managers;

-- write  a query to display all records of all managers except aliya--
select*from managers
where not first_name='aliya';

-- write query to dispaly details of managers whose department is it and earns more than 25000 permonth--
update  managers
set salary='25000'
where manager_id='5';
select*from managers
where salary='25000';

-- write a query to display the details of managerswhose salary is between 10000 and 35000 --
update managers
set salary='10000'
where manager_id='1';
select*from managers
where salary BETWEEN 10000 and 35000;