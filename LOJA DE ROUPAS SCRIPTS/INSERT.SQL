INSERT INTO CategoriaProduto (NomeCategoria) VALUES
('Masculino'), ('Feminino'), ('Infantil'), ('Calçados'), ('Acessórios'), 
('Esporte'), ('Moda Praia'), ('Outono/Inverno'), ('Primavera/Verão'), ('Casual');

INSERT INTO Fornecedor (NomeFornecedor, Endereco, Telefone, Email, CNPJ, DataCadastro) VALUES
('Fornecedor A', 'Rua 1', '1111-1111', 'a@fornecedor.com', '12345678000190', '2020-01-15'),
('Fornecedor B', 'Rua 2', '2222-2222', 'b@fornecedor.com', '22345678000191', '2020-02-20'),
('Fornecedor C', 'Rua 3', '3333-3333', 'c@fornecedor.com', '32345678000192', '2020-03-10'),
('Fornecedor D', 'Rua 4', '4444-4444', 'd@fornecedor.com', '42345678000193', '2020-04-05'),
('Fornecedor E', 'Rua 5', '5555-5555', 'e@fornecedor.com', '52345678000194', '2020-05-12'),
('Fornecedor F', 'Rua 6', '6666-6666', 'f@fornecedor.com', '62345678000195', '2020-06-18'),
('Fornecedor G', 'Rua 7', '7777-7777', 'g@fornecedor.com', '72345678000196', '2020-07-22'),
('Fornecedor H', 'Rua 8', '8888-8888', 'h@fornecedor.com', '82345678000197', '2020-08-30'),
('Fornecedor I', 'Rua 9', '9999-9999', 'i@fornecedor.com', '92345678000198', '2020-09-14'),
('Fornecedor J', 'Rua 10', '1010-1010', 'j@fornecedor.com', '02345678000199', '2020-10-25');

INSERT INTO Produto (Nome, Descricao, Preco, Tamanho, Cor, Marca, Peso, Material, EstoqueMinimo, IDCategoria, IDFornecedor) VALUES
('Camiseta Polo', 'Camiseta masculina', 89.90, 'M', 'Azul', 'Lacoste', 0.3, 'Algodão', 10, 1, 1),
('Vestido Floral', 'Vestido feminino de verão', 129.90, 'P', 'Rosa', 'Zara', 0.4, 'Viscose', 8, 2, 2),
('Tênis Esportivo', 'Tênis de corrida', 299.90, '40', 'Preto', 'Nike', 0.8, 'Têxtil', 5, 6, 3),
('Shorts Jeans', 'Shorts para calor', 79.90, '38', 'Azul Claro', 'Levis', 0.5, 'Jeans', 12, 1, 4),
('Camisa Social', 'Camisa para trabalho', 109.90, 'G', 'Branca', 'Dudalina', 0.4, 'Algodão', 15, 1, 5),
('Bolsa Feminina', 'Bolsa couro legítimo', 459.90, 'Único', 'Marrom', 'Michael Kors', 1.2, 'Couro', 3, 5, 6),
('Sandália Salto', 'Sandália feminina', 189.90, '37', 'Preto', 'Arezzo', 0.7, 'Couro', 7, 4, 7),
('Blusa Moletom', 'Moletom casual', 199.90, 'GG', 'Cinza', 'Adidas', 0.6, 'Algodão', 9, 8, 8),
('Bermuda Surf', 'Bermuda praia', 89.90, '42', 'Estampada', 'Oakley', 0.4, 'Poliéster', 11, 7, 9),
('Saia Jeans', 'Saia juvenil', 99.90, '36', 'Azul', 'Gap', 0.5, 'Jeans', 6, 3, 10);

INSERT INTO Cliente (Nome, Endereco, Telefone, Email, DataNascimento) VALUES
('João Silva', 'Rua A', '9898-9898', 'joao@gmail.com', '1985-05-15'),
('Maria Souza', 'Rua B', '8787-8787', 'maria@gmail.com', '1990-08-22'),
('Carlos Pinto', 'Rua C', '7676-7676', 'carlos@gmail.com', '1982-11-30'),
('Ana Paula', 'Rua D', '6565-6565', 'ana@gmail.com', '1995-03-10'),
('Lucas Lima', 'Rua E', '5454-5454', 'lucas@gmail.com', '1998-07-18'),
('Fernanda Dias', 'Rua F', '4343-4343', 'fernanda@gmail.com', '1987-09-25'),
('Thiago Costa', 'Rua G', '3232-3232', 'thiago@gmail.com', '1993-12-05'),
('Carolina Alves', 'Rua H', '2121-2121', 'carolina@gmail.com', '1991-04-20'),
('Ricardo Silva', 'Rua I', '1010-1010', 'ricardo@gmail.com', '1980-10-12'),
('Amanda Nunes', 'Rua J', '9090-9090', 'amanda@gmail.com', '1997-02-28');

INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES
('Pedro Almeida', 'Vendedor', '3030-3030', 'pedro@lojaderoupas.com'),
('Beatriz Figueiredo', 'Caixa', '4040-4040', 'beatriz@lojaderoupas.com'),
('Rafael Costa', 'Gerente', '5050-5050', 'rafael@lojaderoupas.com'),
('Juliana Ramos', 'Atendente', '6060-6060', 'juliana@lojaderoupas.com'),
('Vinícius Souza', 'Estoquista', '7070-7070', 'vinicius@lojaderoupas.com'),
('Priscila Andrade', 'Supervisora', '8080-8080', 'priscila@lojaderoupas.com'),
('Leonardo Lima', 'Auxiliar', '9090-9090', 'leonardo@lojaderoupas.com'),
('Roberta Castro', 'Caixa', '1010-1010', 'roberta@lojaderoupas.com'),
('Paulo Vieira', 'Vendedor', '1111-1111', 'paulo@lojaderoupas.com'),
('Aline Fernandes', 'Atendente', '1212-1212', 'aline@lojaderoupas.com');

INSERT INTO Estoque (CodProduto, Quantidade, DataEntrada, Localizacao) VALUES
(1, 50, '2023-01-10', 'Prateleira A1'),
(2, 35, '2023-01-15', 'Prateleira B2'),
(3, 20, '2023-02-05', 'Prateleira C3'),
(4, 40, '2023-02-10', 'Prateleira D4'),
(5, 30, '2023-03-01', 'Prateleira E5'),
(6, 15, '2023-03-15', 'Prateleira F6'),
(7, 25, '2023-04-02', 'Prateleira G7'),
(8, 28, '2023-04-10', 'Prateleira H8'),
(9, 32, '2023-05-05', 'Prateleira I9'),
(10, 22, '2023-05-20', 'Prateleira J10');

INSERT INTO Venda (IDCliente, DataVenda, Desconto, FormaPagamento, StatusVenda) VALUES
(1, '2023-06-01', 0.00, 'Cartão de Crédito', 'Concluída'),
(2, '2023-06-02', 10.00, 'PIX', 'Concluída'),
(3, '2023-06-03', 5.00, 'Cartão de Débito', 'Concluída'),
(4, '2023-06-04', 0.00, 'Dinheiro', 'Concluída'),
(5, '2023-06-05', 15.00, 'Cartão de Crédito', 'Concluída'),
(6, '2023-06-06', 0.00, 'PIX', 'Concluída'),
(7, '2023-06-07', 20.00, 'Cartão de Débito', 'Concluída'),
(8, '2023-06-08', 0.00, 'Dinheiro', 'Concluída'),
(9, '2023-06-09', 10.00, 'Cartão de Crédito', 'Concluída'),
(10, '2023-06-10', 0.00, 'PIX', 'Concluída');

INSERT INTO ItemVenda (IDVenda, CodProduto, Quantidade, PrecoUnit) VALUES
(1, 1, 2, 89.90),
(1, 4, 1, 79.90),
(2, 2, 1, 129.90),
(3, 3, 1, 299.90),
(4, 5, 3, 109.90),
(5, 6, 1, 459.90),
(6, 7, 2, 189.90),
(7, 8, 1, 199.90),
(8, 9, 1, 89.90),
(9, 10, 2, 99.90),
(10, 1, 1, 89.90),
(10, 2, 1, 129.90);

INSERT INTO Promocao (CodProduto, PercentualDesconto, DataInicio, DataFim, Observacao) VALUES
(1, 15.00, '2023-06-01', '2023-06-30', 'Promoção de verão'),
(4, 20.00, '2023-06-15', '2023-07-15', 'Liquidação de inverno'),
(7, 10.00, '2023-07-01', '2023-07-31', 'Promoção especial'),
(10, 25.00, '2023-08-01', '2023-08-15', 'Volta às aulas');