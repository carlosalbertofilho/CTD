-- Questionário Opcional
-- Utilize a base de dados filmes_db
USE filmes_db

-- Funções de agregação, GROUP BY e HAVING
-- 1. Quantos filmes estão registrados?
SELECT COUNT(*)
FROM filmes f;
-- 2. Quantos filmes têm entre 3 e 7 prêmios?
SELECT COUNT(*)
FROM filmes f
WHERE f.premios BETWEEN 3 AND 7;
-- 3. Quantos filmes têm entre 3 e 7 prêmios e classificação superior a 7?
SELECT COUNT(*)
FROM filmes f
WHERE f.avaliacao > 7 AND f.premios BETWEEN 3 AND 7;
-- 4. Crie uma lista da tabela de filmes, mostre um relatório da quantidade de filmes por id. do gênero.
SELECT COUNT(f.genero_id) AS "Qtd Filmes Por Gênero"
FROM filmes f
GROUP BY f.genero_id;
-- 5. Na consulta anterior, liste apenas os gêneros que têm como soma de prêmios um número maior que 5.
SELECT COUNT(f.genero_id) AS "Qtd Filmes Por Gênero"
FROM filmes f
GROUP BY f.genero_id
HAVING SUM(f.premios) > 5;