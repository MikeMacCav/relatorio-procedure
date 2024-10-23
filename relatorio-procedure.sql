DELIMITER $$

CREATE PROCEDURE GerarRelatorioDiarioCompras()
BEGIN
    SELECT 
        data_compra,
        produto_id,
        SUM(quantidade) AS total_quantidade_comprada
    FROM 
        compras
    GROUP BY 
        data_compra, produto_id
    ORDER BY 
        data_compra;
END $$

DELIMITER ;
