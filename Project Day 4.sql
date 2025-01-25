-- 1) ¿Qué géneros de series son los más prevalentes en la tabla Series?
-- Genera una lista de los diferentes géneros, junto con la cantidad de series de cada uno.

SELECT genero, COUNT(serie_id) AS cantidad_de_series
FROM series
GROUP BY genero ORDER BY cantidad_de_series DESC; 


-- 2) ¿Cuáles son las tres series con mayor rating promedio de IMDB, y cuántos episodios tiene cada una?
-- Considera utilizar un JOIN para combinar los datos de la tabla de Series con la de Episodios.

SELECT
	s.titulo,
    COUNT(e.episodio_id) AS cantidad_de_episodios,
    AVG(e.rating_imdb) AS rating_promedio
    FROM series s 
    JOIN episodios e ON s.serie_id = e.serie_id
    GROUP BY e.serie_id
ORDER BY rating_promedio DESC
LIMIT 3;


-- 3) ¿Cuál es la duración total de todos los episodios para la serie "Stranger Things"? 
-- Este análisis te permitirá entender el compromiso temporal necesario para ver una serie completa.

SELECT series.titulo, SUM(episodios.duracion) AS duracion_total
FROM series
INNER JOIN episodios ON series.serie_id = episodios.serie_id
WHERE series.titulo = 'Stranger Things'