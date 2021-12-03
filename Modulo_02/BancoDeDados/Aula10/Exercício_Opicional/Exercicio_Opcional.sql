-- Exercicío Opcional - Banco de Dados
-- Aluno: Carlos Alberto Silvad dos Santos Filho
-- Turma: 13N

-- Consultas
-- Seleciona a Base filmes_db
USE filmes_db;

-- SELECT 
-- 1. Mostre todos os registros da tabela filmes.
SELECT *
FROM filmes;
-- 2. Mostre o nome, sobrenome e avaliação de todos os atores.
SELECT nome, sobrenome, avaliacao
FROM atores;
-- 3. Mostre o título de todas as séries.
SELECT titulo
FROM series;

-- WHERE e ORDER BY
-- 4. Mostre o nome e o sobrenome dos atores cuja avaliação é superior a 7,5.
SELECT nome, sobrenome
FROM atores
WHERE avaliacao > 7.5;
-- 5. Mostre o título dos filmes, a avaliação e os prêmios dos filmes 
-- com avaliação superior a 7,5 e com mais de dois prêmios.
SELECT titulo, avaliacao, premios
FROM filmes
WHERE avaliacao > 7.5 AND premios > 2;
-- 6. Mostre o título dos filmes e a avaliação ordenado por avaliação em ordem decrescente.
SELECT titulo, avaliacao
FROM filmes
ORDER BY 
	avaliacao DESC;

-- BETWEEN e LIKE
-- 7. Mostre o título e a avaliação de todos os filmes cujo título inclui Toy Story.
SELECT titulo, avaliacao
FROM filmes
WHERE titulo LIKE "Toy Story";
-- 8. Mostre todos os atores cujos nomes começam com Sam.
SELECT *
FROM atores
WHERE nome LIKE "Sam";
-- 9. Mostre o título dos filmes lançados entre '01-01-2004' e '31-12-2008'.
SELECT *
FROM filmes
WHERE data_lancamento BETWEEN '2004-01-01' AND '2008-12-31';

