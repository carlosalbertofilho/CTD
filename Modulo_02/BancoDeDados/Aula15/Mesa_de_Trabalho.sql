-- Mesa de Trabalho - Aula 15 
-- Aluno Carlos Alberto Silva dos Santos Filho
-- Turma 13N
-- Utilizado o DB EMarket
USE EMarket;

-- 1. Liste o nome das empresas de correio, a quantidade de vendas (faturas geradas)  
-- e o valor total do transporte. Para esta consulta, utilize as tabelas correios e faturas.
SELECT DISTINCT c.Empresa AS "Empresa Correio",
				COUNT(f.FaturaId) AS "Quantidades de Vendas",
				SUM(f.Transporte) AS "Valor Total de Transporte"
FROM Faturas f 
INNER JOIN Clientes c 
ON c.ClienteID = f.ClienteID 
INNER JOIN DetalheFatura df 
ON df.FaturaId = f.FaturaId
GROUP BY c.Empresa;

-- 2. Liste os dados dos clientes que fizeram compras (contato, titulo, endereco, cidade, etc). 
-- Utilize o CONCAT para personalizar os dados de cada coluna Ex. CONCAT('Sr/a ',Contato). 
-- Atente para não exibir clientes repetidos e ordene os clientes de forma ascendente.
SELECT DISTINCT CONCAT('Sr(a) ', c.Contato),
				CONCAT('Título: ', c.Titulo),
				CONCAT('Endereço: ', c.Endereco),
				CONCAT('Cidade: ', c.Cidade),
				CONCAT('Estado: ', c.Regioes),
				CONCAT('CEP ', c.CodigoPostal)
FROM Clientes c 
INNER JOIN Faturas f 
ON f.ClienteID = c.ClienteID;

-- 3. Liste todas as categorias, a descrição e a quantidade de produtos existentes de cada categoria. 
-- Neste relatório deve aparecer apenas categorias que possuam produtos vinculados.
SELECT DISTINCT c.CategoriaNome AS "Categoria",
	   		 c.Descricao AS "Descrição",
	   		 COUNT(p.ProdutoID) AS "Qtd Produtos por Categoria"
FROM Categorias c 
INNER JOIN Produtos p 
ON p.CategoriaID = c.CategoriaID
GROUP BY c.CategoriaNome,
		 c.Descricao;

