-- Relatório 1 - Base de dados Sakila
-- Aluno Carlos Alberto Silva dos Santos Filho

-- Parte 1
-- 1. Obtenha o nome e o sobrenome dos primeiros 5 atores disponíveis, use Alias para exibir os nomes
-- das colunas com a primeira letra maiúscula.
SELECT a.nome  AS "Nome",
	   a.sobrenome AS "Sobrenome"
FROM ator a 
LIMIT 5;

-- 2. Obtenha uma lista que inclua nome, sobrenome e e-mail dos clientes inativos. 
-- Use Alias para exibir os nomes das colunas com a primeira letra maiúscula.
SELECT c.nome AS "Nome",
	   c.sobrenome AS "Sobrenome",
	   c.email AS "Email"
FROM cliente c 
WHERE c.ativo IS FALSE;

-- 3. Obtenha uma lista de filmes, incluindo título, ano e descrição dos filmes que têm uma 
-- duracao_locacao maior que cinco. Classificar por duracao_locacao descendente e use Alias 
-- para exibir os nomes das colunas com a primeira letra maiúscula.
SELECT f.titulo AS "Título",
	   f.ano_lancamento AS "Ano",
	   f.descricao AS "Descrição"
FROM filme f 
WHERE f.duracao_locacao > 5
ORDER BY duracao_locacao DESC;

-- 4. Obtenha uma lista de aluguéis que foram feitos durante o mês de Maio de 2005. 
-- Inclua todas as colunas disponíveis no resultado.
SELECT *
FROM locacao l
WHERE EXTRACT(MONTH FROM l.data_locacao) LIKE '5' AND 
	  EXTRACT(YEAR FROM l.data_locacao) LIKE '2005';

-- Parte 2 
-- Se chegarmos até aqui, é porque já sabemos claramente qual é a estrutura básica de um SELECT. 
-- Nos relatórios a seguir, adicionaremos complexidade.
-- Vamos  testar?

-- 1. Obtenha o valor TOTAL de locações, use um Alias para mostrá-lo em uma coluna chamada "Quantidade";
SELECT COUNT(l.locacao_id) AS "Quantidade"
FROM pagamento p 
INNER JOIN locacao l 
ON l.locacao_id = p.locacao_id ;

-- 2. Obtenha a soma TOTAL de todos os pagamentos, use um Alias para mostrá-lo em uma coluna 
-- chamada "TOTAL", uma coluna com a quantidade de locações com o alias "Quantidade" e 
-- uma coluna indicando o "Valor Médio ”por locação;
SELECT SUM(p.valor) AS "Total",
	   COUNT(l.locacao_id) AS "Quantidade",
	   SUM(p.valor) / COUNT(l.locacao_id) AS "Valor Médio"
FROM pagamento p 
INNER JOIN locacao l 
ON l.locacao_id = p.locacao_id ;

-- 3. Gere um relatório que responda à pergunta: quais são os dez clientes que mais dinheiro
-- gastam e quantas locações fizeram?
SELECT DISTINCT c.nome AS "Clientes",
	   		 COUNT(l.locacao_id) AS "Quantidade de locações"
FROM pagamento p 
INNER JOIN cliente c 
ON p.cliente_id = c.cliente_id 
INNER JOIN locacao l 
ON l.cliente_id = c.cliente_id
GROUP BY c.nome
ORDER BY COUNT(l.locacao_id) DESC
LIMIT 10;


-- 4. Gere um relatório que mostre: identificação do cliente, quantidade  de locações e valor 
-- total de todos os clientes que gastaram mais de $ 150 em locações.
SELECT DISTINCT c.nome AS "Clientes",
	   		 COUNT(l.locacao_id) AS "Quantidade de locações",
	   		 SUM(p.valor) AS "Valor Total"
FROM pagamento p 
INNER JOIN cliente c 
ON p.cliente_id = c.cliente_id 
INNER JOIN locacao l 
ON l.cliente_id = c.cliente_id
WHERE (SELECT SUM(p2.valor)
       FROM cliente c2
       INNER JOIN pagamento p2
       ON c2.cliente_id= p2.cliente_id) > 150
GROUP BY c.nome
ORDER BY SUM(p.valor);

-- 5. Gere um relatório que mostre por mês o valor das locações e a quantidade de locações para o ano de 2005.
-- Dica: As tabelas que vocês deverão utiizar são pagamento e locacao.
-- Dica: As tabelas a serem utilizadas são aluguel e pagamento.
SELECT DISTINCT EXTRACT(MONTH FROM l.data_locacao) AS "Mês",
				SUM(p.valor) AS "Valor das Locações",
	            COUNT(l.locacao_id) AS "Qtd de locações"
FROM locacao l
INNER JOIN pagamento p 
ON p.locacao_id = l.locacao_id 
GROUP BY l.data_locacao
HAVING  EXTRACT(YEAR FROM l.data_locacao) LIKE '2005';

