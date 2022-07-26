SELECT a.nome AS artista,
alb.album AS album,
count(s.usuario_id) AS seguidores
FROM SpotifyClone.artista as a
INNER JOIN SpotifyClone.album AS alb
on a.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindo_artista AS s
ON a.artista_id = s.artista_id
GROUP BY s.artista_id, alb.album
ORDER BY seguidores desc, nome, album;