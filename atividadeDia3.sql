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

insert into clientes 
(nome, cpf, telefone, endereco)
values
('tu', '12342278912', 8399220022, 'Avenida Poeta, Bessa, 2122');

insert into clientes 
(nome, cpf, telefone, endereco)
values
('ele', '12995678912', 8377112233, 'Avenida Dom Pedro I, Centro, 1122');

insert into clientes 
(nome, cpf, telefone, endereco)
values
('nos', '12345998912', 8399992233, 'Avenida Monteiro da Franca, sei lah, 3332');

insert into clientes 
(nome, cpf, telefone, endereco)
values
('vos', '12388678912', 8390012233, 'Avenida Santa Catarina, Bairro dos estados, 8976');


create table produtos(
nome varchar(10),
codigo int(10),
preco float(5,2)
);

insert into produtos 
(nome, codigo, preco)
values
('pao', 123, 000.70);

insert into produtos 
(nome, codigo, preco)
values
('bolo', 122, 007.70);

insert into produtos 
(nome, codigo, preco)
values
('leite', 121, 010.70);

insert into produtos 
(nome, codigo, preco)
values
('queijo', 120, 043.70);

insert into produtos 
(nome, codigo, preco)
values
('café', 111, 002.70);
