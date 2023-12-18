--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, Ano, Duracao FROM Filmes 
ORDER BY Ano

--3
SELECT Nome, Ano, Duracao FROM Filmes 
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT Nome, Ano, Duracao FROM Filmes 
WHERE Ano = 1997

--5
SELECT Nome, Ano, Duracao FROM Filmes 
WHERE Ano LIKE '20%'

--6
SELECT Nome, Ano, Duracao FROM Filmes 
WHERE Duracao BETWEEN 101 AND 149 ORDER BY Duracao

--7
SELECT Ano, COUNT(Ano) 'Quantidade' FROM Filmes 
GROUP BY Ano ORDER BY Quantidade DESC

--8
SELECT * FROM Atores 
WHERE Genero = 'M'

--9
SELECT * FROM Atores 
WHERE Genero = 'F' ORDER BY PrimeiroNome

--10
SELECT f.Nome, g.Genero FROM Filmes f 
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme 
INNER JOIN Generos g on g.Id = FG.IdGenero

--11
SELECT f.Nome, g.Genero FROM Filmes f 
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme 
INNER JOIN Generos g on g.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'

--12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel 
FROM Filmes f 
INNER JOIN ElencoFilme e on f.Id = e.IdFilme
INNER JOIN Atores a on a.Id = e.IdAtor