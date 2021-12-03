-- Aluno: Carlos Alberto Silva dos Santos Filho
-- Turma: 13N
-- Este projeto implementa o Banco de Dados criado no Checkpoint I 
-- Que consiste num banco de dados para um rede varejista que possui
-- lojas em vários estados pelo país.

-- O arquivo de script da resposta deve conter:

-- 1. Criação do banco de dados.

CREATE DATABASE IF NOT EXISTS LojasAmericanasDB;

USE LojasAmericanasDB;

-- 2. Criação das tabelas com chaves primárias e estrangeiras.

DROP TABLE IF EXISTS Clientes;
CREATE TABLE Clientes(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    telefone VARCHAR(11),
    email VARCHAR(50),
    endereco VARCHAR(100),
    cidade VARCHAR(30), 
    estado VARCHAR(2),
    cep VARCHAR(8)
);

DROP TABLE IF EXISTS Marcas;
CREATE TABLE Marcas (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(200)
);

DROP TABLE IF EXISTS Categorias;
CREATE TABLE Categorias (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(200)
);

DROP TABLE IF EXISTS Produtos;
CREATE TABLE Produtos (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    marcaID INT,
    FOREIGN KEY (marcaID) REFERENCES Marcas(id),
    categoraID INT,
    FOREIGN KEY (categoraID) REFERENCES Categorias(id),
    nome VARCHAR(50) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
	anoFabricacao DATE,
    validade DATE
);

DROP TABLE IF EXISTS Estoque;
CREATE TABLE Estoque (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    produtoID INT NOT NULL,
    FOREIGN KEY (produtoID) REFERENCES Produtos(id),
    quantidade INT
);

DROP TABLE IF EXISTS Loja;
CREATE TABLE Loja (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    estoqueID INT NOT NULL,
    FOREIGN KEY (estoqueID) REFERENCES Estoque(id),
    nome VARCHAR(50) NOT NULL,
    telefone VARCHAR(11),
    email VARCHAR(50),
    endereco VARCHAR(100),
    cidade VARCHAR(30), 
    estado VARCHAR(2),
    cep VARCHAR(8)
);

DROP TABLE IF EXISTS Cargos;
CREATE TABLE Cargos (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(200)
);

DROP TABLE IF EXISTS Colaboradores;
CREATE TABLE Colaboradores (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cargoID INT NOT NULL,
    FOREIGN KEY (cargoID) REFERENCES Cargos(id),
    lojaID INT NOT NULL,
    FOREIGN KEY (lojaID) REFERENCES Loja(id),
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    telefone VARCHAR(11),
    email VARCHAR(50),
    matricula VARCHAR(6),
    seAtivo TINYINT(1)
);

DROP TABLE IF EXISTS Pedidos;
CREATE TABLE Pedidos(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    clienteID INT NOT NULL,
    FOREIGN KEY (clienteID) REFERENCES Clientes(id),
    colaboradorID INT NOT NULL,
    FOREIGN KEY (colaboradorID) REFERENCES Colaboradores(id),
    lojaID INT NOT NULL,
    FOREIGN KEY (lojaID) REFERENCES Loja(id),
    dataPedito DATE,
    dataPagamento DATE,
    statusPedido VARCHAR(50),
    enderecoEntrega VARCHAR(100)
);

DROP TABLE IF EXISTS ItensPedido;
CREATE TABLE ItensPedido(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pedidoID INT NOT NULL,
    FOREIGN KEY (pedidoID) REFERENCES Pedidos(id),
    produtoID INT NOT NULL,
    FOREIGN KEY (produtoID) REFERENCES Produtos(id),
    quantidade INT NOT NULL,
    desconto DECIMAL(6,2),
    valorTotal DECIMAL(6,2)
);

-- 3. Inserção de dados em uma das tabelas.

-- Inserindo dados na tabela Clientes
INSERT INTO Clientes (`nome`,`cpf`,`telefone`,`email`,`endereco`,`cidade`,`estado`,`cep`)
VALUES
  ("Quin Snow","175655182","31966-7385","libero.lacus@google.edu","Rua Carlos Augusto Cornelsen, 31.","Curitiba","PR","80520560"),
  ("Alika Trevino","45386546","85312-6514","pede.nonummy.ut@google.ca","Rua Pereira Estéfano, 48","São Paulo","SP","04144070"),
  ("Tucker Leblanc","9623752","21424-2636","tortor.nibh@google.edu","Travessa da CDL, 42","Ji-Paraná","RO","76900032"),
  ("Cooper Mathis","391464219","61946-6775","sem.mollis@outlook.org","Rua Barão de Vitória, 14","Diadema","SP","09961660"),
  ("Hayden Schwartz","8860238","53594-1453","rhoncus.id@yahoo.net","Avenida Rio Branco","Rio de Janeiro","RJ","20040002");
  
-- 4. Atualização de dados em uma das tabelas.
-- Atualizando registro na tabela Clientes
UPDATE Clientes
SET nome='Bovino Gadoso', cpf='12345678934'
WHERE Clientes.id = 1;

-- 5. Exclusão de dados em uma das tabelas.
-- Excluindo o registro número 5 da tabela de Clientes
DELETE FROM Clientes
WHERE Clientes.id = 5;

-- 6. Seleção de dados de uma das tabelas.
SELECT *
FROM Clientes;