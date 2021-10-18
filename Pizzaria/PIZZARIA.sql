create database db_pizzaria_legal;

USE db_pizzaria_legal;

create table tb_categoria(
id_categoria int not null auto_increment,
salgada varchar(255) not null,
doce varchar(255) not null,
tamanho varchar(255) not null,
primary key(id_categoria)
);

create table tb_pizza(
id_pizza BIGINT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
sabor VARCHAR(255) NOT NULL,
valor INT,
borda VARCHAR(255) NOT NULL,
classe INT,
PRIMARY KEY(id_pizza),
FOREIGN KEY (classe) REFERENCES tb_categoria (id_categoria)
);


INSERT INTO tb_categoria(salgada, doce,tamanho) VALUES ("Não","Sim","Média");
INSERT INTO tb_categoria(salgada, doce,tamanho) VALUES ("Não","Sim","grande");
INSERT INTO tb_categoria(salgada, doce,tamanho) VALUES ("sim","nao","broto");
INSERT INTO tb_categoria(salgada, doce,tamanho) VALUES ("Não","Sim","grande");
INSERT INTO tb_categoria(salgada, doce,tamanho) VALUES ("sim","nao","Média");

INSERT INTO tb_pizza(tipo, sabor, valor, borda) VALUES ("tradicional","peperone","38.00", "sim");
INSERT INTO tb_pizza(tipo, sabor, valor, borda) VALUES ("vegana","brocolis","40.00", "nao");
INSERT INTO tb_pizza(tipo, sabor, valor, borda) VALUES ("vegetariana","rucula","38.00", "nao");
INSERT INTO tb_pizza(tipo, sabor, valor, borda) VALUES ("tradicional","carne seca","50.00", "sim");
INSERT INTO tb_pizza(tipo, sabor, valor, borda) VALUES ("tradiciona","baiana","47.00", "sim");

SELECT * FROM tb_pizza where valor > 45.00;
SELECT * FROM tb_pizza where valor between 29.00 and 60.00;
SELECT * FROM tb_pizza WHERE sabor LIKE "%c%";
SELECT sabor, valor, salgada AS categoria FROM tb_categoria
INNER join tb_pizza ON tb_categoria.id_categoria = tb_pizza.classe_pizza;

