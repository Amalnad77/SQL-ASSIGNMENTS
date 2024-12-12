use nation;
select*from country;
select *from persons;

-- 1.inner join --

select c.id,c.country_name,p.population,p.rating from country c 
inner join
persons p on c.country_name= p.country_name;


-- left join --
select*from country;
select*from persons;
select c.id,p.first_name,p.last_name,p.rating,c.country_name from country C
left join
persons p on c.country_name=p.country_name;


-- right join--

select p.first_name,p.last_name,c.country_name from country C
right join
persons p on c.country_name=p.country_name;


-- full join --
select*from country;
select p.first_name,p.last_name,p.country_name,c.country_area,c.population from country c
left join
persons p on c.country_name=p.country_name

UNION

select p.first_name,p.last_name,c.country_name,c.country_area,c.population from country c
right join
persons p on c.country_name =p.country_name;


-- 2.list all  distinct country names from both country and persons table --

select *from country;
select *from persons;
  select c.country_name from country c 
  union
  select p.country_name  from persons p;
  
-- 3.list all country names from both the country and persons tables including duplicates --

select c.country_name from country C

union all

select p.country_name from persons p;

-- 4. round the ratings of all persons to the nearest integer in persons  table --
  
select*from persons;
alter table persons
modify rating decimal(10,2);

insert into persons(id,first_name,last_name,population,rating,country_id,country_name)
VALUE
(13,'roopa','vijil',1500,5.62,113,'america'),
(14,'rakesh','soman',1400,9.23,144,'russia');

select*from persons;
select id, ceil(rating) as new_rating from persons;