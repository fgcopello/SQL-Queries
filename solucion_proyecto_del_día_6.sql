-- Por medio de la implementación de CTEs, identificar las series más exitosas de NetlfixDB, en base a la cantidad de episodios de
-- cada serie y el rating promedio de IMDb.
-- El resultado debe reflejar una única tabla con tres columnas: Título de la Serie, Cantidad de episodios y Rating promedio de IMDb.

WITH 
	EpisodiosRecientes AS (
		SELECT
        serie_id,
        COUNT(*) AS num_episodios
		FROM Episodios
		GROUP BY serie_id
	),
	
    Calificaciones AS (
		SELECT
        serie_id,
        AVG(rating_imdb) AS promedio_imdb
        FROM episodios
        GROUP BY serie_id
	)

SELECT 
	s.titulo,
    er.num_episodios,
    c.promedio_imdb
FROM Series s
JOIN EpisodiosRecientes er ON s.serie_id = er.serie_id
JOIN Calificaciones c ON s.serie_id = c.serie_id
ORDER BY c.promedio_imdb DESC, er.num_episodios DESC; 
	