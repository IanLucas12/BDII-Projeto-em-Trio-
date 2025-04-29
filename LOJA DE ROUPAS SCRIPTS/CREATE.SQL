CREATE DATABASE loja_de_roupas;
USE loja_de_roupas;

CREATE TABLE CategoriaProduto (
    IDCategoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NomeCategoria VARCHAR(100) NOT NULL
);

CREATE TABLE Fornecedor (
    IDFornecedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NomeFornecedor VARCHAR(100) NOT NULL,
    Endereco TEXT,
    Telefone VARCHAR(20),
    Email VARCHAR(100),
    CNPJ CHAR(14),
    DataCadastro DATE
);

CREATE TABLE Produto (
    CodProduto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Descricao TEXT,
    Preco DECIMAL(10,2) NOT NULL,
    Tamanho VARCHAR(10),
    Cor VARCHAR(20),
    Marca VARCHAR(50),
    Peso DECIMAL(5,2),
    Material VARCHAR(50),
    EstoqueMinimo INT,
    IDCategoria INT NOT NULL,
    IDFornecedor INT NOT NULL,
    FOREIGN KEY (IDCategoria) REFERENCES CategoriaProduto(IDCategoria),
    FOREIGN KEY (IDFornecedor) REFERENCES Fornecedor(IDFornecedor)
);

CREATE TABLE Estoque (
    IDEstoque INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CodProduto INT NOT NULL,
    Quantidade INT NOT NULL,
    DataEntrada DATE,
    DataSaida DATE,
    Localizacao VARCHAR(100),
    FOREIGN KEY (CodProduto) REFERENCES Produto(CodProduto)
);

CREATE TABLE Cliente (
    IDCliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Endereco TEXT,
    Telefone VARCHAR(20),
    Email VARCHAR(150),
    DataNascimento DATE
);

CREATE TABLE Funcionario (
    IDFuncionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Cargo VARCHAR(50),
    Telefone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE Venda (
    IDVenda INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    IDCliente INT NOT NULL,
    DataVenda DATE NOT NULL,
    Desconto DECIMAL(5,2),
    FormaPagamento VARCHAR(50),
    StatusVenda VARCHAR(20),
    FOREIGN KEY (IDCliente) REFERENCES Cliente(IDCliente)
);

CREATE TABLE ItemVenda (
    IDItem INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    IDVenda INT NOT NULL,
    CodProduto INT NOT NULL,
    Quantidade INT NOT NULL,
    PrecoUnit DECIMAL(10,2),
    FOREIGN KEY (IDVenda) REFERENCES Venda(IDVenda),
    FOREIGN KEY (CodProduto) REFERENCES Produto(CodProduto)
);

CREATE TABLE Promocao (
    IDPromocao INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CodProduto INT NOT NULL,
    PercentualDesconto DECIMAL(5,2),
    DataInicio DATE,
    DataFim DATE,
    Observacao TEXT,
    FOREIGN KEY (CodProduto) REFERENCES Produto(CodProduto)
);