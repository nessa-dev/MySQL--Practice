-- Uma empresa de tecnologia possui duas tabelas: "projetos" e "funcionarios".
-- Cada projeto tem um gerente responsável, identificado pela coluna "gerente_id".
-- A tabela "funcionarios" armazena os dados dos funcionários, incluindo o id de cada um.
-- O objetivo é montar uma consulta que mostre o nome do projeto e o nome do gerente responsável.
-- Para isso, será necessário utilizar INNER JOIN relacionando o gerente_id da tabela projetos
-- com o id da tabela funcionarios.

CREATE DATABASE empresa;
USE empresa;

CREATE TABLE funcionarios (
  id INT PRIMARY KEY,
  nome VARCHAR(100)
);

CREATE TABLE projetos (
  id INT PRIMARY KEY,
  nome_projeto VARCHAR(150),
  gerente_id INT
);

INSERT INTO funcionarios (id, nome) VALUES
(1, 'Alice Martins'),
(2, 'Bruno Souza'),
(3, 'Carlos Lima'),
(4, 'Daniela Rocha');

INSERT INTO projetos (id, nome_projeto, gerente_id) VALUES
(1, 'Sistema Web Interno', 1),
(2, 'Aplicativo Mobile', 2),
(3, 'Integração com API', 3),
(4, 'Dashboard de Vendas', 4);

SELECT * 
FROM projetos
INNER JOIN funcionarios ON projetos.gerente_id = funcionarios.id;


