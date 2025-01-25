-- Based on the netflixDB database, perform queries that answer the following questions:
-- 1) Who is the actor who has participated in the most series?
-- 2) What is the series with the highest average imdb rating?
-- 3) What is the longest episode?

--- 1) Who is the actor who has participated in the most series?
SELECT actor_id, COUNT(serie_id) AS numero_de_series FROM actuaciones
GROUP BY actor_id
ORDER BY numero_de_series DESC;

-- 2) What is the series with the highest average imdb rating?
SELECT serie_id, AVG(rating_imdb) AS rating_promedio FROM episodios
GROUP BY serie_id
ORDER BY rating_promedio DESC;

-- 3) What is the longest episode?
SELECT titulo, duracion FROM episodios
ORDER BY duracion DESC;
