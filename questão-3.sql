-- Uma loja de roupas deseja organizar os dados dos seus clientes. Para isso, é necessário registrar informações como nome, e-mail e cidade. 
-- Com base nesses dados, obtenha uma lista com os nomes e cidades distintas dos clientes, selecione apenas os clientes que moram em uma cidade 
-- específica e exiba os três primeiros nomes em ordem alfabética. 

CREATE DATABASE LOJA;
USE LOJA;

CREATE TABLE CLIENTES(
ID INT AUTO_INCREMENT PRIMARY KEY,
NOME VARCHAR(100),
EMAIL VARCHAR(100),
CIDADE VARCHAR(25)
); 

INSERT INTO CLIENTES (NOME, EMAIL, CIDADE) VALUES
('JOÃO FERREIRA', 'JOAO@GMAIL.COM', 'SALVADOR'),
('VANESSA SANTPS', 'VANESSA@GMAIL.COM', 'CAMAÇARI'),
('MATHEUS LUIZ', 'MATHEUS@GMAIL.COM', 'LAURO DE FREITAS'),
('RAFAELA SANTOS', 'RAAFELA@GMAIL.COM', 'ARACAJÚ'),
('ANDRÉ CONCEIÇÃO', 'ANDRÉ@GMAIL.COM', 'SALVADOR'),
('VICTOR LIMA', 'VICTOR@GMAIL.COM', 'SALVADOR'),
('CARLOS HUMBERTO', 'CARLOS@GMAIL.COM', 'SALVADOR');

SELECT ID, NOME, EMAIL, CIDADE
FROM CLIENTES
WHERE CIDADE = 'SALVADOR'
ORDER BY NOME ASC
LIMIT 3;