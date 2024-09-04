/*1. Crea una tabla llamada "Clientes" con las columnas id (entero) y nombre (cadena de texto).*/

CREATE TABLE Clientes(
	id SERIAL PRIMARY KEY,
	Nombre VARCHAR(255)
	
	)

/* 2. Inserta un cliente con id=1 y nombre='John' en la tabla "Clientes".*/

INSERT INTO clientes (nombre)
VALUES ('John')

/* 3. Actualiza el nombre del cliente con id=1 a 'John Doe' en la tabla "Clientes".*/

UPDATE clientes
SET nombre = 'John Doe'
WHERE id = 1

/*4. Elimina el cliente con id=1 de la tabla "Clientes". */

DELETE FROM clientes
WHERE id = 1

/*5. Lee todos los clientes de la tabla "Clientes".*/

SELECT * FROM clientes

/* 6. Crea una tabla llamada "Pedidos" con las columnas id (entero) y cliente_id (entero).*/

CREATE TABLE IF NOT EXISTS Pedidos(
	id SERIAL PRIMARY KEY,
	Cliente_id INT
	
	)

/* Ya existe al utilizar base de datos creada en ejercicio previo*/

/* 7. Inserta un pedido con id=1 y cliente_id=1 en la tabla "Pedidos".*/

/* Al reutilizar tabla existente, se añade columna*/

ALTER TABLE pedidos
	ADD COLUMN Cliente_id INT;

UPDATE pedidos 
SET CLiente_id = 1
WHERE id = 1


/* 8. Actualiza el cliente_id del pedido con id=1 a 2 en la tabla "Pedidos".*/

UPDATE pedidos 
SET CLiente_id = 2
WHERE id = 1

/* 9. Elimina el pedido con id=1 de la tabla "Pedidos".*/

DELETE FROM pedidos
WHERE id = 1


/* 10. Lee todos los pedidos de la tabla "Pedidos".*/

SELECT * FROM pedidos


/* 11. Crea una tabla llamada "Productos" con las columnas id (entero) y nombre (cadena de texto).*/

CREATE TABLE IF NOT EXISTS Productos(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(255)
	)

/* 12. Inserta un producto con id=1 y nombre='Camisa' en la tabla "Productos".*/

INSERT INTO Productos (nombre)
VALUES ('Camisa')

/* 13. Actualiza el nombre del producto con id=1 a 'Pantalón' en la tabla "Productos".*/

UPDATE Productos
SET nombre = 'pantalón'
WHERE id = 1

/* 14. Elimina el producto con id=1 de la tabla "Productos".*/

DELETE FROM Productos
WHERE id = 1

/* 15. Lee todos los productos de la tabla "Productos".*/

SELECT * FROM productos

/* 16. Crea una tabla llamada "DetallesPedido" con las columnas pedido_id (entero) y producto_id (entero).*/

CREATE TABLE Detalle_pedidos(
	id SERIAL PRIMARY KEY,
	pedido_id INT,
	producto_id INT

)

ALTER TABLE detalle_pedidos
ADD CONSTRAINT FK_Pedido_id FOREIGN KEY (Pedido_id) REFERENCES pedidos(id);

ALTER TABLE detalle_pedidos
ADD CONSTRAINT FK_Producto_id FOREIGN KEY (Producto_id) REFERENCES productos(id)

/* 17. Inserta un detalle de pedido con pedido_id=1 y producto_id=1 en la tabla "DetallesPedido".*/

INSERT INTO detalle_pedidos (pedido_id, producto_id)
VALUES (1,1)


/* 18. Actualiza el producto_id del detalle de pedido con pedido_id=1 a 2 en la tabla "DetallesPedido".*/

UPDATE detalle_pedidos
SET producto_id = 2
WHERE id = 1


/* 19. Elimina el detalle de pedido con pedido_id=1 de la tabla "DetallesPedido".*/

DELETE FROM detalle_pedidos
WHERE id = 1

/* 20. Lee todos los detalles de pedido de la tabla "DetallesPedido".*/

SELECT * FROM detalle_pedidos

/* 21. Realiza una consulta para obtener todos los clientes y sus pedidos correspondientes utilizando un inner join.*/

	SELECT clientes.nombre, pedidos.id as Nº_pedido
	
	FROM clientes

	INNER JOIN pedidos
	ON clientes.id = pedidos.id_usuario

/* 22. Realiza una consulta para obtener todos los clientes y sus pedidos correspondientes utilizando un left join.*/
	SELECT clientes.nombre, pedidos.id as Nº_pedido
	
	FROM clientes

	LEFT JOIN pedidos
	ON clientes.id = pedidos.id_usuario

	
/* 23. Realiza una consulta para obtener todos los productos y los detalles de pedido correspondientes utilizando un inner join.*/

	SELECT productos.nombre, detalle_pedidos.id
	
	FROM productos

	INNER JOIN detalle_pedidos
	ON productos.id = detalle_pedidos.id_producto

/* 24. Realiza una consulta para obtener todos los productos y los detalles de pedido correspondientes utilizando un left join.*/

	SELECT productos.nombre, detalle_pedidos.id
	
	FROM productos

	LEFT JOIN detalle_pedidos
	ON productos.id = detalle_pedidos.id_producto

/* 25. Crea una nueva columna llamada "telefono" de tipo cadena de texto en la tabla "Clientes".*/

ALTER TABLE CLientes
	ADD COLUMN Teléfono VARCHAR(255)

/* 26. Modifica la columna "telefono" en la tabla "Clientes" para cambiar su tipo de datos a entero.*/

ALTER TABLE Clientes
ALTER COLUMN telefono TYPE INT USING telefono::integer;

/* 27. Elimina la columna "telefono" de la tabla "Clientes".*/

ALTER TABLE Clientes
DROP COLUMN teléfono 

/* 28. Cambia el nombre de la tabla "Clientes" a "Usuarios".*/

ALTER TABLE Clientes
RENAME TO Usuarios

/* 29. Cambia el nombre de la columna "nombre" en la tabla "Usuarios" a "nombre_completo".*/

ALTER TABLE usuarios
RENAME COLUMN nombre TO nombre_completo


/* 30. Agrega una restricción de clave primaria a la columna "id" en la tabla "Usuarios".*/

ALTER TABLE Usuarios
ADD CONSTRAINT PK_Usuarios PRIMARY KEY (id);
