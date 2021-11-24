CREATE DATABASE acquatec;

USE acquatec;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
    telefone varchar(20),
	senha VARCHAR(50)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
    descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
); 

create table pet (
id int primary key auto_increment,
animal varchar(20),
nomePet varchar(30),
sexo varchar(10),
porte varchar(20),
idade varchar(20),
sobrePet varchar(300),
fotoPet varchar(45),
fk_usuario int,
foreign key (fk_usuario) references usuario(id)
);

select * from aviso;


