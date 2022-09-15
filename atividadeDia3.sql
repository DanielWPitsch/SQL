create database padaria;

use padaria;
create table clientes(
nome varchar(20),
cpf varchar(11),
telefone int(11),
endereco varchar(50)
);

insert into clientes 
(nome, cpf, telefone, endereco)
values
('eu', '12345678912', 8399112233, 'Avenida esperança, manaira, 3022');

create table produtos(
nome varchar(10),
codigo int(10),
preco float(5,2)
);

insert into produtos 
(nome, codigo, preco)
values
('pao', 123, 000.70);
