SELECT 
    cf.*
FROM 
    clienteFisico cf
JOIN cliente c ON cf.codCliente = c.codCliente
WHERE 
    c.endereco = 'Rua Marechal Floriano, 56';
