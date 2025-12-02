INSERT INTO proprietario (nome, telefone) VALUES
('Carlos Alberto Silva', '(11) 98765-4321'),
('Maria Santos Oliveira', '(11) 91234-5678'),
('João Pedro Costa', '(11) 99876-5432'),
('Ana Paula Rodrigues', '(11) 97788-6655'),
('Roberto Almeida', '(11) 95544-3322');

---Insert Imovel----
INSERT INTO imovel (endereco, tipo_imovel, valor, descricao, id_proprietario) VALUES
('Rua das Flores, 123 - Jardim América, São Paulo - SP', 'Apartamento', 'R$ 850.000,00', 'Apartamento 3 quartos com 2 vagas de garagem, acabamento premium', 1),
('Avenida Paulista, 1000 - Bela Vista, São Paulo - SP', 'Cobertura', 'R$ 2.500.000,00', 'Cobertura duplex com vista panorâmica, 400m²', 2),
('Rua Augusta, 500 - Consolação, São Paulo - SP', 'Loja Comercial', 'R$ 1.200.000,00', 'Loja térrea em ponto comercial movimentado', 3),
('Alameda Santos, 200 - Jardins, São Paulo - SP', 'Apartamento', 'R$ 1.800.000,00', 'Apartamento 4 quartos com sacada gourmet', 4),
('Rua Oscar Freire, 800 - Pinheiros, São Paulo - SP', 'Casa', 'R$ 3.500.000,00', 'Casa estilo moderno com piscina e jardim', 5),
('Rua Haddock Lobo, 300 - Cerqueira César, São Paulo - SP', 'Apartamento', 'R$ 950.000,00', 'Apartamento 2 quartos reformado, pronto para morar', 1),
('Avenida Brigadeiro Faria Lima, 1500 - Itaim Bibi, São Paulo - SP', 'Sala Comercial', 'R$ 750.000,00', 'Sala comercial em prédio corporativo classe A', 2);


-----Inserir cliente---
INSERT INTO cliente (nome, telefone, email, tipo_negocio) VALUES
('Fernanda Lima', '(11) 94567-8901', 'fernanda.lima@email.com', 'Compra'),
('Ricardo Nunes', '(11) 92345-6789', 'ricardo.nunes@email.com', 'Locação'),
('Patricia Santos', '(11) 97890-1234', 'patricia.santos@email.com', 'Compra'),
('Marcos Oliveira', '(11) 95678-9012', 'marcos.oliveira@email.com', 'Locação'),
('Juliana Costa', '(11) 93456-7890', 'juliana.costa@email.com', 'Compra'),
('Roberto Silva', '(11) 98901-2345', 'roberto.silva@email.com', 'Compra'),
('Camila Almeida', '(11) 96789-0123', 'camila.almeida@email.com', 'Locação');

-- Inserir corretores----
INSERT INTO corretor (nome, creci, telefone) VALUES
('Ana Carolina Mendes', 12345, '(11) 91122-3344'),
('Pedro Henrique Alves', 23456, '(11) 92233-4455'),
('Luiza Fernanda Costa', 34567, '(11) 93344-5566'),
('Rafael Gonçalves', 45678, '(11) 94455-6677'),
('Mariana Santos', 56789, '(11) 95566-7788');

----Inserir negocio-----
INSERT INTO negocio (tipo_negocio, data, id_imovel, id_cliente, id_corretor,id_proprietario)
VALUES
('Venda', '2024-01-15', 1, 1, 1,1);

Select * From proprietario;

Select * From imovel;

Select * From cliente;

Select * From corretor;

Select * From negocio;

INSERT INTO negocio (tipo_negocio, data, id_imovel, id_cliente, id_corretor,id_proprietario)
VALUES
('Locação', '2024-02-20', 3, 2, 2, 3);

INSERT INTO negocio (tipo_negocio, data, id_imovel, id_cliente, id_corretor,id_proprietario)
VALUES
('Venda', '2024-03-10', 2, 3, 4, 2),
('Locação', '2024-04-05', 4, 4, 4, 4),
('Venda', '2024-05-18', 5, 5, 5, 5),
('Locação', '2024-06-01', 6, 6, 1, 1);

