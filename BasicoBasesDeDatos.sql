/*-------CREAR BASES DE DATOS Y ENLAZAR---------*/

/*Creacion y eliminacion de la base de datos*/
CREATE DATABASE tienda;
DROP DATABASE tienda;

/*Usar base de datos*/
USE tienda;

/*Ver las tablas en la base de datos*/
SHOW tables;

/*Describir una tabla*/
DESCRIBE usuarios;
DESCRIBE barrios;

/*Agregar clave foranea despues de creada la tabla*/

ALTER TABLE usuarios 
ADD CONSTRAINT fk_usuarios_barrios 
FOREIGN KEY (id_barrio) REFERENCES barrios(id_barrio);

/*Agregar clave foranea mientras crea la tabla*/
-- FOREIGN KEY (id_barrio) REFERENCES barrios(id_barrio) 

/*Tabla barrios*/
CREATE TABLE barrios(
	id_barrio int auto_increment primary key,
    nombre_barrio varchar(20) not null
);

/*Tabla usuarios*/
CREATE TABLE usuarios(
	id_usuario int auto_increment primary key,
    nombre varchar(15) not null,
    correo varchar(30) not null,
    numero int not null,
    id_barrio int not null,
    foreign key (id_barrio) references barrios(id_barrio)
);

/*Modificar el tipo de datos en un campo de una tabla*/
ALTER TABLE usuarios MODIFY COLUMN numero varchar(10) not null;

/*------HACER CONSULTAS A LA BASE DE DATOS CON SQL--------*/

/*Seleccionar todo el contenido de la tabla*/
SELECT * FROM usuarios;
/*Seleccionar las columnas de contenido de una tabla*/
SELECT nombre, numero FROM usuarios;
/*Filtrar contenido de la BD - DB*/
SELECT * FROM usuarios WHERE id_barrio > 3; -- >=
SELECT * FROM usuarios WHERE id_barrio < 3; -- <=
SELECT * FROM usuarios WHERE id_barrio = 3; -- !=
/*Ordenar datos de la BD*/
SELECT * FROM usuarios ORDER BY nombre ASC; -- DESC
/*Limitar los resultados*/
SELECT * FROM usuarios LIMIT 1 ;
/*Buscar por iniciales-finales del campo*/
SELECT * FROM usuarios WHERE nombre LIKE "%a";
/*Filtrar por varias condiciones*/
SELECT nombre, numero FROM usuarios WHERE id_barrio > 2 
AND correo LIKE "%gmail.com"
AND id_usuario >= 10;
/*Valores unicos*/
SELECT DISTINCT id_barrio FROM usuarios;
