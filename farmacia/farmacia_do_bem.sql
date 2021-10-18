create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
medicamento varchar (255),
cosmeticos varchar (255),
vitamina varchar (255),
primary key (id)
);

insert into tb_categoria (medicamento, cosmeticos, vitamina) values ("generico","esmalte","vitamina B12");
insert into tb_categoria (medicamento, cosmeticos, vitamina) values ("antialergico","desodorante","vitamina C");
insert into tb_categoria (medicamento, cosmeticos, vitamina) values ("dorflex","baton","enegitico");
insert into tb_categoria (medicamento, cosmeticos, vitamina) values ("dipirona","shampoo","vitamina D");
insert into tb_categoria (medicamento, cosmeticos, vitamina) values ("amoxilina","creme","vitamina A");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
tamanho varchar(255),
valor decimal (8,2),
validade date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, tamanho, valor, validade, categoria_id) values ("Celestrate", "cartela", 18.00, "2030-04-11", 2);
insert into tb_produto (nome, tamanho, valor, validade, categoria_id) values ("Dove", "medio", 23.00, "2023-06-21", 3);
insert into tb_produto (nome, tamanho, valor, validade, categoria_id) values ("celestamine", "cartela", 19.00, "2028-09-11", 2);
insert into tb_produto (nome, tamanho, valor, validade, categoria_id) values ("Alegra", "100.00", 25.00, "2035-04-21", 2);
insert into tb_produto (nome, tamanho, valor, validade, categoria_id) values ("Avon", "medio", 25.00, "2027-03-15", 3);
insert into tb_produto (nome, tamanho, valor, validade, categoria_id) values ("O boticario", "medio", 23.00, "2025-09-10", 3);
insert into tb_produto (nome, tamanho, valor, validade, categoria_id) values ("Kit Pantene", "grande", 60.00, "2025-04-11", 3);
insert into tb_produto (nome, tamanho, valor, validade, categoria_id) values ("kit Dove", "grande", 56.00, "2025-04-11", 3);
insert into tb_produto (nome, tamanho, valor, validade, categoria_id) values ("Dove", "medio", 23.00, "2023-06-21", 3);


select * from tb_produto where valor > 50.00;

select * from tb_produto where valor between 3.00 and 60.00;

select * from tb_produto where nome like "%B%";

select tb_produto.nome, tb_produto.valor, tb_categoria.cosmetico as Categoria
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
