create database student; 

use student;

create table student(
RollNo int primary key,
StudentName varchar(30) not null,
Maths int ,
Science int,
English int


);

insert into student values(1,"Aakash",56,74,69);
insert into student values(2,"Rishab",75,84,78);
insert into student values(3,"Samiksha",94,74,32);
insert into student values(4,"Paras",35,45,42);
insert into student values(5,"Jatin",89,90,78);
insert into student values(6,"Sahil",45,30,49);
insert into student values(7,"Ajay",78,74,75);
insert into student values(8,"Abhishekh",89,94,98);
insert into student values(9,"Ankit",56,74,60);
insert into student values(10,"Harsh",60,54,78);
insert into student values(11,"Nitin",69,71,78);

select * from student;
use student;
select Count(*) as Total from student;

select AVG(Maths) as AV_Maths,AVG(Science) as AV_SCIENCE,AVG(English) as AV_ENGLISH from student;

Select RollNo,StudentName,(Maths+Science+English) as Total from student;

Select StudentName,max(Science),max(Maths)
from student;

Select RollNo,StudentName,Maths from student ORDER BY Maths DESC LIMIT 1;

DELIMITER //
CREATE PROCEDURE NoOfRows()
BEGIN
 select count(*) as NoOfRows from student;
END //

DELIMITER ;

Delimiter //
create procedure Rows()
Begin
select count(*) as NUM from student;
End //
Delimiter ; 
call NoOfRows();
call Rows()