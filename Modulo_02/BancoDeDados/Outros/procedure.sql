USE EMarket;

DROP PROCEDURE IF EXISTS sp_altera_produto;

DELIMITER $$
CREATE PROCEDURE sp_altera_produto( IN ParametroIDProduto int, 
									IN ParametroPreco double,
									OUT qtdRegistro int)
BEGIN
	SELECT ProdutoID,
		   ProdutoNome,
           PrecoUnitario as 'Preço antes da Alteração'
		FROM Produtos
	WHERE ProdutoID = parametroIDProduto;
    
    UPDATE Produtos
		SET PrecoUnitario = ParametroPreco
	WHERE ProdutoID = parametroIDProduto;
    
    SELECT ProdutoID,
		   ProdutoNome,
           PrecoUnitario as 'Preço depois da Alteração'
		FROM Produtos
	WHERE ProdutoID = parametroIDProduto;
    
    SELECT COUNT(*) INTO qtdRegistro
		FROM Produtos
	where ProdutoID = parametroIDProduto;
END $$

CALL sp_altera_produto(31, '25.0', @parametroSaida);

SELECT @parametroSaida;