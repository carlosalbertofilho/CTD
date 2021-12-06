-- Aula 14 - Musimundos
USE musimundos;

-- 1 - Faça uma consulta no banco de dados onde mostre todos os registros que contenham 
-- músicas com seus gêneros, E que o compositor seja Willie Dixon, E que tenham o 
-- gênero Blues. A 2ª música encontrada foi:
SELECT c.nome 
FROM cancoes c 
INNER JOIN generos g ON g.id = c.id_genero 
WHERE g.nome LIKE "Blues" AND c.compositor LIKE "Willie Dixon";

-- 2 - Faça uma consulta ao nosso banco de dados que nos retorna as únicas músicas 
-- que possuem gênero rock. Qual é a música que aparece em quarto lugar?
SELECT c.nome 
FROM cancoes c 
INNER JOIN generos g ON g.id = c.id_genero 
WHERE g.nome LIKE "rock"; 

-- 3 - Faça uma consulta ao nosso banco de dados que nos traga o título do álbum
-- e o autor, para saber se o que estamos vendendo está correto.Qual o título 
-- do álbum que aparece na posição número 10?
SELECT a.titulo AS "Título do Album", a2.nome AS "Autor"
FROM albuns a 
INNER JOIN artistas a2 
ON a2.id = a.id_artista;

-- 4 - Faça uma consulta que retorne o nome das músicas e o tipo de arquivo 
-- "MPEG audio file". Qual o nome da músca que aparece na posição número 4?
SELECT c.nome AS "Canção", tda.nome AS "Formato do Arquivo" 
FROM cancoes c
INNER JOIN tipos_de_arquivo tda 
ON tda.id = c.id_tipo_de_arquivo; 

-- 5 - Faça uma consulta na tabela empregados. O cargo que aparece na 3a. posição é:
SELECT DISTINCT e.nome, e.titulo 
FROM empregados e;

-- 6 - Ranking cancoes: Faça uma consulta com o nome de todas as músicas que estão
-- em uma lista de reprodução, e o nome da lista de reprodução a que pertencem.
-- Observação! Tenhamos cuidado para não repetir os nomes das músicas.Para esta consulta,
-- teremos que usar informações das tabelas cancoes, cancoes_playlists e playlists. 
-- O título da música na 5a. posição é:
SELECT DISTINCT p.nome AS "Playlist", 
				c.nome AS "Canção" 
FROM cancoes_playlists cp   
INNER JOIN playlists p 
ON p.id = cp.id_playlist 
INNER JOIN cancoes c 
ON cp.id_cancao = c.id
GROUP BY p.nome,
		 c.nome;

-- 7 - Ranking cancoes 2: O departamento de desenvolvimento da Musimundos está preparando
-- a parte do aplicativo em que acessamos uma determinada música. Eles nos dizem que um 
-- texto específico deve aparecer abaixo da imagem da música:"A música" (nome do tema) 
-- "foi composta por" (compositor do tema).Faça uma consulta ao nosso banco de dados que
--  nos traga o nome e o compositor de cada música, sem repetições, adicionando o texto acima.
--  O primeiro resultado é:
SELECT DISTINCT CONCAT("A música ",c.nome," foi composta por ",c.compositor)
FROM cancoes c;

-- 8 - Faturas: Faça uma consulta ao banco de dados que nos traga a primeira coluna não nula 
-- que encontrar entre as colunas estado_cobranca, pais_cobranca e cep_cobranca. 
-- O primeiro resultado obtido é:
SELECT f.estado_cobranca, f.pais_cobranca, f.cep_cobranca
FROM faturas f;

-- 9 -  Idade Empregados: Faça uma consulta no banco de dados que mostre a diferença entre 
-- sua data de nascimento e a data de contratação. Digite a terceira diferença que você obteve.
-- DICA: Lembre-se de que DATEDIFF () retorna a diferença entre as datas expressas em DIAS. 
-- Levando isso em consideração e sabendo que um ano tem 365 dias, como você faria a consulta?
-- Para ajudá-lo, apresentamos a função FLOOR (), que arredonda qualquer número para casas decimais.
SELECT FLOOR((DATEDIFF(e.data_nascimento, e.data_contratacao)*-1)/365) 
FROM empregados e;

-- 10 - Última fatura: Faça uma consulta ao banco de dados que traga todas as faturas do 
-- cliente número 2 solicitadas por sua data e extraia o mês. Qual foi o mês da sua última fatura?
SELECT EXTRACT(MONTH FROM f.data_fatura)
FROM faturas f 
WHERE f.id_cliente = 2;