SELECT 
    v.codVendedor, v.nome, v.endereco, c.nome AS cidade, e.nome AS estado
FROM 
    vendedor v
JOIN cidade c ON v.codCidade = c.codCidade
JOIN estado e ON c.siglaEstado = e.siglaEstado;
