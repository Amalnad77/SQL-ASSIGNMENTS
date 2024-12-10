create database  nation;
use nation;
create table country
(
id int primary key,
country_name varchar(50) not null,
population int  not null,
country_area varchar(50) not null
);

create table persons
(
id int primary key not null,
first_name VARCHAR(50) not null,
last_name varchar(50) not null,
population int not null,
rating DECIMAL not null,
country_id int  not null,
country_name varchar(50) not null
);
select*from country;

insert into country
value
(1,'america',10000,'newyork'),
(2,'india',3000,'new delhi'),
(3,'china',3500,'beijing'),
(4,'africa',1500,'kongo'),
(5, 'south korea',2000,'seoul'),
(6,'russia',3000,'moscow'),
(7,'israel',2000,'jerusalem'),
(8,'japan',1500,'tokyo'),
(9,'poland',3000,'warsaw'),
(10,'engalnd',3500,'paris');

select*from persons;
insert into persons
value
(1,'amal','sajeev',1000,4.5,101,'america'),
(2,'amar','sajeev',1000,4.3,102,'china'),
(3,'sudheer','sukumar',2000,4.2,103,'japan'),
(4,'sunil','chethri',2500,3.5,104,'poland'),
(5,'dheeraj','shaji',3000,4.8,105,'russia'),
(6,'surya','sivakumar',1500,3.8,106,'israel'),
(7,'siva','karthikeyan',1600,4.2,107,'south korea'),
(8,'aswathy','shaji',1500,4.1,108,'norway'),
(9,'dhruv', 'vikram',1400,4.5,109,'engalnd'),
(10,'malavika','wales',1200,4.8,110,'africa');

-- write an sql query to retrieve first three charcaters of country_name  from country table --

select substring( country_name,1,3) as first_three from country;

-- write an sql query to concatenate first name and last name from persons table--

select concat(first_name,last_name)as full_name from persons; 

-- write an sql query to count the number of unique country names from persons table --

select count(distinct country_name) as unique_countryname from persons;

-- write an sql query to find maximum population from persons table --

select max(population)as maximum_population from persons;

-- write an sql query to find minmum population from persons table--

select min(population)as minimum_population from persons;

-- insert two new rows into persons table making last name null --


select*from persons;
insert into persons value(11,'rudra','null',1200,4.5,111,'france'),
                         (12,'badri','null',1500,4.3,112,'germany');
                         
-- then write naother query to count last_name from persons table--

select COUNT(last_name) as number_of_lastnames from persons;

-- write an sql query to find number of rows in persons table--

select count(*) as  total_rows from persons;

-- write an sql query to show the population of first three records --

select*from persons
 order by   population   limit 3;
 
 -- write a query to retrieve three random rows of country  --
 
 select*from persons
 order by rand(country_name) limit 3;
 
 -- list all persons ordered by their rating in descending order --
 
 select *from persons
 order by rating desc;
 
 -- find the total population for each country in persons table --
 
 update persons
 set country_name ='india'
 where id='7';
 
 
 select  sum(population),country_name
 from persons
 group by country_name;
 
 -- find countries in persons table countries population more than 50000 --
 
 update persons
 set population ='90000'
 where id ='6';
 
 use nation;
 
 select country_name,population from persons
 where population>50000;
 
 
 -- list the total number of persons and averge rating of each country but only for countries with  more than two persons
 -- ordered by the average rating in ascending order--
 
 select country_name,
 count(*)as total_persons,
 avg(rating) as average_rating
 from persons
 group by country_name;
 select*from persons;
 update persons
 set country_name='japan'
 where id='5';
 
 
 select country_name,
 avg(rating) as average_rating
 from persons
 group by country_name
 having count(*)>2
 order by average_rating asc;