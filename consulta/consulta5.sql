SELECT 
    cj.nomeFantasia, c.endereco, c.telefone, ci.nome AS cidade, ci.siglaEstado
FROM 
    clienteJuridico cj
JOIN cliente c ON cj.codCliente = c.codCliente
JOIN cidade ci ON c.codCidade = ci.codCidade
WHERE 
    c.dataCadastro BETWEEN '1999-01-01' AND '2003-06-30';