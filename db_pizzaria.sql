/*Criando banco de dados*/
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

/*Criando tabelas*/
CREATE TABLE tb_categorias(
	id bigint auto_increment primary key,
	descricao varchar(255),
	tamanho varchar(255),
    borda_recheada boolean
);

CREATE TABLE tb_pizzas(
	id bigint auto_increment primary key,
	sabor varchar(255),
    preco decimal(6,2),
	massa varchar(255),
    quantidade int,
    categoria_id bigint,
    
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

/*Inserindo dados na tebela categorias*/
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Brotinho",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Brotinho",false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Medio",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Medio",false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Grande",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Grande",false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce","Brotinho",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce","Grande",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegetariana","Brotinho",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegana","Brotinho",false);

/*Inserindo dados na tabela de pizza*/
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Frango C/ Catupiry",30.00,"tradicional",5,1);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Mussarela",40.59,"tradicional",5,2);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Prestígio",50.99,"tradicional",2,8);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Lombo C/ Catupiry",60.99,"tradicional",3,6);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Brocolis C/ Catupiry",40,"tradicional",4,9);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Calabresa",45.99,"tradicional",5,1);

/*Selecionar pizzas com valores maiores de 45 reais */
SELECT * FROM tb_pizzas WHERE preco > 45.00 ORDER BY preco ASC;

/*Selecionar pizzas com valores entre 50 a 100 reais*/
SELECT *FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

/* */
