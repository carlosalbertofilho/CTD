-- Aula 10 - CRUD
-- Aluno: Carlos Alberto Silva dos Santos Filho

-- Mesa de Trabalho - Base de Dados DHTube

-- 01. Crie um banco de dados com o nome DHTube;
CREATE DATABASE DHTube;
USE DHTube;
-- 02. Crie primeiro as tabelas que não possuem chave estrangeira;
-- Não se esqueça de definir o campo identificador como auto_increment.
DROP TABLE IF EXISTS avatar;
CREATE TABLE avatar(
	idAvatar MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    urlimagem VARCHAR(100)
);
DROP TABLE pais;
CREATE TABLE pais(
	idPais MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(100) NOT NULL
);
-- 03. Crie depois as tabelas que possuem chave estrangeira
DROP TABLE IF EXISTS usuario;
CREATE TABLE usuario(
	idUsuario MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	idPais MEDIUMINT,
    FOREIGN KEY (idPais) REFERENCES pais(idPais),
    idAvatar MEDIUMINT,
    FOREIGN KEY (idAvatar) REFERENCES avatar(idAvatar),
    nome VARCHAR(45) NOT NULL,
    email VARCHAR(45),
    senha VARCHAR(45),
    dataNascimento DATETIME,
    cep VARCHAR(45)
);
DROP TABLE IF EXISTS canal;
CREATE TABLE canal(
	idCanal MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idUsuario MEDIUMINT NOT NULL,
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
    nome VARCHAR(45) NOT NULL,
    descricao TEXT,
    dataCriacao DATETIME
);
DROP TABLE IF EXISTS video;
CREATE TABLE video(
	idVideo MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idUsuario MEDIUMINT,
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT,
    tamanho DOUBLE,
    nomeArquivo VARCHAR(100),
    duracao DOUBLE,
    imagem VARCHAR(100),
    qtdReproducoes INT,
    qtdLikes INT,
    qtdDislikes INT,
    privado SMALLINT,
    dataPublicacao DATETIME
);
DROP TABLE IF EXISTS playlist;
CREATE TABLE playlist(
	idPlaylist MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idUsuario MEDIUMINT,
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
    nome VARCHAR(45),
    dataCriacao DATETIME,
    privado SMALLINT
);
DROP TABLE IF EXISTS playlist_video;
CREATE TABLE playlist_video(
	idVideo MEDIUMINT NOT NULL,
    FOREIGN KEY (idVideo) REFERENCES video(idVideo),
    idPlaylist MEDIUMINT NOT NULL,
    FOREIGN KEY (idPlaylist) REFERENCES playlist(idPlaylist)
);
-- 04. Ao finalizar, execute a engenharia reversa e compare a sua modelagem
-- com a modelagem que a empresa apresentou.
-- 05. Entregue o script utilizado para a criação do banco de dados.
