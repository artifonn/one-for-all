select a.nome as artista, al.album as album from artista as a
inner join album as al
on a.artista_id = al.artista_id limit 2;