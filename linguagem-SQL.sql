
-- Aula 02/05/2022

ALTER TABLE pedido ALTER COLUMN data_realizacao SET DEFAULT now();

ALTER TABLE pedido ADD COLUMN id_livro INTEGER NOT NULL;

ALTER TABLE pedido ADD COLUMN id_cliente INTEGER NOT NULL;

ALTER TABLE pedido ADD CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES cliente (id);

ALTER TABLE pedido ADD CONSTRAINT fk_livro FOREIGN KEY (id_livro) REFERENCES livro (id);

INSERT INTO pedido (codigo, status, prazo_entrega, id_cliente, id_livro) VALUES 
    (123123, true, '2022-05-20', 2, 1),
    (345345, true, '2022-05-20', 2, 2),
    (567567, true, '2022-05-20', 4, 2);

SELECT COUNT (*) FROM pedido WHERE id_cliente = 2;

SELECT id_cliente, COUNT (*) FROM pedido GROUP BY id_cliente;

SELECT id_cliente, COUNT (*) FROM pedido GROUP BY id_cliente HAVING COUNT (*) = 2;

SELECT nome, COUNT (*) FROM pedido 
INNER JOIN cliente ON id_cliente = cliente.id
GROUP BY nome, id_cliente
HAVING COUNT (*) = 2;

SELECT * FROM pedido INNER JOIN cliente ON id_cliente = cliente.id;

ALTER TABLE cidade ADD COLUMN id_estado INTEGER NOT NULL REFERENCES estado (id); -- já cria automática a constraint foreign key, com um nome padrão "cidade_id_estado_fkey"

CREATE TABLE Estado (
    id INTEGER NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sigla CHAR() NOT NULL,
);

CREATE TABLE Cidade (
    id INTEGER NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    id_estado INTEGER NOT NULL REFERENCES Estado (id) 

);