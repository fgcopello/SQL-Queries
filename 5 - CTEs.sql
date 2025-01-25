-- Implementing CTEs, identify the most successful series on NetlfixDB, based on the number of episodes of
-- each series and the average IMDb rating.
-- The result should reflect a single table with three columns: Series Title, Number of Episodes and Average IMDb Rating.

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
	
