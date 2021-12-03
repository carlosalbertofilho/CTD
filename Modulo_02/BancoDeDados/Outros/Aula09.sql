-- Aula 09 - Base de Dados - Spotify

-- 1. Crie o Banco de Dados
CREATE DATABASE Spotify;

USE Spotify;
-- 2. Crie as tabelas e relacionamentos conforme o DER apresentado
-- TABELA USUARIO
DROP TABLE IF EXISTS Usuario;
CREATE TABLE Usuario(
	idUsuario MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nomeUsuario VARCHAR(45),
    data_nac DATE,
    sexo VARCHAR(1),
    email VARCHAR(150),
    senha VARCHAR(45)
);

-- TABELA ARTISTA
DROP TABLE IF EXISTS Artista;
CREATE TABLE Artista(
	idArtista MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nomeArtista VARCHAR(45),
    sobreNome VARCHAR(100)
);

-- TABELA GENERO
DROP TABLE IF EXISTS Genero;
CREATE TABLE Genero(
	idGenero MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    genero VARCHAR(45)
);

-- TABELA playList
DROP TABLE IF EXISTS PlayList;
CREATE TABLE PlayList(
	idPlayList MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idUsuario MEDIUMINT NOT NULL,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
    titulo VARCHAR(45),
    qtdCancoes INT,
    dataCriacao DATETIME
);

-- TABELA ALBUM
DROP TABLE IF EXISTS Album;
CREATE TABLE Album(
	idAlbum MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idArtista MEDIUMINT NOT NULL,
    FOREIGN KEY (idArtista) REFERENCES Artista(idArtista),
    titulo VARCHAR(45)
);

-- TABELA CANCOES
DROP TABLE IF EXISTS Cancoes;
CREATE TABLE Cancoes(
	idCancao MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idAlbum MEDIUMINT NOT NULL,
    FOREIGN KEY (idAlbum) REFERENCES Album(idAlbum),
    titulo VARCHAR(45),
    duracao DOUBLE,
    qtdReproducao TINYINT,
    qtdLike TINYINT
);

-- TABELA GeneroCancao
DROP TABLE IF EXISTS GeneroCancao;
CREATE TABLE GeneroCancao(
	idGeneroCancao MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idCancao MEDIUMINT,
    FOREIGN KEY (idCancao) REFERENCES Cancoes(idCancao),
	idGenero MEDIUMINT,
    FOREIGN KEY (idGenero) REFERENCES Genero(idGenero)
);

-- TABELA PlaylistCancao
DROP TABLE IF EXISTS PlaylistCancao;
CREATE TABLE PlaylistCancao(
	idPlaylistCancao MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idPlayList MEDIUMINT NOT NULL,
    FOREIGN KEY (idPlayList) REFERENCES PlayList(idPlayList),
    idCancao MEDIUMINT NOT NULL,
    FOREIGN KEY (idCancao) REFERENCES Cancoes(idCancao)
);

-- 3. Insira 3 registros nas tabelas usuário, canções e album
INSERT INTO Usuario (nomeUsuario, data_nac, sexo, email, senha)
VALUES
	("João das Coves", "1990-01-01", "M", "libero.lacus@google.edu", "175655182"),
	("Sr Bovino Gadoso", "1980-03-15", "M", "tortor.nibh@google.edu", "9623752"),
    ("Maria Santina", "1975-11-21", "F", "sem.mollis@outlook.org", "391464219");

INSERT INTO Artista (nomeArtista, sobreNome)
VALUES
	("AC/DC", "Australian rock band"),
    ("Scorpions", "German rock band");

INSERT INTO Album (idArtista, titulo)
VALUES
	(1, "High Voltage"),
    (1, "T.N.T."),
    (1, "Dirty Deeds Done Dirt Cheap"),
    (2, "Lonesome Crow"),
    (2, "Fly to the Rainbow"),
    (2, "In Trance");
    
INSERT INTO Cancoes (idAlbum, titulo, duracao)
VALUES
	(8, "It's a Long Way to the Top", 5.14),
    (8, "Rock 'N' Roll Singer", 5.04),
    (8, "The Jack", 5.53),
    (12, "Dark Lady", 3.30),
    (12, "In Trance", 4.47),
    (12, "Life's Like a River", 3.54);
