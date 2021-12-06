-- Mesa de Trabalho - Aula 13
-- Aluno Carlos Alberto Silva dos Santos Filho
-- Turma 13N

-- Na base de dados musimundos faça as seguintes operações:
USE musimundos;
-- Na tabela faturas:
-- 1 - O valor da fatura mais alta cujo a cidade de cobrança é “Oslo”. (MAX)
SELECT MAX(f.valor_total)
FROM faturas f 
WHERE f.cidade_cobranca LIKE 'Oslo';
-- 2 - O valor da fatura mais baixa de todas. (MIN)
SELECT MIN(f.valor_total)
FROM faturas f;
-- 3 - O valor médio das faturas que o país de cobrança é “Canada”. (AVG)
SELECT AVG(f.valor_total) 
FROM faturas f 
WHERE f.pais_cobranca LIKE 'Canada';
-- 4 - A quantidade de faturas que o país de cobrança é “Canada”. (COUNT)
SELECT COUNT(*) 
FROM faturas f 
WHERE f.pais_cobranca LIKE 'Canada';
-- 5 - O valor total somado de todas as faturas. (SUM)
SELECT SUM(f.valor_total)
FROM faturas f ;
-- 6 - Selecione o id, a data e valor das faturas com valor abaixo da média.
-- (Subqueries e AVG)
SELECT f.id, f.data_fatura, f.valor_total 
FROM faturas f 
WHERE f.valor_total < (SELECT AVG(f2.valor_total) FROM faturas f2);
-- Na tabela empregados:
-- 7 - A data de nascimento do funcionário mais jovem da empresa (MAX)
SELECT MAX(e.data_nascimento)
FROM empregados e ;
-- 8 - A data de nascimento do funcionário mais velho da empresa (MIN)
SELECT MIN(e.data_nascimento) 
FROM empregados e;
-- 9 - Formate a data do nascimento dos funcionários no formato ex: "02 May 2020".
-- (DATE_FORMAT)
SELECT e.nome, 
	   DATE_FORMAT(e.data_nascimento, '%d %b %Y') AS "Data de Nascimento"
FROM empregados e;
-- Na tabela cancoes:
-- 10 - O numero de cancoes que tem como compositor “AC/DC”. (COUNT)
SELECT COUNT(*) 
FROM cancoes c
WHERE c.compositor LIKE "AC/DC";
-- 11 - A duração média das músicas em milisegundos (AVG)
SELECT AVG(c.duracao_milisegundos)
FROM cancoes c;
-- 12 - O tamanho médio em bytes das músicas que como compositor “AC/DC”. (AVG)
SELECT AVG(c.duracao_milisegundos)
FROM cancoes c
WHERE c.compositor LIKE "AC/DC";
-- Na base de dados musimundos faça as seguintes operações:
-- Na tabela clientes:
-- 13 - Quantidade de clientes que moram na cidade de “São Paulo”. (COUNT)
SELECT COUNT(*) 
FROM  clientes c
WHERE c.cidade LIKE "São Paulo";
-- 14 - Quantidade de clientes que moram na cidade “Paris”. (COUNT)
SELECT COUNT(*) 
FROM  clientes c
WHERE c.cidade LIKE "Paris";
-- 15 - Quantidade de clientes que tenham email do “yahoo”. (COUNT e LIKE)
SELECT COUNT(*) 
FROM  clientes c
WHERE c.email LIKE "%yahoo%";