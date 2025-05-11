-- Uma biblioteca escolar possui duas tabelas: livros e autores. Cada livro está associado a um autor específico. 
-- A coordenação deseja montar uma lista com os títulos dos livros e os nomes dos respectivos autores. Para isso, 
-- é necessário utilizar um INNER JOIN que relacione a chave estrangeira autor_id da tabela livros com a chave 
-- primária id da tabela autores.
-- Monte uma consulta que exiba o nome do livro e o nome do autor.

CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE autores (
  id INT PRIMARY KEY,
  nome_autor VARCHAR(100)
);

CREATE TABLE livros (
  id INT PRIMARY KEY,
  titulo VARCHAR(150),
  autor_id INT,
  FOREIGN KEY (autor_id) REFERENCES autores(id)
);

INSERT INTO autores (id, nome_autor) VALUES
(1, 'Machado de Assis'),
(2, 'Clarice Lispector'),
(3, 'Carlos Drummond de Andrade'),
(4, 'Cecília Meireles');

INSERT INTO livros (id, titulo, autor_id) VALUES
(1, 'Dom Casmurro', 1),
(2, 'A Hora da Estrela', 2),
(3, 'Alguma Poesia', 3),
(4, 'Romanceiro da Inconfidência', 4),
(5, 'Memórias Póstumas de Brás Cubas', 1),
(6, 'Laços de Família', 2);

SELECT * 
FROM autores
INNER JOIN livros ON autores.id = livros.autor_id;

