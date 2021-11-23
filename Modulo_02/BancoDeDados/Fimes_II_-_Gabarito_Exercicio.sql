-- Consultas
-- Alias, limit e offset
-- 1. Mostre o título de todas as séries e use alias para que o nome do campo fique em português.
SELECT titulo as TITULO
	FROM series;
-- 2. Busque por título de filmes com classificação superior a 3, com mais de 1 prêmio e com data de lançamento entre '01-01-1988' e '31-12-2009'. Classifique os resultados em ordem decrescente.
SELECT titulo #select *
 FROM filmes 
WHERE avaliacao >3 
   and premios >1 
   and data_lancamento between '1988-01-01' and '2009-12-31'
ORDER BY avaliacao desc;

-- 3. Fazer um top 3 com os filmes a partir do 10º registro da consulta anterior.
SELECT titulo #select *
 FROM filmes 
WHERE avaliacao >3 
   and premios >1 
   and data_lancamento between '1988-01-01' and '2009-12-31'
ORDER BY avaliacao desc
   LIMIT 3
 OFFSET 10;
-- 4. Quais são os 3 piores episódios considerando suas classificações?
SELECT * 
FROM episodios
ORDER BY avaliacao asc
LIMIT 3;

--  5. Liste todos os atores. Remova a coluna de filmes e datas favoritas e traduza o nome da coluna.
SELECT id as Identificador, nome as Nome, sobrenome as Sobrenome, avaliacao as Classificação #select *
FROM atores;