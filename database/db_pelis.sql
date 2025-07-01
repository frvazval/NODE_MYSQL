create database db_pelis;
use db_pelis;

-- TABLAS

create table pelis (
id_peli int not null primary key auto_increment,
titulo_peli varchar(200) not null,
fecha int not null,
id_director int not null,
imagen_peli text,
valoracion decimal(3,1) unsigned not null
);

create table directores (
id_director int not null primary key auto_increment,
nombre_director varchar(255) not null
);

create table generos (
id_genero int not null primary key auto_increment,
nombre_genero varchar(50) not null
);

create table pelis_generos (
id_peli_genero int not null primary key auto_increment,
id_peli int not null,
id_genero int not null
);

-- INSERTS

insert into generos (nombre_genero) values
("Drama"),("Comedia"),("Aventuras"),("Fantastica"),("Ciencia Ficcion"),("Terror"),("Romantica"),("Suspense"),("Historica");

insert into pelis (titulo_peli, fecha, id_director, imagen_peli, valoracion) values
("La guerra de las galaxias", 1977, 1, "https://pics.filmaffinity.com/star_wars-166209019-large.jpg", 7.9),
("Inception", 2010, 2, "https://pics.filmaffinity.com/inception-652954101-large.jpg", 8),
("Interstellar", 2014, 2, "https://pics.filmaffinity.com/interstellar-366875261-large.jpg", 7.9),
("Infiltrados", 2006, 3, "https://pics.filmaffinity.com/the_departed-749477966-large.jpg", 7.9),
("El padrino", 1972, 4, "https://pics.filmaffinity.com/the_godfather-488102675-large.jpg", 9);

insert into directores (nombre_director) values
("George Lucas"), ("Christopher Nolan"), ("Martin Scorsese"), ("Francis Ford Coppola");

insert into pelis_generos (id_peli, id_genero) values
(1, (select id_genero from generos where nombre_genero = "Aventuras")),
(1, (select id_genero from generos where nombre_genero = "Fantastica")),
(1, (select id_genero from generos where nombre_genero = "Ciencia Ficcion")),
(2, (select id_genero from generos where nombre_genero = "Ciencia Ficcion")),
(2, (select id_genero from generos where nombre_genero = "Fantastica")),
(2, (select id_genero from generos where nombre_genero = "Suspense")),
(3, (select id_genero from generos where nombre_genero = "Ciencia Ficcion")),
(3, (select id_genero from generos where nombre_genero = "Drama")),
(4, (select id_genero from generos where nombre_genero = "Drama")),
(4, (select id_genero from generos where nombre_genero = "Suspense")),
(5, (select id_genero from generos where nombre_genero = "Suspense")),
(5, (select id_genero from generos where nombre_genero = "Drama"));

