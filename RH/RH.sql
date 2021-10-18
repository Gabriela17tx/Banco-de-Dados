create database db_RH;
create table tb_funcionaries(
	id bigint auto_increment,
	nome varchar (255),
	salario decimal (8,2),
	cargo varchar (255),
	idade int,
	instrumento varchar (255),
	primary key(id)
    );
    
    
insert into tb_funcionaries (nome, salario, cargo, idade, instrumento) values ("MARIO", 3500.00, "geral", 24, "Gerente" );
insert into tb_funcionaries (nome, salario, cargo, idade, instrumento) values ("FERNANDO", 5000.00, "educacional", 21, "Coordenadora" );
insert into tb_funcionaries (nome, salario, cargo, idade, instrumento) values ("JOÃO", 3200.00, "Educação infantil", 20, "Pedagogo" );
insert into tb_funcionaries (nome, salario, cargo, idade, instrumento) values ("MATHEUS", 1200.00, "Operacional", 27, "Auxiliar na limpeza" );
insert into tb_funcionaries (nome, salario, cargo, idade, instrumento) values ("LUIZ", 2500.00, "Operação", 27, "cozinheiro" );

select * from tb_funcionaries where salario > 2000.00;

select * from tb_funcionaries where salario < 2000.00;