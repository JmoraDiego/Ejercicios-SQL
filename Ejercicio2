/*1. Crea una base de datos llamada "MiBaseDeDatos".*/

CREATE DATABASE MiBaseDeDatos

/*2. Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "edad" (entero).+/

CREATE TABLE Usuarios(
		id SERIAL PRIMARY KEY,
		Nombre VARCHAR(255),
		edad INT
	)

/*3. Inserta dos registros en la tabla "Usuarios".*/

INSERT INTO public.usuarios (nombre, edad)
VALUES  ('Antonio', 25),
	('María', 33)

/*4. Actualiza la edad de un usuario en la tabla "Usuarios".*/

update public.usuarios
SET edad = 40
WHERE id = 1
 
/*5. Elimina un usuario de la tabla "Usuarios".*/

DELETE FROM public.usuarios
WHERE id = 1

/*Nivel de dificultad: Moderado 1. Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "pais" (texto).*/

CREATE TABLE Ciudades(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(255),
	país VARCHAR(255)
	)

/* 2. Inserta al menos tres registros en la tabla "Ciudades". */

INSERT INTO Ciudades (nombre, País)
VALUES ('Madrid', 'España'),
		('Oslo', 'Noruega'),
		('París', 'Francia')

/* 3. Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id" de la tabla "Ciudades".*/

ALTER TABLE public.usuarios
	CONSTRAINT FK_ciudades_id FOREIGN KEY (ciudades_id) REFERENCES ciudades(id),

ADD CONSTRAINT FK_ciudades_id FOREIGN KEY (ciudades_id) REFERENCES ciudades(id)


/* 4. Realiza una consulta que muestre los nombres de los usuarios junto con el nombre de su ciudad y país (utiliza un LEFT JOIN). */

SELECT usuarios.nombre, ciudades.nombre, ciudades.país FROM usuarios
LEFT JOIN ciudades
ON usuarios.ciudades_id = ciudades.id


/*5. Realiza una consulta que muestre solo los usuarios que tienen una ciudad asociada (utiliza un INNER JOIN).*/

SELECT usuarios.nombre, ciudades.nombre, ciudades.país FROM usuarios
INNER JOIN ciudades
ON usuarios.ciudades_id = ciudades.id

