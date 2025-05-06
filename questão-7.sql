-- Um sistema de cadastro precisa identificar usuários cujos nomes começam com “A” ou “J” 
-- para uma campanha personalizada. Além disso, a empresa deseja encontrar todos os e-mails 
-- que contenham números em qualquer parte. Use expressões regulares para buscar esses padrões.

create database sistema;
use sistema;

create table usuarios(
ID INT AUTO_INCREMENT PRIMARY KEY,
NOME VARCHAR (100),
EMAIL VARCHAR(100)
);

INSERT INTO usuarios (NOME, EMAIL) VALUES
('ANA CLARA', 'ana.clara123@gmail.com'),
('ALICE SOUZA', 'alice.souza456@gmail.com'),
('ALAN SILVA', 'alan.silva789@gmail.com'),
('ANDRÉ COSTA', 'andre.costa1234@gmail.com'),
('JÉSSICA MOURA', 'jessica.moura1@gmail.com'),
('JOÃO PEREIRA', 'joao.pereira2@gmail.com'),
('MARCIA LOPES', 'MARCIALOPES@gmail.com'),
('JÉSSICA MOURA', 'jessica.moura@gmail.com'),
('JULIA NASCIMENTO', 'julia.nascimento@gmail.com'),
('MARCOS OLIVEIRA', 'marcos.oliveira@gmail.com'),
('JULIANA ROCHA', 'juliana.rocha3@gmail.com');

select * from usuarios
where nome like 'A%' or nome like 'J%';

SELECT * FROM usuarios
WHERE email REGEXP '[0-9]';

