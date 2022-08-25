/* craindo banco de dados*/
CREATE DATABASE db_escola;
USE db_escola;

/*criando tabela e atributos*/
CREATE TABLE tb_estudantes (
  ID bigint auto_increment primary key,
  nome varchar (40),
  data_nascimento date,
  turma int,
  nota decimal(4,2)
);

/*inserindo registros na tabela*/
INSERT INTO tb_estudantes (ID,nome,data_nascimento,turma,nota)VALUES("3","Ruriê Miguel","1997-02-05",57,9.9);
INSERT INTO tb_estudantes (ID,nome,data_nascimento,turma,nota)VALUES("2","Isabela Brandão","1999-10-31",57,10);
INSERT INTO tb_estudantes (ID,nome,data_nascimento,turma,nota)VALUES("6","Jessica Lopes","1997-09-17",55,5);
INSERT INTO tb_estudantes (ID,nome,data_nascimento,turma,nota)VALUES("8","Letícia Araujo","2003-05-16",55,8);
INSERT INTO tb_estudantes (ID,nome,data_nascimento,turma,nota)VALUES("10","Julia Santos","1998-01-21",53,4);
INSERT INTO tb_estudantes (ID,nome,data_nascimento,turma,nota)VALUES("21","Luiz Henrique","1993-04-12",53,6);
INSERT INTO tb_estudantes (ID,nome,data_nascimento,turma,nota)VALUES("17","Fernanda Oliveira","1989-11-07",50,7.5);
INSERT INTO tb_estudantes (ID,nome,data_nascimento,turma,nota)VALUES("1","Felipe Busculo","1999-08-24",50,8.2);

/*Visualizar registros dentro da tabela*/
SELECT *FROM tb_estudantes;

/*Selecionar dados dos alunos que tenham a nota maior que 7*/
SELECT * FROM tb_estudantes WHERE nota>7;

/*Selcionar todos alunos que tenham nota menor que 7 */
SELECT *FROM tb_estudantes WHERE nota<7;

/*Atualização da tabela deixando todos os alunos com nota 7.2 */
UPDATE tb_estudantes SET nota = 7 WHERE id=3;
UPDATE tb_estudantes SET nota = 10 WHERE id=10;
UPDATE tb_estudantes SET nota = 3 WHERE id=1;