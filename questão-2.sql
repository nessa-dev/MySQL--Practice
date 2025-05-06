-- Utilize o banco de dados Loja e insira infomações de nome e preço, imprima produtos com o preço superior a R$ 100. 

CREATE DATABASE LOJA;
USE LOJA;

CREATE TABLE PRODUTO (
ID INT AUTO_INCREMENT PRIMARY KEY,
NOME VARCHAR(40),
PRECO FLOAT 
);

INSERT INTO PRODUTO (NOME, PRECO) VALUES
('Garrafa térmica', 50.99),
('mesa industrial', 150.99),
('ventilador', 120.00),
('Fone', 60.99),
('cadeira', 80.99),
('cama baú - solteiro', 900.00);

SELECT ID, NOME, PRECO
FROM PRODUTO
WHERE PRECO > 100.00;


