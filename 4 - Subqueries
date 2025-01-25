-- Use a subquery to identify the 3 most popular genres based on the number of series. For each genre,
-- identify the series title, release year, and average IMDB rating.

SELECT
	series.titulo AS 'Título de la Serie',
    series.año_lanzamiento AS 'Año de Lanzamiento',
    series.genero AS 'Género',
    AVG(episodios.rating_imdb) AS 'Rating Promedio IMDB' 
FROM
	series
INNER JOIN
	episodios ON series.serie_id = episodios.serie_id
WHERE
	series.genero IN (SELECT genero FROM (
						SELECT genero, COUNT(*) AS cantidad_de_series
						FROM series
						GROUP BY genero
						ORDER BY cantidad_de_series DESC
						LIMIT 3) AS top3)
GROUP BY
	episodios.serie_id
ORDER BY 
	AVG(episodios.rating_imdb) DESC;
