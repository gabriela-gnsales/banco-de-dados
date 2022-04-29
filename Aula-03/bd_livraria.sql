CREATE TABLE cliente (
	id_cliente INT PRIMARY KEY,
	nome_cliente VARCHAR(20) NOT NULL,
	email_cliente VARCHAR(20) NOT NULL, -- VERIFICAR
	senha_cliente VARCHAR(8) NOT NULL, 
	cpf_cliente VARCHAR(11) NOT NULL, 
	sexo_cliente VARCHAR(20) NOT NULL, -- VERIFICAR    
	data_nascimento_cliente VARCHAR(30) NOT NULL, -- VERIFICAR
)

CREATE TABLE pedido (
	id_pedido INT PRIMARY KEY,
	status VARCHAR(10) NOT NULL, -- VERIFICAR
	data_realizacao ? NOT NULL, -- VERIFICAR
	prazo_entrega INT NOT NULL, -- VERIFICAR
)

CREATE TABLE livro (
	id_livro INT PRIMARY KEY,
	titulo VARCHAR(10) NOT NULL,
	descricao TEXT NULL, 
	editora VARCHAR(10) NOT NULL, 
	numero_paginas INT NOT NULL, 
	preco NUMERIC CHECK(preco > 0) NOT NULL,   
	formato VARCHAR(10) NOT NULL, -- VERIFICAR
    quantidade INT NOT NULL, 
    categoria VARCHAR(15) NOT NULL
)

CREATE TABLE autor (
	id_autor INT PRIMARY KEY,
	nome_autor VARCHAR(20) NOT NULL,
	nacionalidade VARCHAR(20) NOT NULL, 
	data_nascimento_autor VARCHAR(8) NOT NULL, -- VERIFICAR
	data_falecimento_autor VARCHAR(11) NOT NULL, -- VERIFICAR
	descricao TEXT NULL
)

CREATE TABLE endereco (
	id_endereco INT PRIMARY KEY,
	logradouro VARCHAR(30) NOT NULL,
	numero INT NOT NULL, -- VERIFICAR
	bairro VARCHAR(10) NOT NULL, 
	cep VARCHAR(11) NOT NULL, -- VERIFICAR
	complemento VARCHAR(10) NULL,
	ponto_referencia TEXT NULL
)

CREATE TABLE cidade (
	id_cidade INT PRIMARY KEY,
	nome_cidade VARCHAR(15) NOT NULL -- VERIFICAR
)

CREATE TABLE estado (
	id_estado INT PRIMARY KEY,
	nome_estado VARCHAR(10) NOT NULL, -- VERIFICAR
	sigla VARCHAR(2) NOT NULL
)