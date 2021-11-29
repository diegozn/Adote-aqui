CREATE DATABASE acquatec;
USE acquatec;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
    telefone varchar(20),
	senha VARCHAR(50)
);
insert into usuario 
values (1, 'Diego', 'diego@gmail.com', '11534354', '123123');


create table pet (
id int primary key auto_increment,
animal varchar(20),
nomeAnimal varchar(30),
sexo varchar(10),
porte varchar(20),
idade varchar(20),
sobre varchar(300),
foto varchar(45),
contato varchar(20),
fk_usuario int,
foreign key (fk_usuario) references usuario(id)
);
INSERT INTO pet (animal, nomeAnimal, sexo, porte, idade, sobre, foto, contato, fk_usuario)
VALUES ('cachorro', 'Cacau', 'Femea', 'Grande', 'Adulto', 'index', 'index', '5511967197968', 1 ),
('cachorro', 'Zeca', 'Macho', 'medio', 'Adulto', 'index', 'index', '5511967197968', 1),
 ('Gato', 'Débora', 'Femea', 'medio', 'Adulto', 'index', 'index', '5511967197971', 1),
 ('Gato', 'Frida', 'Femea', 'medio', 'Adulto', 'index', 'index', '5511967197971', 1 ),
 ('Gato', 'Vitória', 'Femea', 'medio', 'Adulto', 'index', 'index', '5511967197968', 1 ) ,
  ('cachorro', 'Lilica', 'Femea', 'Grande', 'adulto', 'index', 'index', '5511967197968', 1 ) ,
  ('cachorro', 'Simba', 'Macho', 'Grande', 'adulto', 'index', 'index', '5511967197968', 1 ),
 ('cachorro', 'Elimia', 'Femea', 'Grande', 'idoso', 'index', 'index', '5511967197968', 1 ),
 ('cachorro', 'Haylei', 'Macho', 'Grande', 'adulto', 'index', 'index', '5511967197968', 1 ),
 ('cachorro', 'Jake', 'Macho', 'Grande', 'adulto', 'index', 'index', '5511967197968', 1 ) ,
  ('cachorro', 'Happy', 'Macho', 'Grande', 'filhote', 'index', 'index', '5511967197968', 1 ) ,
  ('cachorro', 'Duda', 'Femea', 'medio', 'filhote', 'index', 'index', '5511967197968', 1 ),
 ('cachorro', 'Lilica', 'Femea', 'medio', 'adulto', 'index', 'index', '5511967197968', 1 ) ,
 ('cachorro', 'bob', 'Macho', 'medio', 'idoso', 'index', 'index', '5511967197968', 1 ),
 ('Gato', 'Teco', 'Macho', 'medio', 'idoso','index', 'index', '5511967197968', 1) ,
  ('Gato', 'Sasha', 'Femea', 'medio', 'idoso','index', 'index', '5511967197968', 1) ,
  ('Gato', 'Tico', 'Macho', 'medio', 'filhote', 'index', 'index', '5511967197968', 1 ),
 ('cachorro', 'Lobinho', 'Macho', 'Grande', 'filhote', 'index', 'index', '5511967197968', 1 ),
 ('cachorro', 'Bob', 'Macho', 'Grande', 'filhote', 'index', 'index', '5511967197968', 1 ),
 ('Gato', 'Pérola', 'Femea', 'Grande', 'idoso', 'index', 'index', '5511967197968', 1 ) ,
  ('Gato', 'Raja', 'Femea', 'Grande', 'adulto', 'index', 'index', '5511967197968', 1) ,
  ('cachorro', 'Sarah', 'femea', 'grande', 'adulto', 'index', 'index', '5511967197968', 1 ),
 ('Gato', 'Gigi', 'Femea', 'Grande', 'adulto', 'index', 'index', '5511967197968', 1 ) ,
 ('Gato', 'Don', 'Macho', 'pequeno', 'filhote', 'index', 'index', '5511967197968', 1 ),
 ('cachorro', 'Pipoca', 'macho', 'Grande', 'adulto', 'index', 'index', '5511967197968', 1) ,
  ('Gato', 'Cherry', 'Femea', 'Grande', 'adulto', 'index', 'index', '5511967197968', 1 ) ,
  ('Gato', 'Ariane', 'Femea', 'Grande', 'adulto', 'index', 'index', '5511967197968', 1 ),
 ('Gato', 'Pitoco', 'Macho', 'Grande', 'adulto', 'index', 'index', '5511967197968', 1 ) ,
 ('Gato', 'Jessica', 'Femea', 'Grande', 'adulto', 'index', 'index', '5511967197968', 1 ),
 ('Gato', 'Shelley', 'Femea', 'Grande', 'adulto', 'index', 'index', '5511967197968', 1 ) ,
  ('cachorro', 'João', 'Macho', 'pequeno', 'filhote', 'index', 'index', '5511967197968', 1 ) ,
  ('Gato', 'Thor', 'Macho', 'grande', 'adulto', 'index', 'index', '5511967197968', 1 ),
 ('Gato', 'Valente', 'Macho', 'medio' ,'adulto', 'index', 'index', '5511967197968', 1 ) ,
 ('cachorro', 'Renata', 'Femea','medio' , 'adulto', 'index', 'index', '5511967197968', 1 ),
 ('cachorro', 'Anya', 'Femea','medio' , 'adulto', 'index', 'index', '5511967197968', 1 ) ,
  ('cachorro', 'Minnie', 'Femea','medio' , 'adulto', 'index', 'index', '5511967197968', 1 ),
 ('cachorro', 'Ringo', 'Macho','medio' , 'adulto', 'index', 'index', '5511967197968', 1 ) ,
 ('cachorro', 'Tamires', 'Femea','medio' , 'adulto', 'index', 'index', '5511967197968', 1 ),
 ('cachorro', 'Giuliano', 'Macho','medio' , 'adulto', 'index', 'index', '5511967197968', 1 ) ,
  ('cachorro', 'Miss Kitty', 'Femea','pequeno' , 'adulto', 'index', 'index', '5511967197968', 1 ) ,
  ('cachorro', 'Gabi', 'Femea','pequeno', 'adulto', 'index', 'index', '5511967197968', 1 ),
 ('gato', 'Ariana', 'Femea','pequeno', 'adulto', 'index', 'index', '5511967197968', 1 ) ,
 ('gato', 'Daniel', 'Macho','pequeno', 'adulto', 'index', 'index', '5511967197968', 1 ),
 ('cachorro', 'Eduardp','pequeno' ,'Macho', 'adulto', 'index', 'index', '5511967197968', 1) ,
  ('cachorro', 'Donilo','pequeno' ,'Macho', 'adulto', 'index', 'index', '5511967197968', 1 ) ,
  ('cachorro', 'Zuba','pequeno', 'Macho', 'adulto', 'index', 'index', '5511967197968', 1 ),
 ('gato', 'Evan','pequeno', 'Macho', 'adulto', 'index', 'index', '5511967197968', 1 ) ,
 ('gato', 'Cibele','pequeno', 'femea', 'adulto', 'index', 'index', '5511967197968', 1),
 ('gato', 'Sara','pequeno', 'femea', 'adulto', 'index', 'index', '5511967197968', 1) ,
  ('gato', 'Brad','pequeno', 'Macho', 'adulto', 'index', 'index', '5511967197968', 1) ; 

select count(animal), animal from pet
group by animal;

-- Quantidade de cachorros
select count(animal) from pet
where animal = 'cachorro';

-- Quantidade de gatos
select count(animal) from pet
where animal = 'gato';

select * from pet;

-- Quantidade de cachorros de pequeno porte
select count(porte) from pet
where animal = 'cachorro' and porte = 'pequeno';

-- Quantidade de cachorros de medio porte
select count(porte) from pet
where animal = 'cachorro' and porte = 'medio';
-- Quantidade de cachorros de grande porte
select count(porte) from pet
where animal = 'cachorro' and porte = 'grande';

-- Quantidade de Gatos de pequeno porte
select count(porte) from pet
where animal = 'gato' and porte = 'pequeno';
-- Quantidade de Gatos de medio porte
select count(porte) from pet
where animal = 'gato' and porte = 'medio';

-- Quantidade de grande porte
select count(porte) from pet
where animal = 'gato' and porte = 'grande';



-- Quantidade de pet filhote
select count(idade) from pet
where idade = 'filhote';
-- Quantidade de pet adulto 
select count(idade) from pet
where idade = 'adulto';
-- Quantidade de pet idoso
select count(idade) from pet
where idade = 'idoso';

select count(animal), animal from pet
group by animal;
select * from pet;
select * from usuario;

