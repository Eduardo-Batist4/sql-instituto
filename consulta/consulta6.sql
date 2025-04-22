SELECT DISTINCT 
    v.nome
FROM 
    venda ve
JOIN vendedor v ON ve.codVendedor = v.codVendedor
JOIN clienteJuridico cj ON ve.codCliente = cj.codCliente
WHERE 
    cj.nomeFantasia = 'Gelinski';
