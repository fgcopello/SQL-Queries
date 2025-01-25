-- Basado en la Dase de Datos netflixDB, realizar consultas que respondan a las siguientes preguntas:
-- 1) ¿Quién es el actor que ha participado en la mayor cantidad de series?
-- 2) ¿Cuál es la serie con rating de imdb promedio más alto?
-- 3) ¿Cuál es el episodio más largo?

-- 1) ¿Quién es el actor que ha participado en la mayor cantidad de series?
SELECT actor_id, COUNT(serie_id) AS numero_de_series FROM actuaciones
GROUP BY actor_id
ORDER BY numero_de_series DESC;

-- 2) ¿Cuál es la serie con rating de imdb promedio más alto?
SELECT serie_id, AVG(rating_imdb) AS rating_promedio FROM episodios
GROUP BY serie_id
ORDER BY rating_promedio DESC;

-- 3) ¿Cuál es el episodio más largo?
SELECT titulo, duracion FROM episodios
ORDER BY duracion DESC;
