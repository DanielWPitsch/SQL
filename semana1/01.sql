create database exemplar;

use exemplar;

#Pode usar a cláusula DEFAULT na instrução CREATE TABLE 
CREATE TABLE autor (
    autor_id CHAR(2) NOT NULL,
    sobrenome VARCHAR(15) NOT NULL,
    nome VARCHAR(15) NOT NULL,
    cidade VARCHAR(15),
    nacionalidade CHAR(2)
);


INSERT INTO autor
  (autor_id, sobrenome, nome, cidade, nacionalidade)
  VALUES 
  ('01', 'eita', 'nord', 'Joao Pessoa', 'BR');

#Insert the two rows for Raul and Hima
#Pode usar a cláusula CHECK
INSERT INTO autor
(autor_id, sobrenome, nome, cidade, nacionalidade)
  VALUES
  ('02', 'Chong', 'Raul', 'Toronto', 'CA'),
  ('03', 'Vasudevan', 'Hima', 'Chicago', 'US');

#para ver e modificar um dado
select autor_id from autor;

#para obter uma lista de nomes dos autores e seus id da tabela autor
select autor_id, nome from autor; 

#para recuperar todas as colunas da tabela autor
select * from autor;

#para filtrar a consulta com uma condição
#Pode usar também
#SELECT [expressão de teste]
#WHEN [expressão1]
#...(ação)
#WHEN [expressão1]
#...(ação)
#END
select * from autor where autor_id < 5;

#estava dando erro no update, coloquei esse comando para desativar o safe update e deu certo
SET SQL_SAFE_UPDATES = 0;

UPDATE autor 
SET nome = 'Daniel' 
WHERE autor_id = '01';

#deletando um autor
DELETE FROM autor where autor_id= '02';

select * from autor;

INSERT INTO autor
(autor_id, sobrenome, nome, cidade, nacionalidade)
  VALUES
  ('02', 'Chong', 'Raul', 'Toronto', 'CA'),
  ('04', 'Uu', 'Bill', 'Sao paulo', 'BR'),
  ('05', 'DuBIll', 'Fi', 'Sao paulo', 'BR'),
  ('06', 'DuBIll', 'Mulher', 'Sao paulo', 'BR'),
  ('07', 'Eu', 'Mesmo', 'Mina Gerais', 'BR'),
  ('08', 'Jing', 'Kown', 'Taiwan', 'CH');
  
  #usando  comando Limit, que limita a quantidade que será mostrada
  select * from autor limit 4;
  
  #mostra a quantidade de linhas dentro da tabela
  select count(*) from autor;
  
  #mostra quantas linhas tem nacionalidade 'BR'
  select count(nacionalidade) from autor where nacionalidade = 'BR';
  
  #Um esquema é criado usando a instrução CREATE SCHEMA
  #CREATE SCHEMA LIBRARY AUTHORIZATION ‘Robert’
  
  