-- 1) What series genres are most prevalent in the Series table?
-- Generates a list of the different genres, along with the number of series in each.

SELECT genero, COUNT(serie_id) AS cantidad_de_series
FROM series
GROUP BY genero ORDER BY cantidad_de_series DESC; 


-- 2) What are the three series with the highest average rating on IMDB, and how many episodes does each have?
-- Consider using a JOIN to combine the data from the Series table with the Episodes table.

SELECT
	s.titulo,
    COUNT(e.episodio_id) AS cantidad_de_episodios,
    AVG(e.rating_imdb) AS rating_promedio
    FROM series s 
    JOIN episodios e ON s.serie_id = e.serie_id
    GROUP BY e.serie_id
ORDER BY rating_promedio DESC
LIMIT 3;


-- 3) What is the total length of all episodes for the series "Stranger Things"?
-- This analysis will help you understand the time commitment required to watch a complete series.

SELECT series.titulo, SUM(episodios.duracion) AS duracion_total
FROM series
INNER JOIN episodios ON series.serie_id = episodios.serie_id
WHERE series.titulo = 'Stranger Things'
