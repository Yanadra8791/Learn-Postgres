CREATE TABLE employees(
	id int PRIMARY KEY,
	first_name varchar(40) NOT NULL,
	last_name varchar(40)NOT NULL
);

CREATE TABLE employees_audits(
	id int PRIMARY KEY,
	employees_id int NOT NULL,
	last_name varchar(40) NOT NULL,
	change_on timestamp(6) NOT NULL
	);