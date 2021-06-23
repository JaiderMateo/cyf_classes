create table mentors(
id serial primary key,
name varchar(30) not null,
years int,
address varchar(120),
languages varchar(30)
);
insert into mentors (id, name, years, address, languages) values (1, 'Jhon Perez', 2, '66 Perry Street', 'java');
insert into mentors (id, name, years, address, languages) values (2, 'Steve Wonder', 4, '36 Fuller Place', 'python');
insert into mentors (id, name, years, address, languages) values (3, 'Ralf Jones', 1, '221 79th St', 'java script');
insert into mentors (id, name, years, address, languages) values (4, 'Richie Brown', 6, '8 Montague', 'C');
insert into mentors (id, name, years, address, languages) values (5, 'Adam Walsh', 3, '41 Charlton Street', 'visual basic');

create table students(
id serial primary key,
name varchar(30) not null,
address varchar(60),
graduated bool
);

insert into students (id , name , address , graduated) values(1, 'Maria Carmen', 'c de Sevilla', True);
insert into students (id , name , address , graduated) values(2, 'Juan Antonio', 'c de Portugal', False);
insert into students (id , name , address , graduated) values(3, 'Ever Soto', 'Camp Ave', False);
insert into students (id , name , address , graduated) values(4, 'Adriana Hernandez', 'Carroll 54', True);
insert into students (id , name , address , graduated) values(5, 'Camilo Rodriguez', 'Oakland 21', True);
insert into students (id , name , address , graduated) values(6, 'Daniel Gomez', 'Ellen st', False);
insert into students (id , name , address , graduated) values(7, 'Daniela Guzman', 'Hanbury 76', True);
insert into students (id , name , address , graduated) values(8, 'Laura Novoa', 'Spelman 78', False);
insert into students (id , name , address , graduated) values(9, 'Maria Cervantes', 'c del Jaspe', False);
insert into students (id , name , address , graduated) values(10, 'Sebastian Ireggi', 'c san Basillio', True);
select * from mentors m ;
select * from students s ;

create table classes (
id serial primary key,
mentor_id int references mentors(id),
topic varchar(30),
start_date date,
duration_days int,
location varchar(30)
);

insert into classes (id, mentor_id , topic , start_date , duration_days, "location") values(1, 4 , 'styles', '01-04-2020', 15, 'BCN');
insert into classes (id, mentor_id , topic , start_date , duration_days, "location") values(2, 3 , 'java script', '05-05-2020', 30, 'BCN');
insert into classes (id, mentor_id , topic , start_date , duration_days, "location") values(3, 2 , 'node js', '15-07-2020', 12, 'BCN');
insert into classes (id, mentor_id , topic , start_date , duration_days, "location") values(4, 1 , 'react js', '25-09-2020', 40, 'BCN');

CREATE TABLE enrolled(
class_id int references classes(id),
student_id int references students(id));


INSERT INTO enrolled ( class_id, student_id) values (2, 2);
INSERT INTO enrolled ( class_id, student_id) values (2, 2);
INSERT INTO enrolled ( class_id, student_id) values (3, 3);
INSERT INTO enrolled ( class_id, student_id) values (4, 4);
INSERT INTO enrolled ( class_id, student_id) values (1, 5);
INSERT INTO enrolled ( class_id, student_id) values (2, 6);
INSERT INTO enrolled ( class_id, student_id) values (3, 7);
INSERT INTO enrolled ( class_id, student_id) values (4, 8);
INSERT INTO enrolled ( class_id, student_id) values (1, 9);
INSERT INTO enrolled ( class_id, student_id) values (2, 10);


select * from mentors m where m.years > 5;
select * from mentors m where m.languages = 'java script';
select * from students s where s.graduated = true;
select * from classes c where c.start_date < '01-06-2020';
select e.student_id from enrolled e where e.class_id = 2;}