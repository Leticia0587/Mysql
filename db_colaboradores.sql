/*criando banco de dados*/
CREATE DATABASE db_rh;
USE db_rh;

/*Criando tabela e atributos*/
CREATE TABLE tb_colaboradores(
   id bigint auto_increment primary key,
   nome varchar(40),
   cargo varchar(40),
   departamento varchar(40),
   cpf bigint,
   salario decimal(4,1)
);

/*inserindo registros na tabela*/
INSERT INTO tb_colaboradores (id,nome,cargo,departamento,cpf,salario)VALUES("96","Henrique","AUXILIAR ADMINISTRATIVO","GDIS",161254368-63,"937");
INSERT INTO tb_colaboradores (id,nome,cargo,departamento,cpf,salario)VALUES("73","Juliano Fernandes","TECNICO OPERACIONAL","GDIS",561106844-81,"880");
INSERT INTO tb_colaboradores (id,nome,cargo,departamento,cpf,salario)VALUES("74","Luiza Souza","TECNICO OPERACIONAL","GDIS",442509743-24,"788");
INSERT INTO tb_colaboradores (id,nome,cargo,departamento,cpf,salario)VALUES("24","Maria Santos","AUXILIAR ADMINISTRATIVO","GDIS",442509743-24,"724");
INSERT INTO tb_colaboradores (id,nome,cargo,departamento,cpf,salario)VALUES("91","Gustavo Henrique","TECNICO OPERACIONAL","GDIS",904402947-97,"2089");
INSERT INTO tb_colaboradores (id,nome,cargo,departamento,cpf,salario)VALUES("11","Nicolas da Silva","TECNICO OPERACIONAL","GDIS",954500846-68,"3241");
INSERT INTO tb_colaboradores (id,nome,cargo,departamento,cpf,salario)VALUES("98","Carol Alonso","AUXILIAR OPERACIONAL","GDIS",841708747-81,"4409");
INSERT INTO tb_colaboradores (id,nome,cargo,departamento,cpf,salario)VALUES("68","Gabriel Silva","AUXILIAR OPERACIONAL","GDIS",584600243-59,"5206");

/*Seecionar salarios maiores de 2000*/
SELECT *FROM tb_colaboradores WHERE salario>2000;

/*Selecionar pessoas com salarios menores de 2000*/
SELECT *FROM tb_colaboradores WHERE salario<2000;

/*Atualização de salario*/
UPDATE tb_colaboradores SET salario=937 WHERE id=96;
UPDATE tb_colaboradores SET salario=880 WHERE id=73;
UPDATE tb_colaboradores SET salario=788 WHERE id=74;
UPDATE tb_colaboradores SET salario=724 WHERE id=24;
UPDATE tb_colaboradores SET salario=2086 WHERE id=91;
UPDATE tb_colaboradores SET salario=3241 WHERE id=11;
UPDATE tb_colaboradores SET salario=4409 WHERE id=98;
UPDATE tb_colaboradores SET salario=5209 WHERE id=68;

/*Vizualizar tabela*/
SELECT *FROM tb_colaboradores;