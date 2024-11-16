create database school;
create table class(
roll_no int(50) AUTO_INCREMENT primary key,
student_name char(50) not null,
marks int(100) not null,
grade char(1) check(grade in('A','B','C','D'))
);
select*from class;
insert into class
VALUE
('1','manju','50','A'),
('2','ranju','40','B'),
('3','nandhini','30','A');
#USING SELECT COMMAND TO DISPALY THE TABLE
SELECT*FROM class;
#ADD COLUMN NAMED CONTACT  IN TO CLASS TABLE
alter table class add contact int(10);
#REMOVE GRADE COLUMN FROM THE CLASS TABLE
alter table class drop column grade;
#RENAME TGHE CLASS TABLE INTO CLASS TEN 
rename table class to CLASS_TEN;
#DELETE ALL ROWS FROM TABLE
TRUNCATE CLASS_TEN;
#REMOVE THE TABLE FROM THE DATABASE
drop table CLASS_TEN;