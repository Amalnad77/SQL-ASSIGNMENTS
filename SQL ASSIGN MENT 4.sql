use sales;
create table  country
(
id int AUTO_INCREMENT primary key,
country_name varchar(50)  not null,
population int not null,
country_area int not null
);

use sales;
create table persons
(
id int AUTO_INCREMENT primary KEY,
f_name varchar (50) not null,
l_name varchar(50) not null,
population int not null,
rating DECIMAL not null,
country_id int not null,
country_name varchar(50) not null
);
select*from country;
alter table country
modify country_area varchar(50)not null;
insert into country(country_name,population,country_area)
value
('america','10000','newyork'),
('uae','1000','dubai'),
('russia','1000','moscow'),
('poland','2000','warsawa'),
('brazil','1500','riode genero'),
('india','3000','new delhi'),
('china','3500','beijing'),
('japan','900','tokyo'),
('united kingdom','2000','paris'),
('italy','2500','romania');
select*from country;

select*from persons;
insert into persons(f_name,l_name,population,rating,country_id,country_name)
VALUE
('amar','sajeev','1000','4.5','101','america'),
('ajay','sukumar','1500','3.5','102','china'),
('tony','feruguson','1300','3.8','104','poland'),
('amal','sajeev','2000','4.8','105','italy'),
('dhruv','prhalad','2000','4.7','106','russia'),
('edwin','james','2500','4.5','107','slovenia'),
('akhilesh','yadav','1500','3.0','108','latvia'),
('sowmya','sudheer','2000','3.9','109','japan'),
('aswathy','shajee','2000','4.2','110',' uae'),
('vysakh','suseel','1500','4.9','111','brazil');

-- list distinct country names from the persons table--

use sales;
select DISTINCT country_name
from persons;

#select first name and last name from the persons tablewith aliases #
select*from persons;
select concat(f_name,l_name) as full_name from persons;

-- find all persons with a rating greater than 4.0--

select * from persons where rating >4.0;

-- select countries where population more than 10 lakhs --

 select*from persons;
update persons
set population='2000000'
where id ='1';

select country_name from persons where population >1000000;
 
 -- find persons who are from 'USA' or having rating greater than 4.5 --
  select f_name,l_name, rating >'4.5' from persons
  where country_name='america';
  
  -- find all the persons where country_name is null --
  
  update persons
  set country_name ='null'
  where id='5';
  
  select f_name,l_name from persons
  where country_name ='null';
  
  -- find all the person from countries like 'USA','CANADA',and 'UK' --
  SELECT*FROM persons;
  update persons
  set country_name ='CANADA'
  where id='9';
  
  select f_name, l_name from persons
  where  country_name in('USA','UK','CANADA');
  
  -- find all the persons not from the countries 'india' and 'australia' --
  
  select* from persons;
  
  update persons
  set country_name ='australia'
  where id='6';
select f_name,l_name  from persons
where  country_name not in ('india','australia');

-- find all countries with population between 5 lakhs and 20 lakhs,--

select*from persons;

update persons

set  population ='600000'
where id='6';

select country_name from persons 
where population between 500000 and 2000000;


-- select countries whose name do not start with c --
select*from persons;

select country_name  from  persons
where country_name not  like 'c%';