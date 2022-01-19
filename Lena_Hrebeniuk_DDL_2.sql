create table employees( 
id serial primary key, 
employee_name varchar (50) unique NOT null
);

insert into employees (employee_name) 
values (1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(54),
(55),
(56),
(57),
(58),
(59),
(60),
(61),
(62),
(63),
(64),
(65),
(66),
(67),
(68),
(69),
(70);


select * from employees;

create table salary_1 (
id serial primary key,
monthly_salary int not null
);

insert into salary_1 (monthly_salary) 
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

select * from salary_1;

create table employees_salary_1 (
id serial primary key,
employee_id int not null,
salary_id int not null
);

insert into employees_salary_1 (employee_id, salary_id) 
values (2, 3),
(7, 1),
(12, 2),
(22, 4),
(25, 5),
(26, 6),
(29, 7),
(30, 8),
(35, 9),
(39, 10),
(43, 11),
(48, 12),
(51, 13),
(52, 16),
(53, 15),
(55, 14),
(57, 3),
(58, 7),
(59, 4),
(60, 10),
(61, 5),
(62, 6),
(63, 6),
(64, 7),
(65, 9),
(66, 11),
(67, 8),
(68, 12),
(69, 6),
(70, 1),
(71, 3),
(72, 2),
(74, 14),
(76, 16),
(77, 12),
(79, 9),
(81, 4),
(85, 6),
(87, 4),
(88, 7),
(90, 10);

select * from employees_salary_1;

create table roles_1 (
id serial primary key,
role_name int not null
);

alter table roles_1 
alter column role_name type varchar (30) using role_name::varchar(30);

insert into roles_1 (role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Pethon developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA ehgineer');

select * from roles_1;

create table roles_1_employees (
id serial primary key,
employee_id int not null,
role_id int not null,
foreign key (employee_id)
	references employees (id),
foreign key (role_id)
	references roles_1 (id)
);

insert into roles_1_employees (employee_id, role_id)
values (7, 2),
(20, 4),
(3, 9),
(5, 13),
(23, 4),
(11, 2),
(10, 9),
(22, 13),
(21, 3),
(34, 4),
(6, 7),
(8, 1),
(2, 15),
(40, 8),
(51, 10),
(27, 11),
(31, 12),
(60, 14),
(20, 15),
(67, 16),
(55, 17),
(44, 20),
(65, 19),
(24, 18),
(30, 4),
(71, 5),
(26, 9),
(63, 17),
(57, 3),
(25, 20),
(4, 1),
(32, 2),
(23, 9),
(37, 10),
(36, 3),
(49, 12),
(50, 19),
(52, 18),
(61, 10),
(64, 11),
(70, 7);


select * from roles_1_employees;
