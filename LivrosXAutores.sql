CREATE TABLE livros (
  id INTEGER,
  titulo TEXT,
  vendas INTEGER,
  id_autor INTEGER
);

INSERT INTO livros (id, titulo, vendas, id_autor)
VALUES (1, 'senhor dos aneis', 50, 3);

INSERT INTO livros (id, titulo, vendas, id_autor)
VALUES (2, 'biblia sagrada', 67, 2);

INSERT INTO livros (id, titulo, vendas, id_autor)
VALUES (3, 'harry potter: pedra filosofal', 43, 4);

INSERT INTO livros (id, titulo, vendas, id_autor)
VALUES (4, 'diario de um banana: dias de cao', 300, 4);

INSERT INTO livros (id, titulo, vendas, id_autor)
VALUES (5, 'turma da monica: roubarao o sansao', 3, 1);

CREATE TABLE autores (
  id INTEGER,
  nome TEXT,
  idade INTEGER
);

INSERT INTO autores (id, nome, idade)
VALUES (1, 'Joaozin', 43 );

INSERT INTO autores (id, nome, idade)
VALUES (2, 'Joanarc', 33 );

INSERT INTO autores (id, nome, idade)
VALUES (3, 'Big Rush', 21 );

INSERT INTO autores (id, nome, idade)
VALUES (4, 'Esternocleido', 18 );

SELECT livros.titulo, SUM(livros.vendas), livros.id_autor, autores.nome
FROM livros
LEFT JOIN autores
 ON autores.id = livros.id_autor
GROUP BY id_autor
ORDER BY SUM(livros.vendas) DESC;
