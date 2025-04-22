SELECT 
    d.nome AS nomeDepartamento, v.nome AS nomeVendedor
FROM 
    departamento d
JOIN vendedor v ON d.codDepartamento = v.codDepartamento;
