create table login (uname varchar(20) primary key,pass varchar(20));
insert into login values('ATS','123');
create table class_data (class_name varchar(30) primary key, strength int);
insert into class_data values ('TYBTech_A',76);
insert into class_data values ('TYBTech_B',75);
select * from class_data
create table attendance_data (rn int,class_name varchar(30),subject_name varchar(30),date1 date,time_slot varchar(30),presenty int,primary key(rn,subject_name,date1,time_slot));