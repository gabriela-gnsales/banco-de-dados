-- Criem as tabelas através do pgAdmin;

CREATE TABLE cliente (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	senha VARCHAR(8) NOT NULL, 
	cpf CHAR(11) NOT NULL, 
    data_nascimento DATE NOT NULL,
	sexo CHAR(1)	 
);

CREATE TABLE pedido (
	id SERIAL PRIMARY KEY,
	status VARCHAR(50) NOT NULL,
	data_realizacao DATE NOT NULL, 
	prazo_entrega INT NOT NULL
);

CREATE TABLE livro (
	id SERIAL PRIMARY KEY,
	titulo VARCHAR(100) NOT NULL,
	numero_paginas INT NOT NULL, 
    quantidade INT DEFAULT 0 NOT NULL, 
	preco NUMERIC(7,2) CHECK(preco > 0) NOT NULL,   
	formato VARCHAR(50),
    editora VARCHAR(50), 
    categoria VARCHAR(50),
    descricao TEXT
);

CREATE TABLE autor (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	data_nascimento DATE NOT NULL, 
	data_falecimento DATE, 
    nacionalidade VARCHAR(50),
    descricao TEXT
);

CREATE TABLE endereco (
	id SERIAL PRIMARY KEY,
	logradouro VARCHAR(100) NOT NULL,
    bairro VARCHAR(50) NOT NULL, 
	numero INT NOT NULL, 
	cep CHAR(8) NOT NULL,
	complemento VARCHAR(50),
	ponto_referencia TEXT
);

CREATE TABLE cidade (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL
);

CREATE TABLE estado (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL, 
	sigla CHAR(2) NOT NULL
);

-- Populem a tabela de Clientes e Livros cada um com pelo menos 20 dados;

INSERT INTO cliente (nome, email, senha, cpf, data_nascimento, sexo) VALUES
('Gabriela','gabriela@gmail.com',12345678,00000000001,'20/12/1994','F'),
('Pedro','pedro@gmail.com',12345678,10000000001,'20/12/1993','M'),
('João','joao@gmail.com',12345678,10000000002,'10/01/1993','M'),
('Mateus','mateus@gmail.com',12345678,10000000003,'01/02/1993','M'),
('Fernando','fernando@gmail.com',12345678,10000000004,'15/03/1992','M'),
('Paulo','paulo@gmail.com',12345678,10000000005,'23/04/1996','M'),
('Gabriel','gabriel@gmail.com',12345678,10000000006,'08/05/1997','M'),
('Lucas','lucas@gmail.com',12345678,10000000007,'16/06/1998','M'),
('Jhonatas','jhonatas@gmail.com',12345678,10000000008,'22/07/1999','M'),
('Emerson','emerson@gmail.com',12345678,10000000009,'07/08/2000','M'),
('Marcos','marcos@gmail.com',12345678,20000000001,'05/09/2003','M');

INSERT INTO cliente (nome, email, senha, cpf, data_nascimento) VALUES
('Lara','lara@gmail.com',12345678,30000000001,'20/12/1994'),
('Melissa','melissa@gmail.com',12345678,20000000001,'15/12/1991'),
('Carla Cristina','carla_cris@gmail.com',12345678,30000000001,'20/10/1994'),
('Lorena','lorena@gmail.com',12345678,30000000001,'20/08/1995'),
('Ana Gabriela','gabs@gmail.com',12345678,40000000001,'20/07/1978'),
('Rafaela','rafaela@gmail.com',12345678,50000000001,'25/12/1992'),
('Paulo','paulo94@gmail.com',12345678,60000000001,'10/02/1994'),
('Carla','carla@gmail.com',12345678,70000000001,'04/02/1980'),
('Gabriela','gabi@gmail.com',12345678,80000000001,'06/11/1998');

INSERT INTO livro (titulo, numero_paginas, quantidade, preco) VALUES
('O Homem Que Lia Almas',324,10,39.20);

INSERT INTO livro (titulo, numero_paginas, quantidade, preco) VALUES
('Reconstrução: O Brasil Nos Anos 20',488,25,103.20),
('A Riqueza E A Pobreza',154,16,31.92),
('Do mil ao milhão',192,2,32.70),
('A Casa Da Bruxa Natural',256,19,55.20),
('Mais Esperto Que O Diabo',300,10,32.20),
('Cuidar Uns Dos Outros',336,28,50.30),
('Heartstopper De Mãos Dadas',384,0,55.16),
('O Poder Da Cura',176,13,24.80),
('Quintessencia',424,87,58.70),
('A Jornada Da Heroína',224,19,39.92),
('O Médico Da Emoção',288,100,39.92),
('Gogo De Onde Vem Os Bebes',40,5,40),
('Demon Slayer - Kimetsu No Yaiba 22',192,34,26.90),
('Um Perfeito Cavalheiro',512,47,53.10),
('Noivas Em Fuga',216,58,27.40),
('Como Fazer Amigos E Influenciar Pessoas',256,57,43.40),
('Uma Faisca De Imaginacao',248,55,30.20),
('Viva Mais, Pense Menos',176,89,33.92),
('Nós Do Brasil',252,97,43.92);

-- Façam 5 consulta simples utilizando SELECT, FROM e WHERE;

SELECT MIN(preco) 
FROM livro;

SELECT MAX(numero_paginas) 
FROM livro;

SELECT SUM(quantidade)
FROM livro;

SELECT * FROM cliente
WHERE nome = 'Gabriela';

SELECT * FROM cliente
WHERE nome LIKE 'C%';

-- Façam um comando utilizando DELETE e outro usando o UPDATE;

DELETE FROM livro WHERE quantidade = 0;

UPDATE cliente
SET nome = 'Joao Pedro' 
WHERE id = 3;

-- Façam uma consulta aplicando o GROUP BY e alguma função de agregação.

SELECT preco, COUNT(*) as contagem FROM livro GROUP BY preco;