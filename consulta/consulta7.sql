SELECT 
    pl.codProduto, pl.numeroLote, p.descricao
FROM 
    produtoLote pl
JOIN produto p ON pl.codProduto = p.codProduto
WHERE 
    pl.dataValidade < CURRENT_DATE;
