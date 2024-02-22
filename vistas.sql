CREATE VIEW VistaProveedores AS
SELECT * FROM PROVEEDORES;

CREATE VIEW VistaProductos AS
SELECT * FROM PRODUCTOS;


--Esta vista muestra los proveedores junto con su información de contacto.
CREATE VIEW ProveedoresContacto AS
SELECT ID_PROV, NOMBRE, DIRECCION, TELEFONO
FROM PROVEEDORES;

--Esta vista muestra los proveedores ordenados alfabéticamente por nombre.
CREATE VIEW ProveedoresOrdenados AS
SELECT *
FROM PROVEEDORES
ORDER BY NOMBRE;

--Esta vista muestra los clientes junto con su dirección.
CREATE VIEW ClientesDireccion AS
SELECT ID_CLIENTE, NOMBRE, DIRECCION, TELEFONO
FROM CLIENTES;

--Esta vista muestra los clientes ordenados por su ID.
CREATE VIEW ClientesOrdenados AS
SELECT *
FROM CLIENTES
ORDER BY ID_CLIENTE;

--Esta vista muestra las facturas junto con los detalles del cliente.
CREATE VIEW FacturasCliente AS
SELECT f.ID_FACTURAS, f.FECHA, f.TOTAL, c.NOMBRE AS NOMBRE_CLIENTE, c.DIRECCION AS DIRECCION_CLIENTE
FROM FACTURAS f
INNER JOIN CLIENTES c ON f.ID_CLIENTE = c.ID_CLIENTE;

--Esta vista muestra las facturas ordenadas por fecha.
CREATE VIEW FacturasOrdenadas AS
SELECT *
FROM FACTURAS
ORDER BY FECHA;

--Esta vista muestra los productos junto con los detalles del proveedor.
CREATE VIEW ProductosProveedor AS
SELECT p.ID_PROD, p.NOMBRE, p.PRECIO, p.STOCK, pr.NOMBRE AS NOMBRE_PROVEEDOR
FROM PRODUCTOS p
INNER JOIN PROVEEDORES pr ON p.ID_PROV = pr.ID_PROV;

--Esta vista muestra los productos junto con la cantidad disponible en stock.
CREATE VIEW ProductosDisponibles AS
SELECT ID_PROD, NOMBRE, STOCK
FROM PRODUCTOS;

--Esta vista muestra los almacenes junto con sus ubicaciones físicas.
CREATE VIEW AlmacenesUbicaciones AS
SELECT a.ID_ALMACEN, a.NOMBRE, a.DIRECCION, a.TELEFNO, u.NOMBRE AS NOMBRE_UBICACION
FROM ALMACENES a
LEFT JOIN UBICACIONESFISICAS u ON a.ID_ALMACEN = u.ID_ALMACEN;

--Esta vista muestra los almacenes junto con la cantidad total de productos que contienen.
CREATE VIEW AlmacenesCantidadProductos AS
SELECT a.ID_ALMACEN, a.NOMBRE, COUNT(pa.ID_PROD) AS CANTIDAD_PRODUCTOS
FROM ALMACENES a
LEFT JOIN PRODUCTOSALMACENES pa ON a.ID_ALMACEN = pa.ID_ALMACEN
GROUP BY a.ID_ALMACEN, a.NOMBRE;

--Esta vista muestra las categorías de productos junto con la cantidad de productos que pertenecen a cada categoría.
CREATE VIEW CategoriasCantidadProductos AS
SELECT cp.ID_CAT_PROD, cp.NOMBRE, COUNT(pc.ID_PROD) AS CANTIDAD_PRODUCTOS
FROM CATEGORIASPRODUCTOS cp
LEFT JOIN PRODUCTOSCATEGORIAS pc ON cp.ID_CAT_PROD = pc.ID_CAT_PROD
GROUP BY cp.ID_CAT_PROD, cp.NOMBRE;

--Esta vista muestra los usuarios junto con los detalles de su rol.
CREATE VIEW UsuariosRol AS
SELECT u.ID_USUARIO, u.NOMBRE, u.EMAIL, r.NOMBRE AS NOMBRE_ROL
FROM USUARIOS u
INNER JOIN ROLES r ON u.ID_ROL = r.ID_ROL;

--Esta vista muestra los usuarios ordenados alfabéticamente por su nombre
CREATE VIEW UsuariosOrdenados AS
SELECT *
FROM USUARIOS
ORDER BY NOMBRE;


