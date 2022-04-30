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
