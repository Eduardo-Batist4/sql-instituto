SELECT 
    ve.codVenda, ve.dataVenda, v.nome AS nomeVendedor
FROM 
    venda ve
JOIN vendedor v ON ve.codVendedor = v.codVendedor
WHERE 
    ve.status = 'Despachada';
