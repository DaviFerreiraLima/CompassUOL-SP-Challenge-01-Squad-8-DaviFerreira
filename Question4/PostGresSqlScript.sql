create database Question4
use Question4

create table Address (
		addressId SERIAL PRIMARY KEY,
		zip  VARCHAR(50) NOT NULL,
		street VARCHAR(50) NOT NULL,
		complement VARCHAR(100),
		neighborhood VARCHAR(50) NOT NULL,
		city VARCHAR(50) NOT NULL,
		state VARCHAR(50) NOT NULL,
		country VARCHAR(50) NOT NULL
);

create table Person (
	person_id  SERIAL PRIMARY KEY,
	name VARCHAR(200) NOT NULL ,
	age INT NOT NULL,
	phone VARCHAR(20) NOT NULL,
	height FLOAT NOT NULL,
	email VARCHAR(200) NOT NULL,
	cpf VARCHAR(11) NOT NULL,
	birthday DATE NOT NULL,	
	address_id SERIAL,
	FOREIGN KEY (address_id) REFERENCES Address (addressId)
);