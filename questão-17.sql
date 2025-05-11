-- QUESTÃO:
-- Uma empresa possui duas tabelas: funcionarios e departamentos.
-- A tabela funcionarios contém os dados dos colaboradores (id, nome_funcionario, departamento_id).
-- A tabela departamentos registra os setores da empresa (id, nome_departamento).
-- Crie uma consulta usando INNER JOIN para exibir o nome de cada funcionário e o nome do seu respectivo departamento.

CREATE DATABASE empresa;
USE empresa;

CREATE TABLE departamentos (
  id INT PRIMARY KEY,
  nome_departamento VARCHAR(100)
);

CREATE TABLE funcionarios (
  id INT PRIMARY KEY,
  nome_funcionario VARCHAR(100),
  departamento_id INT,
  FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
);

INSERT INTO departamentos (id, nome_departamento) VALUES
(1, 'Recursos Humanos'),
(2, 'Tecnologia da Informação'),
(3, 'Financeiro'),
(4, 'Marketing');

INSERT INTO funcionarios (id, nome_funcionario, departamento_id) VALUES
(1, 'Marcos Pereira', 2),
(2, 'Aline Costa', 1),
(3, 'Renato Souza', 3),
(4, 'Bruna Lima', 4),
(5, 'Fernanda Alves', 2);

SELECT * 
FROM funcionarios
INNER JOIN departamentos 
ON funcionarios.departamento_id = departamentos.id;
