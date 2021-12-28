create table salary (
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

create table roles(
	id serial primary key,
	role_title varchar (30) unique not null
);

select * from roles;

create table salary_roles(
	id serial primary key,
	id_role int not null,
	id_salary int not null,
	foreign key (id_role)
		references roles (id),
	foreign key (id_salary)
		references salary (id)
);

select * from salary_roles;

insert into salary (monthly_salary)
values  (1000),
		(1200),
		(1300),
		(1400),
		(1450),
		(1500),
		(1600),
		(1700),
		(1800),
		(3000);

insert into roles (role_title)
values  ('QA_manual_junior'),
		('QA_manual_middle'),
		('QA_manual_senior'),
		('QA_automation_junior'),
		('QA_automation_middle'),
		('QA_automation_Senior'),
		('Developer_java_junior'),
		('Developer_java_middle'),
		('Developer_java_senior'),
		('Developer_Python_junior'),
		('Developer_Python_middle'),
		('Developer_Python_senior'),
		('HR'),
		('Designer'),
		('Manager');
		
insert into salary_roles (id_role, id_salary)
	values  (1, 1),
			(2, 5),
			(3, 3),
			(4, 3),
			(5, 6),
			(6, 9),
			(7, 8),
			(8, 4),
			(9, 10),
			(10, 7);
			
alter table salary_roles 
add column devices varchar (50);

alter table salary_roles 
drop column devices;

alter table roles 
add column taxi int;

alter table roles 
rename column taxi to parking;

alter table roles 
rename column parking to taxi; 

alter table roles 
alter column taxi type varchar(40) using taxi::varchar(30);

alter table roles 
alter column taxi type int using taxi::integer;