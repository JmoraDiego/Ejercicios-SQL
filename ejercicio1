/*1. Crear una tabla llamada "Clientes" con las columnas: id (entero, clave primaria), nombre (texto) y email (texto).*/

CREATE TABLE IF NOT EXISTS Clientes(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR (255),
	email VARCHAR (255)
)

/*2. Insertar un nuevo cliente en la tabla "Clientes" con id=1, nombre="Juan" y email=" juan@example.com". */

INSERT INTO public.Clientes (nombre, email)
VALUES ('Juan', 'juan@example.com')

/*3. Actualizar el email del cliente con id=1 a " juan@gmail.com".*/ 

UPDATE public.clientes
 SET correo = 'juan@gmail.com'
	WHERE id = 1 ;

/*4. Eliminar el cliente con id=1 de la tabla "Clientes".*/

DELETE FROM public.clientes
WHERE id = 1 ;

/*5. Crear una tabla llamada "Pedidos" con las columnas: id (entero, clave primaria), cliente_id (entero, clave externa referenciando a la tabla "Clientes"), producto (texto) y cantidad (entero). */

CREATE TABLE pedidos(
	CREATE TABLE pedidos(
	id SERIAL PRIMARY KEY,
	Cliente_id INT,
	Producto VARCHAR(255),
	Cantidad INT,
CONSTRAINT FK_Cliente_id FOREIGN KEY (Cliente_id) REFERENCES clientes(id)
	)

/*6. Insertar un nuevo pedido en la tabla "Pedidos" con id=1, cliente_id=1, producto="Camiseta" y cantidad=2. */

INSERT INTO public.clientes (Cliente_id, producto, cantidad) 
VALUES  (1,'Camiseta', 2) /* Uso Cliente_id = 2 ya que en ejercicio anterior borre el primer registro en tabla clientes*/
	
/*7. Actualizar la cantidad del pedido con id=1 a 3. */

UPDATE public.pedidos
SET cantidad = 3
where id = 1


/*8. Eliminar el pedido con id=1 de la tabla "Pedidos".*/

DELETE FROM public.pedidos 
WHERE id = 1 ;

/*9. Crear una tabla llamada "Productos" con las columnas: id (entero, clave primaria), nombre (texto) y precio (decimal).*/

CREATE TABLE Productos (
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(255),
	precio DECIMAL
)

/*10. Insertar varios productos en la tabla "Productos" con diferentes valores. */

INSERT INTO public.productos (nombre, precio)
VALUES ('Camiseta', 25),
		('Calcetines',13),
		('Pantalones', 56),
		('Blusa',70),
		('Cinturón',129) 

/*11. Consultar todos los clientes de la tabla "Clientes". */


SELECT clientes 
FROM public.clientes

/*12. Consultar todos los pedidos de la tabla "Pedidos" junto con los nombres de los clientes correspondientes.*/

SELECT pedidos.producto, pedidos.id, pedidos.cantidad, clientes.nombre FROM public.pedidos
LEFT JOIN public.clientes
ON public.pedidos.Cliente_id = public.clientes.id

/*13. Consultar los productos de la tabla "Productos" cuyo precio sea mayor a $50. */

SELECT * FROM public.productos
WHERE precio > 50


/*14. Consultar los pedidos de la tabla "Pedidos" que tengan una cantidad mayor o igual a 5. */

SELECT * FROM public.pedidos
WHERE cantidad >= 5


/*15. Consultar los clientes de la tabla "Clientes" cuyo nombre empiece con la letra "A". */

SELECT * FROM public.clientes
WHERE nombre ILIKE 'A%'


/*16. Realizar una consulta que muestre el nombre del cliente y el total de pedidos realizados por cada cliente. */

SELECT  clientes.nombre, COUNT(pedidos.id) as Nº_Pedidos
FROM public.pedidos 
LEFT JOIN public.clientes
	ON pedidos.Cliente_id = clientes.id
GROUP BY clientes.nombre ORDER BY clientes.nombre ASC;


/*17. Realizar una consulta que muestre el nombre del producto y la cantidad total de pedidos de ese producto. */

SELECT  productos.nombre, COUNT(pedidos.cantidad) as Numero_pedidos
FROM public.productos 
LEFT JOIN public.pedidos
	ON pedidos.producto = productos.nombre
GROUP BY productos.nombre ORDER BY productos.nombre ASC;

/*18. Agregar una columna llamada "fecha" a la tabla "Pedidos" de tipo fecha. */

ALTER TABLE public.pedidos
	Add Fecha DATE 

/*19. Agregar una clave externa a la tabla "Pedidos" que haga referencia a la tabla "Productos" en la columna "producto". */



/*20. Realizar una consulta que muestre los nombres de los clientes, los nombres de los productos y las cantidades de los pedidos donde coincida la clave externa.*/
