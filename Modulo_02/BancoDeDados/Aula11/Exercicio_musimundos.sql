-- Clientes Musimundos

USE musimundos;

-- Os gerentes da Musimundos estão pensando em uma expansão nos negócios
-- e precisam saber quais são os clientes cadastrados na empresa. 
SELECT * FROM clientes;
-- Informe a quantidade de registros retornados na sua pesquisa.
SELECT COUNT(*) FROM clientes;
-- Where y Order By #2 - Clientes dos Estados Unidos
-- Agora que temos os nomes dos clientes, precisamos que você obtenha apenas os que são dos EUA.
SELECT *
FROM clientes
WHERE pais LIKE "USA"
ORDER BY nome;
-- Vamos melhorar um pouco a seleção. 
-- O departamento de música pede um relatório de músicas
-- cuja duração seja entre 200.000 e 300.000 milissegundos. Você se anima?
SELECT *
FROM cancoes
WHERE duracao_milisegundos BETWEEN 200000 AND 300000;

-- Where y Order By #6 - Nomes de clientes ordenados
-- Os gerentes estão muito satisfeitos com seu trabalho! Mas as tarefas ainda não acabaram.
-- Agora precisam de uma lista apenas com os nomes dos clientes da Musimundos, 
-- ordenados por país de origem (decrescente) e, como segundo parâmetro, por cidade. Está preparado?
SELECT nome, cidade
FROM clientes
ORDER BY 
	nome  DESC,
    cidade;

