/*Creacion y eliminacion de la base de datos*/
CREATE DATABASE pagina_web;
DROP DATABASE pagina_web;

/*Usar base de datos*/
USE tienda;

/*Ver las tablas*/
SHOW tables;

/*Describir una tabla*/
DESCRIBE usuarios;

/*Crear una tabla*/
CREATE TABLE usuarios(
	id_usuario int auto_increment primary key,
    nombre varchar(15) not null,
    correo varchar(30) not null,
    numero varchar(10) not null,
    id_barrio int not null
);

/*Tabla barrios*/

CREATE TABLE barrios(
	id_barrio int auto_increment primary key,
    nombre_barrio varchar(20) not null
);

/*Consultar mi tabla*/
SELECT * FROM usuarios;


