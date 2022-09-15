create database bancofabrica;

use bancofabrica;
create table cursos(
aula varchar(10),
dia tinyint(3)
);

insert into cursos 
(dia, aula)
value
('13', 'analise');

describe cursos;

create table alunos(
nome varchar(30),
idade tinyint(3),
curso varchar(15),
sexo enum ('M', 'F')
);

insert into alunos 
(nome, idade, curso, sexo)
values
('Daniel', '35', 'CienciaComputacao', 'M');