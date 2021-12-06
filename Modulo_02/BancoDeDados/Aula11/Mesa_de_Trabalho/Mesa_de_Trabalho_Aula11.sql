-- Mesa de Trabalho - Aula 11
-- Aluno: Carlos Alberto Silva dos Santos Filho
-- Turma: 13N
USE EMarket;
-- Na base e-Market, existem 13 tabelas, a saber:
-- Categorias: onde estão cadastradas as categorias dos produtos.
-- Clientes: onde  estão cadastrados os Clientes
-- ClientesDemo: esta tabela estará vazia
-- ClientesDemografia: esta tabela estará vazia
-- Correios: Nome e telefone das empresas de transporte
-- DetalheFatura: Detalhe do que foi comprado em cada fatura
-- EmpregadoLocalizacao: Lista da localização de cada funcionário
-- Fornecedores: Lista dos fornecedores que fornecem os produtos
-- Funcionários: Lista de funcionário responsáveis pela venda
-- Faturas: Lista de faturas de cada venda
-- Localizações: Localização geográfica
-- Produtos: Produtos  que são vendidos na empresa
-- Regiões: regiões onde a empresa opera.

-- #####################################################################
-- Categorias e produtos
-- 1) Queremos ter uma lista de todas as categorias.
SELECT *
FROM Categorias;
-- 2) Como as categorias não possuem imagens, você está interessado em 
-- obter apenas um Nome e descrição da lista de categorias.
SELECT CategoriaNome AS Nome, Descricao
FROM Categorias;
-- 3) Obtenha uma lista dos produtos.
SELECT *
FROM Produtos;
-- 4) Existem produtos descontinuados? (Descontinuado = 1).
SELECT *
FROM Produtos
WHERE Descontinuado = 1;
-- 5) Na sexta-feira, você deve se reunir com o fornecedor nr. 8. 
-- Quais são os produtos que eles fornecem?
SELECT *
FROM Produtos
WHERE ProvedorID = 8;
-- 6) Queremos saber todos os produtos cujo preço unitário se encontra
-- entre 10 e 22.
SELECT *
FROM Produtos
WHERE PrecoUnitario BETWEEN 10 AND 22
ORDER BY PrecoUnitario;
-- 7) Fica definido que um produto deve ser solicitado ao fornecedor se
-- suas unidades em estoque forem inferiores ao nível de reabastecimento.
-- Existem produtos a solicitar?
SELECT *
FROM Produtos
WHERE UnidadesEstoque < NivelReabastecimento
ORDER BY UnidadesEstoque;
-- 8) Você quer saber todos os produtos da lista anterior, mas que as 
-- unidades pedidas sejam iguais a zero.
SELECT *
FROM Produtos
WHERE UnidadesEstoque < NivelReabastecimento AND UnidadesPedidas = 0;
-- #####################################################################
-- Clientes
-- 1) Obtenha uma lista de todos os clientes com contato, empresa, cargo, País. 
-- Classifique a lista por país.
SELECT Contato, Empresa, Titulo AS Cargo, Pais
FROM Clientes
ORDER BY Pais;
-- 2) Queremos atender todos os clientes que possuem o título de  “Proprietário".
-- Esse título estará em inglês (Owner).
SELECT *
FROM Clientes
WHERE Titulo = "Owner";
-- 3) A operadora de telefonia atendeu um cliente e não lembra o nome dele. 
-- Sabe apenas que começa com "C". Podemos ajudá-lo a obter uma lista com
-- todos os contatos que começam com a letra C?
SELECT Contato
FROM Clientes
WHERE Contato LIKE "C%";
-- #####################################################################
-- 1) Obtenha uma lista de todas as faturas, ordenadas por data da fatura em ordem ascendente.
SELECT *
FROM Faturas
ORDER BY DataFatura;
-- 2) Agora é necessário uma lista de faturas com o país de envio "EUA" e
-- que a FormaeEnvio seja diferente de 3.
SELECT *
FROM Faturas
WHERE PaisEnvio LIKE "USA" AND FormaEnvio NOT LIKE 3;
-- 3) O cliente 'GOURL' fez um pedido?
SELECT *
FROM Faturas
WHERE ClienteID = 'GOURL';
-- 4) Você deseja visualizar todas as faturas dos funcionários 2, 3, 5, 8 e 9.
SELECT *
FROM Faturas
WHERE EmpregadoID = 2 OR 
	  EmpregadoID = 3 OR
      EmpregadoID = 5 OR
      EmpregadoID = 8 OR
      EmpregadoID = 9
ORDER BY EmpregadoID;
-- #####################################################################
-- #####################################################################
-- #####################################################################
-- Queries I - Parte II
-- Nesta segunda parte, vamos intensificar a prática de consultas SELECT,
-- adicionando ALIAS, LIMIT e OFFSET.
-- #####################################################################
-- Produtos
-- 1) Obtenha a lista de todos os produtos em ordem decrescente por preço unitário.
SELECT *
FROM Produtos
ORDER BY PrecoUnitario DESC;
-- 2) Obtenha a lista dos 5 melhores produtos cujo preço unitário é o mais "Caro".
SELECT *
FROM Produtos
ORDER BY PrecoUnitario ASC
LIMIT 5;
-- 3) Obtenha um top 10 dos produtos com mais unidades em estoque.
SELECT *
FROM Produtos
ORDER BY UnidadesEstoque ASC
LIMIT 10;
-- #####################################################################
-- DetalheFatura
-- 1) Obtenha uma lista de FaturaId, Produto, Quantidade. 
SELECT FaturaId, ProdutoID, PrecoUnitario
FROM DetalheFatura;
-- 2) Classifique a lista acima por Quantidade decrescente. 
SELECT FaturaId, ProdutoID, PrecoUnitario
FROM DetalheFatura
ORDER BY Quantidade DESC;
-- 3) Filtre a mesma lista apenas para os produtos cuja quantidade esteja entre 50 e 100.
SELECT FaturaId, ProdutoID, PrecoUnitario
FROM DetalheFatura
WHERE Quantidade BETWEEN 50 AND 100
ORDER BY Quantidade DESC; 
-- 4) Em outra nova consulta, obtenha uma lista com os seguintes nomes de coluna: 
-- Número da fatura (FaturaId), Produto (ProdutoId), Total (Preço Unitário * Quantidade)
SELECT FaturaId AS "Número da fatura", 
	   ProdutoID AS "Produto", 
       (PrecoUnitario * Quantidade) AS "Total"
FROM DetalheFatura;
-- #####################################################################
-- #####################################################################
-- #####################################################################
-- Extras
-- Sobrou tempo? Você quer continuar praticando?
-- Deixamos alguns exercícios extras da mesma base:
-- 1) Obtenha uma lista de todos os clientes que moram no “Brasil” ou “México” ou que 
-- tenham um título que começa com "Vendas" (o termo estará em inglês: ‘Sales’);
SELECT *
FROM Clientes
WHERE Titulo LIKE "Sales" OR
	  Pais LIKE "Brasil" OR
      Pais LIKE "México";
-- 2) Obtenha uma lista de todos os clientes que pertencem a uma empresa
-- que comece com a letra “A”.
SELECT *
FROM Clientes
WHERE Empresa LIKE "A%";
-- 3) Obtenha uma lista com os seguinte dados: Cidade, Contato( renomeie para Nome e Sobrenome),
-- Título (renomeie para Cargo), de todos os clientes que são da cidade "Madrid".
SELECT Cidade AS Nome,
	   Contato AS Sobrenome,
       Titulo AS Cargo
FROM Clientes
WHERE Cidade LIKE "Madrid";
-- 4) Obtenha uma lista de todas as faturas com ID entre 10.000 e 10.500
SELECT *
FROM Faturas
WHERE FaturaId BETWEEN 10000 AND 10500
ORDER BY FaturaId;
-- 5) Obtenha uma lista de todas as faturas com ID entre 10.000 e 10.500 ou de
-- clientes com IDs começando com "B".
SELECT *
FROM Faturas
WHERE ClienteID LIKE "B%" AND FaturaId BETWEEN 10000 AND 10500
ORDER BY FaturaId;
-- 6) Existem notas fiscais que informam a cidade expedidora “Vancouver” ou que utilizam FormaEnvio =  3?
SELECT *
FROM Faturas
WHERE CidadeEnvio LIKE "Vancouver" OR 
	  FormaEnvio LIKE 3;
-- 7) Qual é a identificação do funcionário de “Buchanan”?
SELECT EmpregadoID
FROM Empregados
WHERE Sobrenome LIKE "Buchanan";
-- 8) Existem Notas Fiscais com o EmpregadoId do funcionário acima?
SELECT *
FROM Faturas
INNER JOIN Empregados
ON Faturas.EmpregadoID = Empregados.EmpregadoID
WHERE Empregados.Sobrenome LIKE "Buchanan";

