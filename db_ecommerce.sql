/*Criando banco de dados*/
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

/*Criando tabela*/
CREATE TABLE tb_produtos (
  id bigint auto_increment primary key,
  nome varchar (40),
  tipo varchar(30),
  valor decimal (8),
  quantidade int,
  tamanho varchar(20)
  )
  
  /*Inserindo dados*/
INSERT INTO tb_produtos (id,nome,tipo,valor,quantidade, tamanho) VALUES("1","Camiseta","roupas",50,10,"M");
INSERT INTO tb_produtos (id,nome,tipo,valor,quantidade, tamanho) VALUES("2","Tênis Nike","sapatos",600,20,"38");
INSERT INTO tb_produtos (id,nome,tipo,valor,quantidade, tamanho) VALUES("3","Jaqueta jeans","roupas",200,6,"P");
INSERT INTO tb_produtos (id,nome,tipo,valor,quantidade, tamanho) VALUES("4","Tênis adidas","sapatos",350,9,"36");
INSERT INTO tb_produtos (id,nome,tipo,valor,quantidade, tamanho) VALUES("5","Vestido","roupas",120,2,"G");
INSERT INTO tb_produtos (id,nome,tipo,valor,quantidade, tamanho) VALUES("6","Tênis puma","sapatos",720,3,"37");
INSERT INTO tb_produtos (id,nome,tipo,valor,quantidade, tamanho) VALUES("7","Jaqueta corta-vento","roupas",550,4,"P");
INSERT INTO tb_produtos (id,nome,tipo,valor,quantidade, tamanho) VALUES("8","Tênis Jordan","sapatos",896,17,"39");

/*selecionar produtos maiores do que R$500*/
SELECT *FROM tb_produtos WHERE valor>500;

/*Produtos com valor menor que R$500*/
SELECT *FROM tb_produtos WHERE valor<500;

/*Atualização da tabela*/
UPDATE tb_produtos SET quantidade=120 WHERE id=2;
UPDATE tb_produtos SET quantidade=86 WHERE id=6;
UPDATE tb_produtos SET quantidade=50 WHERE id=3;
UPDATE tb_produtos SET quantidade=11 WHERE id=1;

/*Visualizar tabela*/
SELECT * FROM tb_produtos;