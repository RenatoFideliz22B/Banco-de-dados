CREATE DATABASE db_table;
SELECT DATABASE();
USE db_table;

CREATE TABLE id_livro (
id_livro smallint AUTO_INCREMENT PRIMARY KEY,
nome_livro Varchar(50) NOT NULL,
ISBN Varchar(30) NOT NULL,
id_autor smallint NOT NULL,
Data_Pub DATE NOT NULL,
Preco_livro decimal NOT NULL
);

CREATE TABLE id_autores(
id_autor smallint PRIMARY KEY,
Column Nome_autor Varchar(50),
Column Sobrenome_autor Varchar(60),
) AUTO_INCREMENT = 20;

INSERT INTO id_autores (Nome) VALUES ('Carlos');
INSERT INTO id_autores (Nome) VALUES ('Andre');
INSERT INTO id_autores (Nome) VALUES ('Ronaldo');
INSERT INTO id_autores (Nome) VALUES ('Renato');

SELECT * FROM id_autores;

SHOW TABLES;

SELECT MAX(Codigo)
FROM id_autores;

ALTER TABLE id_autores
AUTO_INCREMENT = 90;

ALTER TABLE id_autores
DROP Column Sobrenome_autor;

CREATE TABLE id_editoras (
id_editoras smallint AUTO_INCREMENT PRIMARY KEY,
Nome_editora Varchar(50) NOT NULL
);

CREATE TABLE compras (
id_compra smallint PRIMARY KEY,
Codigo_Produto VARCHAR(50),
Data_Compra date,
FOREIGN KEY (Codigo_Produto) REFERENCES
Produto(Cod_Produto)
);
