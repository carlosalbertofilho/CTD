use EMarket;

-- 1) Lista os clientes que fizeram compras durante 1996
SELECT Clientes.Empresa, 
	   Clientes.Contato, 
       Clientes.Telefone, 
       Clientes.Endereco,
       MIN(Faturas.DataFatura),
       MAX(Faturas.DataFatura),
       COUNT(*) as qtdCompras
FROM Faturas
INNER JOIN DetalheFatura
on DetalheFatura.FaturaId = Faturas.FaturaId
INNER JOIN Clientes 
on Clientes.ClienteID = Faturas.ClienteID
WHERE DetalheFatura.Quantidade > 0 AND DATE_FORMAT(Faturas.DataFatura, '%Y') = '1996'
GROUP BY Clientes.Empresa,
		 Clientes.Contato, 
         Clientes.Telefone, 
         Clientes.Endereco
ORDER BY qtdCompras DESC;

-- 2) Liste as faturas para as quais a remessa foi para uma cidade diferente da cidade do
-- cliente. Considere apenas os clientes do Reino Unido.
SELECT Faturas.FaturaId as 'Número Fatura', 
       DATE_FORMAT(Faturas.DataFatura, '%Y-%m-%d') AS Data, 
       Clientes.Empresa, 
       Clientes.Cidade
FROM Faturas
INNER JOIN Clientes 
on Clientes.ClienteID = Faturas.ClienteID
WHERE Clientes.Cidade <> Faturas.CidadeEnvio AND Clientes.Pais = "UK";

-- 3. Liste o nome das empresas de correio, a quantidade de clientes e o valor total do
-- transporte. Inclua todas as empresas de correio que realizaram alguma operação
