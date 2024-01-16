#parent table and child table using primary to foreign key

#parent table

create table Master(Dept_id int NOT NULL primary key,D_Name varchar(10),Adress varchar(10));
insert into Master values(1,'JACK','Mumbai');
insert into Master values(2,'TOM','Kolkata');
insert into Master values(3,'JERRY','Bangalore');

delete from Master where Dept_id=3;

#child table

create table Child(eno int NOT NULL,e_name varchar(10),salary int,d_no int, foreign key(d_no) references Master(Dept_id) );
insert into Child values('111','JACK',10000,1);
insert into Child values('112','TOM',15000,2);
insert into Child values('113','JERRY',20000,3);

select * from Child;

