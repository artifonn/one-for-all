SELECT m.titulo AS cancao,
	count(h.musica_id) AS reproducoes
FROM SpotifyClone.musica AS m
INNER JOIN SpotifyClone.historico AS h
ON m.musica_id = h.musica_id
GROUP BY cancao ORDER BY reproducoes DESC, cancao LIMIT 2;