SELECT d.nombre_director, g.nombre_genero, p.titulo_peli, p.fecha, p.imagen_peli, p.valoracion
FROM directores d
NATURAL JOIN pelis p
NATURAL JOIN pelis_generos pg
NATURAL JOIN generos g
WHERE p.id_peli = 1;