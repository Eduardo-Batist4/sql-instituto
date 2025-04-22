
INSERT INTO estado (siglaEstado, nome) VALUES
('SP', 'São Paulo'),
('RJ', 'Rio de Janeiro');

INSERT INTO cidade (nome, siglaEstado) VALUES
('São Paulo', 'SP'),
('Rio de Janeiro', 'RJ');


INSERT INTO departamento (nome, descricaoFuncional, localizacao) VALUES
('Vendas', 'Responsável pelas vendas da empresa', 'Prédio 1'),
('TI', 'Departamento de Tecnologia da Informação', 'Prédio 2');


INSERT INTO vendedor (nome, dataNascimento, endereco, cep, telefone, codCidade, codDepartamento) VALUES
('João Silva', '1985-06-15', 'Rua A', '01001000', '11999999999', 1, 1),
('Maria Souza', '1990-03-22', 'Rua B', '20040002', '21988888888', 2, 2);


INSERT INTO cliente (endereco, codCidade, telefone, tipo, cep) VALUES
('Av. Paulista', 1, '1133333333', 'F', '01311000'),
('Av. Atlântica', 2, '2133333333', 'J', '22021001');


INSERT INTO clienteFisico (codCliente, nome, dataNascimento, cpf, rg) VALUES
(1, 'Carlos Andrade', '1988-07-20', '12345678901', '12345678');


INSERT INTO clienteJuridico (codCliente, nomeFantasia, razaoSocial, ie, cgc) VALUES
(2, 'Empresa XYZ', 'Empresa XYZ Ltda', 'ISENTO123', '12345678000199');


INSERT INTO classe (sigla, nome, descricao) VALUES
('A', 'Alimentos', 'Produtos alimentícios'),
('B', 'Bebidas', 'Produtos de bebida');


INSERT INTO produto (descricao, unidadeMedida, codClasse, precoVenda, estoqueMinimo) VALUES
('Arroz 5kg', 'KG', 1, 25.00, 10),
('Refrigerante 2L', 'L', 2, 7.50, 20);


INSERT INTO produtoLote (codProduto, quantidadeAdquirida, quantidadeVendida, precoCusto, dataValidade) VALUES
(1, 100, 20, 20.00, '2025-12-31'),
(2, 200, 50, 5.00, '2025-10-15');


INSERT INTO venda (codCliente, codVendedor, enderecoEntrega, status) VALUES
(1, 1, 'Rua da entrega 1', 'Pendente');


INSERT INTO itemVenda (codVenda, codProduto, numeroLote, quantidade) VALUES
(1, 1, 1, 5.00);

INSERT INTO fornecedor (nomeFantasia, razaoSocial, ie, cgc, endereco, telefone, codCidade) VALUES
('Fornecedor A', 'Fornecedor A Ltda', 'IE123', 'CGC123', 'Rua Fornecedor', '1144444444', 1);

INSERT INTO pedido (dataEntrega, codFornecedor, valor) VALUES
('2025-05-01', 1, 500.00);

INSERT INTO itemPedido (codPedido, codProduto, quantidade) VALUES
(1, 1, 50.00);

INSERT INTO contasPagar (dataVencimento, parcela, codPedido, valor, dataPagamento, localPagamento, juros, correcaoMonetaria) VALUES
('2025-06-01', 1, 1, 500.00, NULL, 'Banco A', 0.00, 0.00);

INSERT INTO contasReceber (dataVencimento, codVenda, parcela, valor, dataPagamento, localPagamento, juros, correcaoMonetaria) VALUES
('2025-06-10', 1, 1, 125.00, NULL, 'Banco B', 0.00, 0.00);