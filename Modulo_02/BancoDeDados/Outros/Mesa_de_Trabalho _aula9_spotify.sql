-- Mesa de Trabalho - Aula 09 - Banco de Dados
-- Integrantes do grupo:
-- CARLOS FILHO, DENIS CARBONE , SALOMAO SANTOS, 
-- JULIANA FERRÃO, ANGELICA, AMGELICA LIRIO
-- create database
-- Spotify
CREATE DATABASE spotify;
USE spotify;


-- CREATE TABLE Usuário
CREATE TABLE usuario (
id INT(11) AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
dataNascimento DATE,
genero VARCHAR(1),
email VARCHAR(150),
senha VARCHAR(45),
PRIMARY KEY(id)
);

-- CREATE TABLE artista
CREATE TABLE artista (
id INT(11) AUTO_INCREMENT,
nome VARCHAR(150),
sobreNome VARCHAR(100),
PRIMARY KEY(id)
);

-- CREATE TABLE generoMusical
CREATE TABLE generoMusical (
id INT(11) AUTO_INCREMENT,
genero VARCHAR(45),
PRIMARY KEY(id)
);

-- CREATE TABLE playlist
CREATE TABLE playlist(
id 	INT(11) AUTO_INCREMENT,
idUsuario INT(11),
titulo VARCHAR(45),
quantidadeCancoes INT(11),
dataCriacao DATETIME,
PRIMARY KEY(id),
CONSTRAINT FK_idUsuario FOREIGN KEY(idUsuario) REFERENCES usuario(id)
);

-- CREATE TABLE album
CREATE TABLE album(
id INT(11) AUTO_INCREMENT,
titulo VARCHAR(45),
idArtista INT(11),
PRIMARY KEY(id),
CONSTRAINT FK_idArtista FOREIGN KEY(idArtista) REFERENCES artista(id)
);

-- CREATE TABLE cancoes
CREATE TABLE cancoes(
id INT(11) AUTO_INCREMENT,
titulo VARCHAR(45) NOT NULL,
duracao DOUBLE,
qtdReproducao INT(11),
qtdLikes INT(11),
idAlbum INT(11),
PRIMARY KEY(ID),
CONSTRAINT FK_idAlbum FOREIGN KEY(idAlbum) REFERENCES album(id)
);

-- CREATE TABLE playlist_cancao
CREATE TABLE playlist_cancao(
id INT(11) AUTO_INCREMENT,
idCancao INT(11),
idPlaylist INT(11),
PRIMARY KEY(id),
CONSTRAINT FK_idCancao FOREIGN KEY(idCancao) REFERENCES cancoes(id),
CONSTRAINT FK_idPlaylist FOREIGN KEY(idPlaylist) REFERENCES playlist(id)
);

CREATE TABLE generoCancao(
id INT(11) AUTO_INCREMENT,
idCancao INT(11),
idGeneroMusical INT(11),
PRIMARY KEY(id),
CONSTRAINT idCancao FOREIGN KEY(idCancao) REFERENCES cancoes(id),
CONSTRAINT FK_idGeneroMusical FOREIGN KEY(idGeneroMusical ) REFERENCES generoMusical(id)
);

-- 