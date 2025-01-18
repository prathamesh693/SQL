Create database Sql_basic;

Create table employee_demographics (employee_ID int not null, first_name varchar(50), last_name varchar(50), 
age int, gender varchar (10), birth_date DATE, Primary key (employee_ID));

-- we can assign primary key at the starting i.e. employee_ID int not null primary key
Create Table employee_salary( employee_id int not null, first_name varchar(50) not null, 
last_name varchar(50),occupation varchar(50),salary INT,dept_id INT);

insert into employee_demographics(employee_ID,first_name,last_name,age,gender,birth_date)
values
(1,'Leslie','knope',44,'Female','1979-09-25'),
(3,'Tom','Haverford',36,'Male','1987-03-04'),
(4,'April','Lulgate',29,'Female','1994-03-27'),
(5,'Jerry','Gergics',51,'Male','1962-08-28'),
(6,'Donsha','Meagle',46,'Female','1977-07-30'),
(7,'Ann','Perkins',35,'Female','1988-12-01'),
(8,'cheris','Traeger',43,'Male','1900-11-11'),
(9,'Den','Wyatt',30,'Male','1985-07-26'),
(10,'Andy','Owyer',34,'Male','1989-03-25'),
(11,'Mark','Brendanow',40,'Male','1983-06-14'),
(12,'Creig','mideletreeke',37,'Male','1986-07-27');


INSERT INTO employee_salary(employee_id,first_name,last_name,occupation,salary,dept_id)
VALUES
(125,'roy','joy','actor',52146,101),
(126,'roy','joy','actor',52146,101),
(128,'roy','joy','actor',52146,101),
(129,'roy','joy','actor',52146,101),
(130,'roy','joy','actor',52146,101),
(131,'roy','joy','actor',52146,101),
(132,'roy','joy','actor',52146,101),
(133,'roy','joy','actor',52146,101),
(134,'roy','joy','actor',52146,101),
(135,'roy','joy','actor',52146,101),
(136,'roy','joy','actor',52146,101);
