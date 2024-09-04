/*1. Crea una tabla llamada "Pedidos" con las columnas: "id" (entero, clave primaria), "id_usuario" (entero, clave foránea de la tabla "Usuarios") y "id_producto" (entero, clave foránea de la tabla "Productos").*/

CREATE TABLE pedidos(
	id SERIAL PRIMARY KEY,
	id_usuario INT,
	id_producto INT,

CONSTRAINT FK_id_usuario FOREIGN KEY (id_usuario) REFERENCES usuarios (id),
CONSTRAINT FK_id_producto FOREIGN KEY (id_producto) REFERENCES pedidos (id)
	)

/* 2. Inserta al menos tres registros en la tabla "Pedidos" que relacionen usuarios con productos.*/

INSERT INTO pedidos (id_usuario, id_producto)
VALUES (2,1),
		(3,2),
		(4,3),
		(7,4),
		(8,3)

/* 3. Realiza una consulta que muestre los nombres de los usuarios y los nombres de los productos que han comprado, incluidos aquellos que no han realizado ningún pedido (utiliza LEFT JOIN y COALESCE).*/

SELECT usuarios.nombre, productos.nombre,
	COALESCE (usuarios.nombre, 'sin pedidos') as Detalle_Pedidos
	FROM pedidos

	
INNER JOIN productos
ON pedidos.id_producto = productos.id
INNER JOIN usuarios
ON pedidos.id_usuario = usuarios.id	

/* 4. Realiza una consulta que muestre los nombres de los usuarios que han realizado un pedido, pero también los que no han realizado ningún pedido (utiliza LEFT JOIN).*/

SELECT usuarios.nombre, pedidos.id as Nº_pedido
	
	FROM usuarios

LEFT JOIN pedidos
ON usuarios.id = pedidos.id_usuario

/* 5. Agrega una nueva columna llamada "cantidad" a la tabla "Pedidos" y actualiza los registros existentes con un valor (utiliza ALTER TABLE y UPDATE)*/
ALTER TABLE pedidos
ADD COLUMN cantidad INT;
UPDATE public.pedidos
SET cantidad = id_usuario * 3
WHERE id = 1;
UPDATE public.pedidos
SET cantidad = id_usuario * 3
WHERE id = 2;
UPDATE public.pedidos	
SET cantidad = id_usuario * 3
WHERE id = 3;
UPDATE public.pedidos
SET cantidad = id_usuario * 3
WHERE id = 4
