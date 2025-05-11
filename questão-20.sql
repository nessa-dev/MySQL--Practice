-- Questão: A coordenação quer saber quais alunos têm a maior nota final da escola.
-- Crie uma consulta que retorne o nome e a nota final apenas dos alunos que possuem a nota máxima registrada na tabela.

CREATE DATABASE escola2;
USE escola2;

CREATE TABLE alunos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  curso VARCHAR(100),
  nota_final DECIMAL(5,2)
);

INSERT INTO alunos (nome, curso, nota_final) VALUES
('João Almeida', 'Desenvolvimento de Sistemas', 7.00),
('Ana Souza', 'Desenvolvimento de Sistemas', 8.50),
('Carlos Lima', 'Desenvolvimento de Sistemas', 6.75),
('Beatriz Santos', 'Desenvolvimento de Sistemas', 9.00),
('Rafael Costa', 'Administração', 9.00),
('Juliana Nunes', 'Logística', 8.10),
('Paulo Henrique', 'Segurança do Trabalho', 6.80),
('Mariana Lima', 'Administração', 7.30),
('Larissa Ribeiro', 'Logística', 5.75),
('Fernando Alves', 'Segurança do Trabalho', 8.00);

SELECT nome, nota_final
FROM alunos
WHERE nota_final = (SELECT MAX(nota_final) FROM alunos);
