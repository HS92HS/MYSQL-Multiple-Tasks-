CREATE TABLE STUDENT_DATA.customer(
	C_id int,
    f_name varchar(100),
    l_name varchar(100),
	TOTAL_DUE FLOAT
);

INSERT INTO student_data.CUSTOMER(C_ID, F_NAME,L_NAME,TOTAL_DUE) VALUES 
(01,"Hunain","Munir",510), (02,"Wasiq","Memon",680), (03,"Ashhad","Ahmed",1090),
(01,"Hunain","Munir",320), (04,"Wasay","Shaikh",510), (02,"Wasiq","Memon",10),
(02,"Wasiq","Memon",580), (02,"Wasiq","Memon",1680), (05,"Kashif","Shaikh",1510),
(01,"Hunain","Munir",510), (03,"Ashhad","Ahmed",1090);

select * from student_data.customer;

-- Question : Make a new table from this table in which :
-- 1. Add the First and Last name, Where customer id and name is same sum the total dues.

Create table student_data.customer2
select concat(f_name ," ", l_name) as name from student_data.customer;
 
select * from student_data.customer2; 
-- select Sum(Total_Due) from student_data.customer where c_id = 1; 
create table student_data.customer4
select c_id, sum(total_due) as Total from student_data.customer 
group by c_id having sum(customer.c_id);

Create table student_data.customer3
select concat(f_name ," ", l_name) as name from student_data.customer;

select * from student_data.customer2 cross join student_data.customer4;

select * from student_data.customer2


