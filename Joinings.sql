#joining

#student Table
create table Student (
Roll_NO INT PRIMARY KEY,
name VARCHAR(20),
Address VARCHAR(20),
Age INT);

insert into Student(Roll_NO,name,Address,Age)values
(1,"Harsh","Delhi",18),
(2,"Pratik","Bihar",19),
(3,"Priyanka","Siliguri",20),
(4,"Deep","Ramnagar",18),
(5,"Saptarshi","Kolkata",19),
(6,"Dhanraj","Barabajar",20),
(7,"Rohit","Balurghat",18),
(8,"Niraj","Alipur",19);

select * from Student;

#Course table
create table Course (
Course_ID INT,
Roll_NO INT);

insert into Course(Course_ID,Roll_NO)values
(1,1),
(2,2),
(2,3),
(3,4),
(1,5),
(4,9),
(5,10),
(4,11);

select * from Course;

#INNER JOIN

select course.Course_ID,Student.name from Student INNER JOIN Course on Student.Roll_NO=Course.Roll_NO;

#LEFT JOIN

select Course.Course_ID,Student.name from Student LEFT JOIN Course on Student.Roll_NO=Course.Roll_NO;

#RIGHT JOIN

select Course.Course_ID,Student.name from Student RIGHT JOIN Course on Student.Roll_NO=Course.Roll_NO;

#FULL JOIN

select Course.Course_ID,Student.name from Student FULL JOIN Course on Student.Roll_NO=Course.Roll_NO;

#NATURAL JOIN

select * from Student NATURAL JOIN Course ;


#create employee table and inster values(mid as foreign key).

create table employe(Empid int primary key,
EMP_NAME varchar(20),
mid int, foreign key (mid) references employe (Empid));

insert into employe (Empid,EMP_NAME) values
(1,"Rahul"),
(2,"Zaid"),
(3,"Farhan"),
(4,"Raman");

select*from employe;

#SELF JOIN

select e.EMP_NAME,m.EMP_NAME from employe e join employe m on e.mid=m.Empid;


