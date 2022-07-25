SELECT
	COUNT(m.musica_id) AS cancoes,
    COUNT(DISTINCT m.album_id) AS albuns,
	COUNT(DISTINCT a.artista_id) AS artistas
FROM
	SpotifyClone.musica AS m
INNER JOIN
	SpotifyClone.album AS al
ON
	al.album_id=m.album_id
INNER JOIN
	SpotifyClone.artista AS a
ON a.artista_id = al.artista_id;
