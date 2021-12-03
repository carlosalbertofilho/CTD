# Mesa de Trabalho - Aula 16
# Carlos Filho, Wesley Tassmann, Luciano Batista
# Mariana Fachinello, Túlio Peres

USE EMarket;

SELECT *
FROM Categorias;

SELECT *
FROM Produtos;

SELECT Categorias.CategoriaNome, Produtos.ProdutoNome
FROM Categorias
LEFT JOIN Produtos ON Categorias.categoriaID = Produtos.CategoriaID; #1

SELECT * FROM Clientes;

SELECT * FROM Faturas;

SELECT Clientes.clienteID, Faturas.faturaID
FROM Clientes
INNER JOIN Faturas ON Clientes.clienteID = Faturas.clienteID;
# se fosse uma inner join apenas, apareceriam os resultados onde o ID cliente (tabela cliente) é igual ao ID cliente (tabela fatura)
# não apareceriam os clientes que nunca compraram

# ao usar o LEFT JOIN
# pedimos tbm que nos mostre os dados do atributo da esquerda (tabela cliente) 
# que nao estejam atribuidos aos dados da direita (tabela faturas)
SELECT Clientes.clienteID, Faturas.faturaID
FROM Clientes
LEFT JOIN Faturas ON Clientes.clienteID = Faturas.clienteID
WHERE Faturas.FaturaId = null;

# 3. Faça uma lista de produtos. Para cada um, indique seu nome, categoria e as informações de contato
# de seu fornecedor. Lembre-se que podem existir produtos para os quais o fornecedor não foi indicado.
SELECT Produtos.ProdutoNome, Categorias.CategoriaNome, Provedores.Empresa
FROM Produtos
INNER JOIN Categorias
	on Categorias.CategoriaID = Produtos.ProdutoID
LEFT JOIN Provedores 
	on Provedores.ProvedorID = Produtos.ProvedorID;
    
# 4. Para cada categoria, liste o preço unitário médio de seus produtos.

SELECT Categorias.CategoriaNome, avg(Produtos.PrecoUnitario)
FROM Categorias
INNER JOIN Produtos
	ON Produtos.CategoriaID = Categorias.CategoriaID
GROUP BY Categorias.CategoriaNome;

# 5. Para cada cliente, indique a última nota fiscal de compra. 
# Inclua clientes que nunca compraram no e-market.
SELECT Clientes.Empresa as Nome, max(Faturas.DataFatura)
FROM Clientes
LEFT JOIN Faturas
	ON Faturas.ClienteID = Clientes.ClienteID
GROUP BY 
	Clientes.Empresa;

SELECT *
FROM Faturas;

# 6. Todas as faturas têm uma empresa de correio associada (envio). 
# Gere uma lista com todas as empresas de correio e o número de faturas correspondentes.
# Execute a consulta usando RIGHT JOIN.
SELECT Correios.Empresa, count(*) as 'Num Faturas'
FROM Faturas
RIGHT JOIN Correios
	ON Faturas.FormaEnvio = Correios.CorreioID
GROUP BY Correios.Empresa;