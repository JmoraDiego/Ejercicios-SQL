/*1. Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "precio" (numérico).*/

CREATE TABLE productos(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(255),
	precio DECIMAL
)

/* 2. Inserta al menos cinco registros en la tabla "Productos". */

INSERT INTO productos (nombre, precio)
VALUES 	('Camiseta', 12.99),
		('Pantalon', 25.99),
		('Calcetines',5),
		('Camisa', 35),
		('Cinturón', 20)

/*3. Actualiza el precio de un producto en la tabla "Productos". */

UPDATE productos 
SET precio = 50
where id = 4


/*4. Elimina un producto de la tabla "Productos".*/

DELETE FROM productos
Where id = 5


/*5. Realiza una consulta que muestre los nombres de los usuarios junto con los nombres de los productos que han comprado (utiliza un INNER JOIN con la tabla "Productos").*/

UPDATE productos
SET id_cliente =2	
WHERE id = 1;

UPDATE productos
SET id_cliente =3	
WHERE id = 2;

UPDATE productos
SET id_cliente =4	
WHERE id = 3;

UPDATE productos
SET id_cliente =7	
WHERE id = 4;

SELECT usuarios.nombre, productos.nombre FROM usuarios
INNER JOIN productos
ON usuarios.id = id_cliente

ORDER BY usuarios.nombre
