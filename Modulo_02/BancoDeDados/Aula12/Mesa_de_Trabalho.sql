-- Mesa de Trabalho - Aula 12
-- Aluno: Carlos Alberto Silva dos Santos Filho
-- Turma: 13N


-- Projeto Spotify
USE `Projeto_Spotify` ;

-- 1. Liste as músicas que possuem a letra "z" no título.
SELECT *
FROM cancao c 
WHERE c.titulo LIKE "%z%";
-- 2. Liste as músicas que têm a letra "a" como segundo caractere e a letra "s" como último caractere.
SELECT *
FROM cancao c 
WHERE c.titulo LIKE "_a%s";
-- 3. Mostre a lista de reprodução que contém mais músicas, renomeando as colunas, colocando em maiúscula
-- a primeira letra, os acentos correspondentes e adicionando os espaços entre as palavras.
SELECT p.idusuario AS "Usuário", 
	   p.titulo AS "Título",
	   p.qtdcancoes AS "Quantidade de Canções",
	   p.idestado AS "Estado",
	   p.Datacriacao AS "Data Criação",
	   p.Dataexclusao AS "Data Exclusão"
FROM playlist p 
ORDER BY p.qtdcancoes DESC
LIMIT 1; 

-- 4. Em outro momento, obtenha uma lista com os 5 usuários mais jovens, 
-- a partir dos próximos 10 registros.
SELECT *
FROM usuario u 
ORDER BY u.Data_nac DESC 
LIMIT 5 OFFSET 10;

-- 6. Liste as 5 músicas com mais reproduções, em ordem decrescente.
SELECT *
FROM cancao c 
ORDER BY c.qtdreproducao DESC 
LIMIT 5;
-- 7. Gere um relatório de todos os álbuns em ordem alfabética.
SELECT *
FROM album a 
ORDER BY a.titulo;
-- 8. Liste todos os álbuns que não possuem imagem, organizados em ordem alfabética.
SELECT *
FROM album a
WHERE a.imagemcapa IS NULL
ORDER BY a.titulo;

-- 9. Insira um novo usuário com os seguintes dados (leve em consideração os relacionamentos):
-- nomeusuario: novousuariodespotify@gmail.com
-- Nome e sobrenome: Elmer Santos 
-- password: S4321m
-- Data de nacimiento: 15/11/1991
-- Sexo: Masculino
-- Código Postal: B4129ATF
-- País: Brasil 9
-- idTipoUsuario: 1
INSERT INTO usuario 
(idUsuario, Nomeusuario, NomeCompleto, Data_nac, sexo, Cod, senha, Pais_idPais, IdTipoUsuario)
VALUES
(20, "novousuariodespotify@gmail.com", "Elmer Santos", '1991-11-15', "M", "B4129ATF", "S4321m", 9, 1);



-- 10.  Exclua todas as músicas do gênero "pop" da tabela generoxcancao.
SELECT *
FROM cancao c 
INNER JOIN generoxcancao g 
ON g.Idcancao = c.idcancao 
INNER JOIN genero g2 
ON g2.idGenero = g.IdGenero 
WHERE g2.Genero LIKE "Pop";

-- 11.   Edite todos os artistas que não possuem uma imagem carregada e carregue para eles o 
-- texto "Imagem em falta" na coluna de imagens.
UPDATE artista a SET
a.imagem = "Imagem em falta"
WHERE a.imagem  IS NULL;