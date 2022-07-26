select
u.usuario as usuario,
count(cancoes.musica_id) as qtde_musicas_ouvidas,
	round(sum(cancoes.duracao_segundos) / 60, 2) as total_minutos
from SpotifyClone.usuario as u
inner join SpotifyClone.historico as h
on u.usuario_id = h.usuario_id
inner join SpotifyClone.musica as cancoes
on h.musica_id = cancoes.musica_id
group by u.usuario_id
order by u.usuario;