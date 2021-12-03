
use EMarket;

-- Categorias e produtos
-- 1) Queremos ter uma lista de todas as categorias
select *
from Categorias;

-- 2) Como as categorias não possuem imagens, vc está interessado em obter
-- apenas um Nome e descrição da lista de categorias
select CategoriaNome, Descricao
from Categorias;

-- 3) Obtenha uma lista dos produtos.
select *
from Produtos;

-- 4) Existem produtos descontinuados? (Descontinuado = 1).
select *
from Produtos
where Descontinuado = 1;

-- 5) Na sexta-feira, você deve se reunir com o fornecedor nr. 8. 
-- Quais são os produtos que eles fornecem?
select *
from Produtos
where ProvedorId = 8;

-- 6) Queremos saber todos os produtos cujo preço unitário se encontra
-- entre 10 e 22.
select *
from Produtos
where PrecoUnitario between 10 and 22;

-- 7) Fica definido que um produto deve ser solicitado ao fornecedor 
-- se suas unidades em estoque forem inferiores ao nível de reabastecimento. 
-- Existem produtos a solicitar?
select *
from Produtos
where UnidadesEstoque < NivelReabastecimento;

-- 8) Você quer saber todos os produtos da lista anterior, mas que as unidades 
-- pedidas sejam iguais a zero.
select *
from Produtos
where UnidadesEstoque < NivelReabastecimento and UnidadesPedidas = 0;


-- Clientes
-- 1) Obtenha uma lista de todos os clientes com 
-- contato, empresa, cargo, País. Classifique a lista por país.

select Contato, Empresa, Titulo, Pais
from Clientes
order by Pais;

