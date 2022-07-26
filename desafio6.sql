SELECT
MIN(p.valor_plano) AS faturamento_minimo,
MAX(p.valor_plano) AS faturamento_maximo,
ROUND(avg(p.valor_plano), 2) as faturamento_medio,
SUM(p.valor_plano) AS faturamento_total
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.plano AS p
ON u.plano_id = p.plano_id;