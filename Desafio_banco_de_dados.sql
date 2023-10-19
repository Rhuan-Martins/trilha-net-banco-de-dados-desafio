SELECT * FROM Atores
SELECT * FROM ElencoFilme
SELECT * FROM Filmes
SELECT * FROM FilmesGenero
SELECT * FROM Generos

-- 1 Buscar o nome e ano dos filmes
SELECT
	Nome,
	Ano
FROM Filmes

-- 2 Bucar nome e ano dos filmes, ordenados por ondem crescente pelo ano
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano;

-- 3 Buscar pelo filme de volta para o futuro, trazendo o nome ano e dura��o
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- 4 Buscar os filmes lan�ados em 1997
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997;

-- 5 Buscar os filmes lan�ados ap�s o ano 2000
SELECT 
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Ano > 2000;

-- 6 Buscar os filmes com a dura��o maior que 100 e ordenado pela dura��o em ordem crescente
SELECT 
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Duracao > 100
ORDER BY Duracao;

-- 7 Buscar a quantidade de filmes lan�ados no ano, agrupando por ano, ordenando pela dura��o em ordem decrescente
SELECT
	Ano,
	COUNT(*) QuantidadeFilmesLancados
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmesLancados DESC;	

-- 8 Buscar os Atores do g�nero masculino, retornando o Primeiro e ultimo nome
SELECT 
	* 
FROM Atores 
WHERE Genero = 'M';

-- 9 Buscar os Atores do g�nero feminino, retornando primeiro e ultimo nome e ordenando pelo primeiro nome
SELECT 
	* 
FROM Atores 
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10 Buscar o nome do filme e o g�nero
SELECT 
	F.Nome, 
	G.Genero
FROM FilmesGenero FG
INNER JOIN Filmes F ON FG.IdFilme = F.Id
INNER JOIN Generos G ON FG.IdGenero = G.Id;

-- 11 Buscar o nome do flme e o g�nero do tipo "Mist�rio"
SELECT 
	F.Nome, 
	G.Genero
FROM FilmesGenero FG
INNER JOIN Filmes F ON FG.IdFilme = F.Id
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mist�rio';

-- 12 Buscar o nome do filme e os atores, trazendo o Primeiro, ultimo nome e o Papel
SELECT 
	F.Nome, 
	A.PrimeiroNome, 
	A.UltimoNome, 
	EF.Papel
FROM ElencoFilme EF
INNER JOIN Filmes F ON EF.IdFilme = F.Id
INNER JOIN Atores A ON EF.IdAtor = A.Id;
