-- 1. Adiciona um campo para armazenar código de barras do produto
ALTER TABLE produto ADD COLUMN CodigoBarras VARCHAR(30);

-- 2. Aumenta o tamanho da descrição do produto
ALTER TABLE produto MODIFY COLUMN Descricao TEXT;

-- 3. Adiciona um campo de status no estoque (ex: 'ativo', 'inativo')
ALTER TABLE estoque ADD COLUMN Status VARCHAR(20) DEFAULT 'ativo';

-- 4. Adiciona um campo de CPF no cliente
ALTER TABLE cliente ADD COLUMN CPF VARCHAR(14);

-- 5. Altera o tamanho do campo 'Telefone' do cliente para suportar DDD + número
ALTER TABLE cliente MODIFY COLUMN Telefone VARCHAR(30);

-- 6. Adiciona uma nova coluna para registrar observações nas vendas
ALTER TABLE venda ADD COLUMN Observacoes TEXT;

-- 7. Altera o campo 'Email' da tabela 'fornecedor' para aceitar até 150 caracteres
ALTER TABLE fornecedor MODIFY COLUMN Email VARCHAR(150);

-- 8. Adiciona campo de gênero na tabela cliente
ALTER TABLE cliente ADD COLUMN Genero VARCHAR(10);

-- 9. Adiciona uma coluna na tabela funcionário para armazenar a data de admissão
ALTER TABLE funcionario ADD COLUMN DataAdmissao DATE;

-- 10. Adiciona uma flag para indicar se a promoção está ativa
ALTER TABLE promocao ADD COLUMN Ativa BOOLEAN DEFAULT TRUE;
