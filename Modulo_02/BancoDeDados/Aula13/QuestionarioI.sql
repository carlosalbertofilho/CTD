-- Validando o Aprendizado SQL
-- Questionário 1
-- Utilize a base de dados Musimundos
USE musimundos

--  Funcões, Group by y Having 
-- 1 - Clientes de Brasil: A quantidade de clientes do Brasil é:
SELECT COUNT(*) AS "Qtd de Clientes no Brasil"
FROM clientes c
WHERE c.pais LIKE 'Brazil';

-- 2 - Canções por gênero: Faça uma consulta ao banco de dados 
-- que mostre a identificação do gênero e o número de músicas que possui. 
-- O número que você obteve como resultado do número de músicas do gênero com id = 6 foi:
SELECT c.id_genero AS "Gênero", COUNT(c.id) AS "Canções por Gênero" 
FROM cancoes c 
WHERE c.id_genero = 6
GROUP BY c.id_genero; 

-- 3 - Balanço comercial: Faça uma consulta ao nosso banco de dados que some o total de 
-- todas as notas fiscais emitidas pela empresa. O resultado encontrado foi:
SELECT SUM(f.valor_total) 
FROM faturas f;

-- 4- Duração dos álbuns: Obtenha uma lista de todos os álbuns e sua duração média
-- (milissegundos). O número da média obtida para o álbum 4 foi:
SELECT AVG(c.duracao_milisegundos) 
FROM cancoes c 
WHERE c.id_album  = 4;

-- 5 - Movendo arquivos: Faça uma consulta ao banco de dados e informe 
-- qual é o arquivo de música com o menor peso em bytes.
SELECT MIN(c.bytes)
FROM cancoes c;

-- 6 - Desconto: Faça uma consulta ao banco de dados que nos traga por 
-- cliente_id a soma total de suas faturas. Filtre aqueles em que a soma do 
-- total é > 45. Qual é a soma total do cliente com id = 6?
SELECT f.id_cliente, SUM(f.valor_total)
FROM faturas f 
WHERE f.id_cliente = 6;
