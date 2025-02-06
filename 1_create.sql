CREATE TABLE farm (
	id serial PRIMARY KEY,
	farm_name varchar (100) not null,
	farm_location varchar (200) not null,
	area decimal (11,2) not null,
	contact_info varchar (100) not null
);

CREATE TABLE weather (
	id serial PRIMARY KEY,
	description varchar(20) not null,
	temperature decimal (3,1) not null,
	humidity decimal (3,1) not null,
	time_of_recording timestamp not null,
	wind_speed smallint,
	wind_direction varchar (2)
);

CREATE TABLE tasks (
	id serial PRIMARY KEY,
	description text not null,
	status varchar (50) not null,
	due_date date not null
);

CREATE TABLE tools (
	id serial PRIMARY KEY,
	tool_name varchar (100) not null,
	tool_type varchar (50) not null,
	tool_condition varchar (30) not null,
	price smallint not null,
	id_farm int not null,
	id_tasks int not null,
	FOREIGN KEY (id_farm) references farm (id),
	FOREIGN KEY (id_tasks) references tasks (id)
);

CREATE TABLE employees (
	id serial PRIMARY KEY,
	employee_name varchar (100) not null,
	employee_role varchar (100) not null,
	salary decimal (7,2) not null,
	hire_date date,
	contact_info varchar (100),
	id_farm int not null,
	id_tasks int not null,
	FOREIGN KEY (id_farm) references farm (id),
	FOREIGN KEY (id_tasks) references tasks (id)
);

CREATE TABLE crops (
	id serial PRIMARY KEY,
	crop_type varchar (100) not null,
	growth_stage varchar (50),
	planting_date date,
	harvest_date date
);

CREATE TABLE fields (
	fid serial PRIMARY KEY,
	area DECIMAL (11,2) not null,
	field_location varchar (200) not null,
	soil_type varchar (50),
	id_farm int not null,
	id_crops int not null,
	FOREIGN KEY (id_farm) references farm (id),
	FOREIGN KEY (id_crops) references crops (id)	
);

CREATE TABLE pest_and_disease (
	id serial PRIMARY KEY,
	pest_disease_type varchar (7) not null,
	nomenclature varchar (100) not null,
	plant_state varchar (50),
	treatement text	
);

CREATE TABLE crops_pest_and_disease (
	id serial PRIMARY KEY,
	id_crops int not null,
	id_pest_and_disease int not null,
	FOREIGN KEY (id_crops) references crops (id),
	FOREIGN KEY (id_pest_and_disease) references pest_and_disease (id)
);

CREATE TABLE animals (
	id serial PRIMARY KEY,
	animal_type varchar (50) not null,
	breed varchar (50),
	age smallint,
	health_status varchar (50),
	id_farm int not null,
	FOREIGN KEY (id_farm) references farm (id)	
);

CREATE TABLE sales (
	id serial PRIMARY KEY,
	sale_type varchar (10) not null,
	items text not null,
	quantity smallint not null,
	price decimal (7,2) not null,
	sale_date date not null,
	id_crops int,
	id_farm int not null,
	id_animals int,
	FOREIGN KEY (id_crops) references crops (id),
	FOREIGN KEY (id_farm) references farm (id),
	FOREIGN KEY (id_animals) references animals (id)
);