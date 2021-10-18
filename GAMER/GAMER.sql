CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;
-- crie umA tabela classe com 3 atributos
CREATE TABLE tb_class(
Id BIGINT(5) AUTO_INCREMENT NOT NULL, 
nome VARCHAR (50) NOT NULL,
tipo VARCHAR (50) NOT NULL,
habilidade VARCHAR(50)  NOT NULL, 
PRIMARY KEY (id)
);

-- crie uma tabela class com 5 dados
INSERT INTO tb_class(nome, tipo, habilidade) 
VALUES ("Litten", "FOGO", "Incendio");
INSERT INTO tb_class(nome, tipo, habilidade) 
VALUES ("Pikatchu", "ELÉTRICO", "Estáticca Para-Raio");
INSERT INTO tb_class(nome, tipo, habilidade) 
VALUES ("Squirtle", "AGUA", "Torrente");
INSERT INTO tb_class(nome, tipo, habilidade) 
VALUES ("Charmander", "FOGO", "Chama" );
INSERT INTO tb_class(nome, tipo, habilidade) 
VALUES ("Pidgey", "VOADOR", "Pés lançador" );


-- CRIAR UMA TABELA PERSONAGEM

CREATE TABLE tb_personagem(
id BIGINT(5) AUTO_INCREMENT NOT NULL, 
categoria VARCHAR (50) NOT NULL,
altura DECIMAL (10.2) NOT NULL,
peso DECIMAL (10.2)  NOT NULL, 
ataque BIGINT (30) NOT NULL, 
defesa BIGINT (30) NOT NULL, 
PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES tb_class (Id)
);

-- Preencha tabela personagem com 8 dados
INSERT INTO tb_personagem(categoria, altura, peso, ataque, defesa, class_Id ) 
VALUES ("Gato de fogo", 0.4, 4.30, 1000, 3000, 13 );
INSERT INTO tb_personagem(categoria, altura, peso, ataque, defesa, class_Id ) 
VALUES ("Rato", 0.4, 6.00, 2000, 3000, 14 );
INSERT INTO tb_personagem(categoria, altura, peso, ataque, defesa, class_Id ) 
VALUES ("Tartaruguinha", 0.5, 9.00, 3000, 4000, 15 );
INSERT INTO tb_personagem(categoria, altura, peso, ataque, defesa, class_Id ) 
VALUES ("Lagarto", 0.6, 8.50, 4000, 2000, 16 );
INSERT INTO tb_personagem(categoria, altura, peso, ataque, defesa, class_Id ) 
VALUES ("Passaro", 0.3, 1.80, 900, 800 , 17 );
INSERT INTO tb_personagem(categoria, altura, peso, ataque, defesa, class_Id ) 
VALUES ("Ponyta", 0.9, 15.50, 4000, 2000, 15 );
INSERT INTO tb_personagem(categoria, altura, peso, ataque, defesa, class_Id ) 
VALUES ("cobra", 0.1, 2.00, 2000, 3000, 14 );
INSERT INTO tb_personagem(categoria, altura, peso, ataque, defesa, class_Id ) 
VALUES ("rato", 0.3, 0.50, 2000, 3000, 17 );

UPDATE tb_personagem SET ataque = 2000 WHERE id = 15;

SELECT tb_personagem.categoria, tb_personagem.ataque FROM tb_personagem
INNER JOIN tb_class ON tb_class.id = tb_personagem.class_id
WHERE tb_class.ataque >= 2000;

ALTER TABLE tb_class
ADD defesa BIGINT;

SELECT tb_personagem.categoria, tb_personagem.ataque FROM tb_personagem
INNER JOIN tb_class ON tb_class.id = tb_personagem.class_id
WHERE tb_class.defesa >= 1000
AND tb_class.defesa <= 2000;

-- like para buscar os personagens com a letra C.

SELECT tb_personagem.categoria, tb_personagem.ataque FROM tb_personagem

WHERE tb_personagem.nome_personagem LIKE "%C%";

SELECT * FROM tb_personagem
INNER JOIN tb_class ON tb_personagem.id = tb_classe.id;

SELECT tb_personagem.categoria, tb_class.nome_class, tb_personagem.defesa
FROM tb_personagem
INNER JOIN tb_class ON tb_personagem.id = tb_class.id
WHERE tb_class.nome = "Pidgey";


