SELECT
  us.usuario AS usuario,
    IF(YEAR(MAX(dt.data_reproducao))=2021,'Usuário ativo','Usuário inativo')
    AS condicao_usuario
FROM
  SpotifyClone.usuario
    AS us
INNER JOIN
  SpotifyClone.historico AS dt
ON
  us.usuario_id=dt.usuario_id
GROUP BY
  usuario
ORDER BY usuario;
