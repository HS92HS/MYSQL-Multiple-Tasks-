-- To Create a Table --  
create table student_data.students (id int, name varchar(100));
-- To insert a data into the column --
insert into student_data.students (id, name) values (01,"Hunain Munir");
-- To insert a more data into that column --
insert into student_data.students (id, name) values (02,"Wasiq Memon");
insert into student_data.students (id, name) values (06,"Wasay Shaikh");

-- To see the data from the column --
select * from student_data.students;

-- Make more Tables --
create table student_data.students2 (id int, name varchar(100));
create table student_data.students3 (id int, name varchar(100));
-- To insert data into the table 2--
insert into student_data.students2 (id,name) values (01,"Sidra Chippa"), (02,"Nayab Hyderi");
insert into student_data.students2 (id,name) values (03,"Zainab Marri");
-- To insert data into the table 3--
insert into student_data.students3 (id,name) values (03,"Aman Kumar"), (04,"Sandy");
insert into student_data.students3 (id,name) values (01,"Pishtu");
-- To See the data into all the tables--
select * from student_data.students;
select * from student_data.students2;
select * from student_data.students3;
-- Make new table and union it with each other (all three) :  
-- Union will combine all the given columns and make the values appear one's--
create table student_data.st_ids AS 
select id from student_data.students 
UNION 
select id from student_data.students2
UNION 
select id from student_data.students3;

-- To see the data from the table --
select * from student_data.st_ids;
-- To sort the data in ascending order -- 
select id from student_data.st_ids order by id ASC;
