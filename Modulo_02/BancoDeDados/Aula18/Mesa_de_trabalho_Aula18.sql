-- Mesa de Trabalho - Aula 18
-- Turma 13N
-- Grupo 04
-- Alunos: Carlos Filho,  Túlio Peres, Matheus Kramer 
-- Bruno Beneventi, Lucina Silveira
-- Instruções
USE EMarket;

-- 1) Empregados

-- a. Crie uma SP que liste os sobrenomes e nomes dos empregados, ordenados alfabeticamente.
DELIMITER $$
CREATE PROCEDURE listaEmpregados()
BEGIN
	SELECT e.Nome,
		   e.Sobrenome 
	FROM Empregados e
	ORDER BY e.Nome ASC;
END $$
-- b. Invoque a SP para verificar o resultado.
CALL listaEmpregados();

-- 2) Empregados por cidade

-- a. Crie uma SP que leva o nome de uma cidade e lista os funcionários dessa cidade
DELIMITER $$
CREATE PROCEDURE listaEmpregadosPorCidade(IN cidade VARCHAR(15))
BEGIN
	SELECT *
    FROM Empregados e 
    WHERE e.Cidade LIKE cidade;
END $$
-- b. Invoque a SP para listar os empregados de Seattle.
CALL listaEmpregadosPorCidade('Seattle');
-- 3) Clientes por país

-- a. Crie uma SP que recebe o nome de um país e retorne o número de clientes naquele país.
DELIMITER $$
CREATE PROCEDURE listaClientesPorPais(IN pais varchar(15))
BEGIN
	SELECT COUNT(*) AS "Nº de Cliente no Pais "
    FROM Clientes c
    WHERE c.Pais LIKE pais;
END $$
-- b. Invoque a SP para consultar a quantidade de clientes de Portugal.
CALL listaClientesPorPais('Portugal');
-- 4) Produtos sem estoque

-- a. Crie uma SP que receba um número e liste os produtos cujo estoque está abaixo desse número. 
-- O resultado deve mostrar o nome do produto, o Estoque atual e o nome da categoria à qual o produto pertence.
DELIMITER $$
CREATE PROCEDURE listaProdutosEstoque(IN numero SMALLINT)
BEGIN
	SELECT p.ProdutoNome AS "Nome do Produto",
		   p.UnidadesEstoque AS "Estoque",
           c.CategoriaNome AS "Categoria do Produto"
    FROM Produtos p
    INNER JOIN Categorias c 
    ON p.CategoriaID = c.CategoriaID
    WHERE p.UnidadesEstoque < numero;
END $$
-- b. Liste os produtos com menos de 10 unidades no estoque;
CALL listaProdutosEstoque(10);
-- c. Liste os produtos sem estoque.
CALL listaProdutosEstoque(1);

-- 5) Vendas com desconto

-- a. Crie uma SP que receba uma porcentagem e lista os nomes dos produtos que foram 
-- vendidos com desconto igual ou superior ao valor indicado, indicando, também, 
-- o nome do cliente a quem foi vendido.
DELIMITER $$
CREATE PROCEDURE listaProdutosProcentagem(IN numero double)
BEGIN
	SELECT p.ProdutoNome AS "Nome do produto",
		   c.Empresa AS "Cliente"
    FROM DetalheFatura df
    INNER JOIN Produtos p
    ON p.ProdutoID = df.ProdutoID
    INNER JOIN Faturas f
    ON f.FaturaId = df.FaturaId
    INNER JOIN Clientes c 
    ON c.ClienteID = f.ClienteID
    WHERE df.Desconto >= numero;
END $$
-- b. Liste as informações dos produtos que foram vendidos com um desconto superior a 10%.
CALL listaProdutosProcentagem(0.1);

