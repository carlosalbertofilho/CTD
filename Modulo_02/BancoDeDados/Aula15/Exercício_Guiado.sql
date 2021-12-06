-- Aula 15
-- Exercício Guiado 
-- Aluno Carlos Alberto Silva dos Santos Filho
-- Turma 13N
-- Utilizado o DB EMarket
USE EMarket;

-- 1. Liste os clientes que fizeram compras durante 1996.
-- A lista deve conter as seguintes colunas:
-- Contato
-- Título
-- Obs: Apresente os dados da coluna Titulo em maiúsculo.
SELECT DISTINCT c.Contato AS "Contato", c.Titulo AS "Título"
FROM DetalheFatura df 
INNER JOIN Faturas f 
ON f.FaturaId = df.FaturaId 
INNER JOIN Clientes c 
ON c.ClienteID = f.ClienteID
WHERE EXTRACT(YEAR FROM f.DataFatura) LIKE '1996';

-- 2. Liste as faturas para as quais a remessa foi para uma cidade diferente da cidade do
-- cliente. Considere apenas os clientes do Reino Unido.
-- A listagem deve incluir:
-- O número da fatura completando com zeros principais 8 itens. Por exemplo,
-- 00001234
-- A data da fatura no formato YYYY-MM-DD. Por exemplo, 1996-12-01
-- Para a cidade do cliente
SELECT DISTINCT FORMAT(f.FaturaId, '00000000') AS "Nº da Fatura", 
				DATE_FORMAT(f.DataFatura, "%Y-%m-%d") AS "Data da Fatura" ,
				c.Contato AS "Cliente"
FROM DetalheFatura df 
INNER JOIN Faturas f 
ON f.FaturaId = df.FaturaId 
INNER JOIN Clientes c 
ON c.ClienteID = f.ClienteID
WHERE f.CidadeEnvio <> c.Cidade AND
	  c.Pais  LIKE "UK";