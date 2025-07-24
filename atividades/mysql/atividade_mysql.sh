#!/bin/bash
# Script para atividade prática com MySQL Server

# 1. Instalar o MySQL Server
apt-get update && apt-get install -y mysql-server

# 2. Iniciar o serviço MySQL
service mysql start

# 3. Verificar se está ativo
service mysql status

# 4. Criar banco de dados, tabelas e inserir dados
mysql -u root <<EOF
CREATE DATABASE IF NOT EXISTS exemplo;
USE exemplo;

CREATE TABLE IF NOT EXISTS clientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  preco DECIMAL(10,2)
);

CREATE TABLE IF NOT EXISTS pedidos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cliente_id INT,
  produto_id INT,
  quantidade INT,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id),
  FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO clientes (nome, email) VALUES ('skibidi', 'toilet@dopdop.yesyes'), ('roblox', 'roblox@roblox.robux');
INSERT INTO produtos (nome, preco) VALUES ('rtx 9090 TI Super', 350000.00), ('monitor de 700Ghz', 90000.00);
INSERT INTO pedidos (cliente_id, produto_id, quantidade) VALUES (1, 1, 1), (2, 2, 2);

SELECT * FROM clientes;
SELECT * FROM produtos;
SELECT * FROM pedidos;
EOF

# 5. Exibir mensagem final
echo "Atividade MySQL concluída. Banco, tabelas e dados criados e exibidos."
