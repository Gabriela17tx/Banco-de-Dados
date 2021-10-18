create database db_lojabras;
create table tb_brasprodutos(
	id bigint auto_increment,
	descricao varchar(255),
	valor decimal (8,2),
	codigo int,
	marca varchar(255),
	primary key(id)
    );

insert into tb_brasprodutos (descricao, valor, codigo, marca) values ("tenis", 800.00, "038", 24, "Adidas" );
insert into tb_brasprodutos (descricao, valor, codigo, marca) values ("calça", 250.00, "101", "john john" );
insert into tb_brasprodutos (descricao, valor, codigo, marca) values ("camisa", 200.00, "273", "reserva" );
insert into tb_brasprodutos (descricao, valor, codigo, marca) values ("camiseta", 180.00, "205", "reserva" );
insert into tb_brasprodutos (descricao, valor, codigo, marca) values ("shorts", 150.00, "89", "john john" );

select * from tb_brasprodutos where valor > 500.00;

select * from tb_brasprodutos where valor < 500.00;

UPDATE tb_brasprodutos SET descricao = 'sapato' WHERE id = 2;