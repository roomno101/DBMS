create database IF NOT EXISTS employee;
use employee;

				#for create table
                
create table employee (
emp_id INT PRIMARY KEY,
name VARCHAR(20),
age INT CHECK (age >= 18),
dept VARCHAR(20),
salaray INT NOT NULL);
				
                #for inserting values

INSERT INTO employee (emp_id,name,age,dept,salaray) values
(1,"Jack",23,"Boss",50000),
(2,"Jarry",22,"Tech",30000),
(3,"Tom",21,"Sales",20000),
(4,"BEN",20,"Hr",45000),
(5,"Carry",24,"Tech",35000);

				#view the table

select*from employee;

				#update the values	
                
update employee SET AGE=20 WHERE AGE=23;

				#add new column in table

alter table employee add(address varchar(30) NOT NULL);	

				#remane table name 	
                
ALTER TABLE employee RENAME TO emp;	


				#view the table after rename

select*from emp;

				#delete a  single row records using condition

DELETE FROM emp WHERE dept = 'Boss';

				# delete the entire column
                
ALTER TABLE emp DROP COLUMN dept;
                

				#delete the data from the table
                
truncate table emp; 

				#delete the whole table 

drop table emp;


				#note: use select*from your table name for the check the table and see the chages


