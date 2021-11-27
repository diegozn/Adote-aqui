	nome VARCHAR(50),
	email VARCHAR(50),
    telefone varchar(20),
	senha VARCHAR(50)
);
insert into usuario 
values (1, 'Diego', 'diego@gmail.com', '11534354', '123123');

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
nomeAnimal varchar(30),
sexo varchar(10),
porte varchar(20),
idade varchar(20),
sobre varchar(300),
foto varchar(45),
contato varchar(20)
fk_usuario int,
foreign key (fk_usuario) references usuario(id)
);
 -- INSERT INTO pet (animal, nomeAnimal, sexo, porte, idade, sobre, foto, contato) VALUES ('a', 'f', 'f', 'fd', 'fd', 'tre', 'ewrg', 'gewr' );
select * from pet;
select * from usuario;