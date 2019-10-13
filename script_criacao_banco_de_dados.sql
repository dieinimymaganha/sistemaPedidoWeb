CREATE DATABASE controle_pedido_web;

use controle_pedido_web;

CREATE TABLE cliente (
id INT(11) AUTO_INCREMENT PRIMARY KEY,
cpf VARCHAR(15)  NOT NULL UNIQUE,
nome VARCHAR(30) NOT NULL,
sobrenome VARCHAR(50) NOT NULL
);

CREATE TABLE produto (
id INT(11) AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(45) NOT NULL
);

CREATE TABLE pedido (
id INT(11) AUTO_INCREMENT PRIMARY KEY,
data date NOT NULL,
id_cliente INT(11),
FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

CREATE TABLE item_do_pedido (
id_pedido INT(11) NOT NULL,
id_produto INT(11) NOT NULL,
quantidade INT(11),
CONSTRAINT PRIMARY KEY (id_pedido, id_produto),
FOREIGN KEY (id_pedido) REFERENCES pedido(id),
FOREIGN KEY (id_produto) REFERENCES produto(id)
);