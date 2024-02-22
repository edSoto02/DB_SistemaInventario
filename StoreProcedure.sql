---NUEVAS FORMAS MYSQL
-- Procedimiento para agregar un nuevo producto
DELIMITER //
CREATE PROCEDURE AgregarProducto (
    IN p_ID_PROD INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_DESCRIPCION VARCHAR(100),
    IN p_PRECIO DECIMAL(10, 2),
    IN p_STOCK INT,
    IN p_ID_PROV INT,
    IN p_ID_IMPUESTO INT
)
BEGIN
    INSERT INTO PRODUCTOS (ID_PROD, NOMBRE, DESCRIPCION, PRECIO, STOCK, ID_PROV, ID_IMPUESTO)
    VALUES (p_ID_PROD, p_NOMBRE, p_DESCRIPCION, p_PRECIO, p_STOCK, p_ID_PROV, p_ID_IMPUESTO);
END //

-- Procedimiento para modificar un producto existente
CREATE OR REPLACE PROCEDURE ModificarProducto (
    IN p_ID_PROD INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_DESCRIPCION VARCHAR(100),
    IN p_PRECIO DECIMAL(10, 2),
    IN p_STOCK INT,
    IN p_ID_PROV INT,
    IN p_ID_IMPUESTO INT
)
BEGIN
    UPDATE PRODUCTOS
    SET NOMBRE = p_NOMBRE,
        DESCRIPCION = p_DESCRIPCION,
        PRECIO = p_PRECIO,
        STOCK = p_STOCK,
        ID_PROV = p_ID_PROV,
        ID_IMPUESTO = p_ID_IMPUESTO
    WHERE ID_PROD = p_ID_PROD;
END //

-- Procedimiento para buscar un producto por su ID
CREATE PROCEDURE BuscarProductoPorID (
    IN p_ID_PROD INT,
    OUT p_NOMBRE VARCHAR(255),
    OUT p_DESCRIPCION VARCHAR(100),
    OUT p_PRECIO DECIMAL(10, 2),
    OUT p_STOCK INT,
    OUT p_ID_PROV INT,
    OUT p_ID_IMPUESTO INT
)
BEGIN
    SELECT NOMBRE, DESCRIPCION, PRECIO, STOCK, ID_PROV, ID_IMPUESTO
    INTO p_NOMBRE, p_DESCRIPCION, p_PRECIO, p_STOCK, p_ID_PROV, p_ID_IMPUESTO
    FROM PRODUCTOS
    WHERE ID_PROD = p_ID_PROD;
END //

-- Procedimiento para eliminar un producto por su ID
CREATE PROCEDURE EliminarProducto (
    IN p_ID_PROD INT
)
BEGIN
    DELETE FROM PRODUCTOS WHERE ID_PROD = p_ID_PROD;
END //

DELIMITER ;

---------------------------------------------------------------
---------------------------------------------------------------
---------------------------------------------------------------
-- Procedimiento para agregar un nuevo proveedor
DELIMITER //
CREATE PROCEDURE AgregarProveedor (
    IN p_ID_PROV INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_DIRECCION VARCHAR(255),
    IN p_TELEFONO VARCHAR(255)
)
BEGIN
    INSERT INTO PROVEEDORES (ID_PROV, NOMBRE, DIRECCION, TELEFONO)
    VALUES (p_ID_PROV, p_NOMBRE, p_DIRECCION, p_TELEFONO);
END //
DELIMITER ;

-- Procedimiento para modificar un proveedor existente
DELIMITER //
CREATE PROCEDURE ModificarProveedor (
    IN p_ID_PROV INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_DIRECCION VARCHAR(255),
    IN p_TELEFONO VARCHAR(255)
)
BEGIN
    UPDATE PROVEEDORES
    SET NOMBRE = p_NOMBRE,
        DIRECCION = p_DIRECCION,
        TELEFONO = p_TELEFONO
    WHERE ID_PROV = p_ID_PROV;
END //
DELIMITER ;

-- Procedimiento para buscar un proveedor por su ID
DELIMITER //
CREATE PROCEDURE BuscarProveedorPorID (
    IN p_ID_PROV INT,
    OUT p_NOMBRE VARCHAR(255),
    OUT p_DIRECCION VARCHAR(255),
    OUT p_TELEFONO VARCHAR(255)
)
BEGIN
    SELECT NOMBRE, DIRECCION, TELEFONO
    INTO p_NOMBRE, p_DIRECCION, p_TELEFONO
    FROM PROVEEDORES
    WHERE ID_PROV = p_ID_PROV;
END //
DELIMITER ;

-- Procedimiento para eliminar un proveedor por su ID
DELIMITER //
CREATE PROCEDURE EliminarProveedor (
    IN p_ID_PROV INT
)
BEGIN
    DELETE FROM PROVEEDORES WHERE ID_PROV = p_ID_PROV;
END //
DELIMITER ;
--------------------------------------------------------
--------------------------------------------------------
--------------------------------------------------------
----PROCEDIMIENTOS PARA LA TABLA PEDIDOS

DELIMITER //
CREATE PROCEDURE AgregarPedido(
    IN p_ID_PEDIDO INT,
    IN p_FECHA DATE,
    IN p_ID_PROD INT,
    IN p_CANTIDAD INT  
)
BEGIN 
    INSERT INTO PEDIDOS (ID_PEDIDO, FECHA, ID_PROD, CANTIDAD) 
    VALUES (p_ID_PEDIDO,p_FECHA, p_ID_PROD, p_CANTIDAD);
END //
DELIMITER ;

DELIMITER //
CREATE  PROCEDURE ModificarPedido(
    IN p_ID_PEDIDO INT,
    IN p_FECHA DATE,
    IN p_ID_PROD INT,
    IN p_CANTIDAD INT
)
BEGIN  
    UPDATE PEDIDOS 
    SET FECHA=p_FECHA, 
        ID_PROD=p_ID_PROD, 
        CANTIDAD=p_CANTIDAD 
        WHERE ID_PEDIDO=p_ID_PEDIDO;
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE EliminarPedido(
    IN p_ID_PEDIDO INT
)
BEGIN
    delete from PEDIDOS
     where ID_PEDIDO=p_ID_PEDIDO;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE BuscarPedidoPorID(
    IN  p_ID_PEDIDO INT,
    OUT p_FECHA DATE,
    OUT p_ID_PROD INT,
    OUT p_CANTIDAD INT
)
BEGIN
    select FECHA, ID_PROD, CANTIDAD 
    into p_FECHA,p_ID_PROD,p_CANTIDAD
    from PEDIDOS
    where ID_PEDIDO = p_ID_PEDIDO;
END //
DELIMITER ;
----------------------------------------------------
----------------------------------------------------
----------------------------------------------------
-----PROCEDIMIENTOS PARA LA TABLA CLIENTES
DELIMITER //

-- Procedimiento para agregar un nuevo cliente
CREATE PROCEDURE AgregarCliente (
    IN p_ID_CLIENTE INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_DIRECCION VARCHAR(255),
    IN p_TELEFONO VARCHAR(255)
)
BEGIN
    INSERT INTO CLIENTES (ID_CLIENTE, NOMBRE, DIRECCION, TELEFONO)
    VALUES (p_ID_CLIENTE, p_NOMBRE, p_DIRECCION, p_TELEFONO);
END //

-- Procedimiento para modificar un cliente existente
CREATE PROCEDURE ModificarCliente (
    IN p_ID_CLIENTE INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_DIRECCION VARCHAR(255),
    IN p_TELEFONO VARCHAR(255)
)
BEGIN
    UPDATE CLIENTES
    SET NOMBRE = p_NOMBRE,
        DIRECCION = p_DIRECCION,
        TELEFONO = p_TELEFONO
    WHERE ID_CLIENTE = p_ID_CLIENTE;
END //

-- Procedimiento para buscar un cliente por su ID
CREATE PROCEDURE BuscarClientePorID (
    IN p_ID_CLIENTE INT,
    OUT p_NOMBRE VARCHAR(255),
    OUT p_DIRECCION VARCHAR(255),
    OUT p_TELEFONO VARCHAR(255)
)
BEGIN
    SELECT NOMBRE, DIRECCION, TELEFONO
    INTO p_NOMBRE, p_DIRECCION, p_TELEFONO
    FROM CLIENTES
    WHERE ID_CLIENTE = p_ID_CLIENTE;
END //

-- Procedimiento para eliminar un cliente por su ID
CREATE PROCEDURE EliminarCliente (
    IN p_ID_CLIENTE INT
)
BEGIN
    DELETE FROM CLIENTES WHERE ID_CLIENTE = p_ID_CLIENTE;
END //

DELIMITER ;
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
DELIMITER //

-- Procedimiento para agregar una nueva factura
CREATE PROCEDURE AgregarFactura (
    IN p_ID_FACTURA INT,
    IN p_FECHA DATE,
    IN p_TOTAL DECIMAL(10, 2),
    IN p_ID_CLIENTE INT,
    IN p_ID_FORMAPAGO INT
)
BEGIN
    INSERT INTO FACTURAS (ID_FACTURAS, FECHA, TOTAL, ID_CLIENTE, ID_FORMAPAGO)
    VALUES (p_ID_FACTURA, p_FECHA, p_TOTAL, p_ID_CLIENTE, p_ID_FORMAPAGO);
END //

-- Procedimiento para modificar una factura existente
CREATE PROCEDURE ModificarFactura (
    IN p_ID_FACTURA INT,
    IN p_FECHA DATE,
    IN p_TOTAL DECIMAL(10, 2),
    IN p_ID_CLIENTE INT,
    IN p_ID_FORMAPAGO INT
)
BEGIN
    UPDATE FACTURAS
    SET FECHA = p_FECHA,
        TOTAL = p_TOTAL,
        ID_CLIENTE = p_ID_CLIENTE,
        ID_FORMAPAGO = p_ID_FORMAPAGO
    WHERE ID_FACTURAS = p_ID_FACTURA;
END //

-- Procedimiento para buscar una factura por su ID
CREATE PROCEDURE BuscarFacturaPorID (
    IN p_ID_FACTURA INT,
    OUT p_FECHA DATE,
    OUT p_TOTAL DECIMAL(10, 2),
    OUT p_ID_CLIENTE INT,
    OUT p_ID_FORMAPAGO INT
)
BEGIN
    SELECT FECHA, TOTAL, ID_CLIENTE, ID_FORMAPAGO
    INTO p_FECHA, p_TOTAL, p_ID_CLIENTE, p_ID_FORMAPAGO
    FROM FACTURAS
    WHERE ID_FACTURAS = p_ID_FACTURA;
END //

-- Procedimiento para eliminar una factura por su ID
CREATE PROCEDURE EliminarFactura (
    IN p_ID_FACTURA INT
)
BEGIN
    DELETE FROM FACTURAS WHERE ID_FACTURAS = p_ID_FACTURA;
END //

DELIMITER ;
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
DELIMITER //

-- Procedimiento para agregar un nuevo detalle de pedido
CREATE PROCEDURE AgregarDetallePedido (
    IN p_ID_DETALLE INT,
    IN p_ID_PEDIDO INT,
    IN p_ID_PRODUCTO INT,
    IN p_CANTIDAD INT,
    IN p_PRECIO_UNITARIO DECIMAL(10, 2),
    IN p_IMPORTE DECIMAL(10, 2)
)
BEGIN
    INSERT INTO DETALLEPEDIDO (ID_DETALLE, ID_PEDIDOS, ID_PROD, CANTIDAD, PRECIOUNITARIO, IMPORTE)
    VALUES (p_ID_DETALLE, p_ID_PEDIDO, p_ID_PRODUCTO, p_CANTIDAD, p_PRECIO_UNITARIO, p_IMPORTE);
END //

-- Procedimiento para modificar un detalle de pedido existente
CREATE PROCEDURE ModificarDetallePedido (
    IN p_ID_DETALLE INT,
    IN p_ID_PEDIDO INT,
    IN p_ID_PRODUCTO INT,
    IN p_CANTIDAD INT,
    IN p_PRECIO_UNITARIO DECIMAL(10, 2),
    IN p_IMPORTE DECIMAL(10, 2)
)
BEGIN
    UPDATE DETALLEPEDIDO
    SET ID_PEDIDOS = p_ID_PEDIDO,
        ID_PROD = p_ID_PRODUCTO,
        CANTIDAD = p_CANTIDAD,
        PRECIOUNITARIO = p_PRECIO_UNITARIO,
        IMPORTE = p_IMPORTE
    WHERE ID_DETALLE = p_ID_DETALLE;
END //

-- Procedimiento para buscar un detalle de pedido por su ID
CREATE PROCEDURE BuscarDetallePedidoPorID (
    IN p_ID_DETALLE INT,
    OUT p_ID_PEDIDO INT,
    OUT p_ID_PRODUCTO INT,
    OUT p_CANTIDAD INT,
    OUT p_PRECIO_UNITARIO DECIMAL(10, 2),
    OUT p_IMPORTE DECIMAL(10, 2)
)
BEGIN
    SELECT ID_PEDIDOS, ID_PROD, CANTIDAD, PRECIOUNITARIO, IMPORTE
    INTO p_ID_PEDIDO, p_ID_PRODUCTO, p_CANTIDAD, p_PRECIO_UNITARIO, p_IMPORTE
    FROM DETALLEPEDIDO
    WHERE ID_DETALLE = p_ID_DETALLE;
END //

-- Procedimiento para eliminar un detalle de pedido por su ID
CREATE PROCEDURE EliminarDetallePedido (
    IN p_ID_DETALLE INT
)
BEGIN
    DELETE FROM DETALLEPEDIDO WHERE ID_DETALLE = p_ID_DETALLE;
END //

DELIMITER ;
------------------------------------------------------
------------------------------------------------------
------------------------------------------------------
DELIMITER //

-- Procedimiento para agregar un nuevo almacén
CREATE PROCEDURE AgregarAlmacen (
    IN p_ID_ALMACEN INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_DIRECCION VARCHAR(255),
    IN p_TELEFONO VARCHAR(15)
)
BEGIN
    INSERT INTO ALMACENES (ID_ALMACEN, NOMBRE, DIRECCION, TELEFNO)
    VALUES (p_ID_ALMACEN, p_NOMBRE, p_DIRECCION, p_TELEFONO);
END //

-- Procedimiento para modificar un almacén existente
CREATE PROCEDURE ModificarAlmacen (
    IN p_ID_ALMACEN INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_DIRECCION VARCHAR(255),
    IN p_TELEFONO VARCHAR(15)
)
BEGIN
    UPDATE ALMACENES
    SET NOMBRE = p_NOMBRE,
        DIRECCION = p_DIRECCION,
        TELEFNO = p_TELEFONO
    WHERE ID_ALMACEN = p_ID_ALMACEN;
END //

-- Procedimiento para buscar un almacén por su ID
CREATE PROCEDURE BuscarAlmacenPorID (
    IN p_ID_ALMACEN INT,
    OUT p_NOMBRE VARCHAR(255),
    OUT p_DIRECCION VARCHAR(255),
    OUT p_TELEFONO VARCHAR(15)
)
BEGIN
    SELECT NOMBRE, DIRECCION, TELEFNO
    INTO p_NOMBRE, p_DIRECCION, p_TELEFONO
    FROM ALMACENES
    WHERE ID_ALMACEN = p_ID_ALMACEN;
END //

-- Procedimiento para eliminar un almacén por su ID
CREATE PROCEDURE EliminarAlmacen (
    IN p_ID_ALMACEN INT
)
BEGIN
    DELETE FROM ALMACENES WHERE ID_ALMACEN = p_ID_ALMACEN;
END //

DELIMITER ;
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
DELIMITER //

-- Procedimiento para agregar una nueva categoría de producto
CREATE PROCEDURE AgregarCategoriaProducto (
    IN p_ID_CAT_PROD INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_DESCRIPCION VARCHAR(255)
)
BEGIN
    INSERT INTO CATEGORIASPRODUCTOS (ID_CAT_PROD, NOMBRE, DESCRIPCION)
    VALUES (p_ID_CAT_PROD, p_NOMBRE, p_DESCRIPCION);
END //

-- Procedimiento para modificar una categoría de producto existente
CREATE PROCEDURE ModificarCategoriaProducto (
    IN p_ID_CAT_PROD INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_DESCRIPCION VARCHAR(255)
)
BEGIN
    UPDATE CATEGORIASPRODUCTOS
    SET NOMBRE = p_NOMBRE,
        DESCRIPCION = p_DESCRIPCION
    WHERE ID_CAT_PROD = p_ID_CAT_PROD;
END //

-- Procedimiento para buscar una categoría de producto por su ID
CREATE PROCEDURE BuscarCategoriaProductoPorID (
    IN p_ID_CAT_PROD INT,
    OUT p_NOMBRE VARCHAR(255),
    OUT p_DESCRIPCION VARCHAR(255)
)
BEGIN
    SELECT NOMBRE, DESCRIPCION
    INTO p_NOMBRE, p_DESCRIPCION
    FROM CATEGORIASPRODUCTOS
    WHERE ID_CAT_PROD = p_ID_CAT_PROD;
END //

-- Procedimiento para eliminar una categoría de producto por su ID
CREATE PROCEDURE EliminarCategoriaProducto (
    IN p_ID_CAT_PROD INT
)
BEGIN
    DELETE FROM CATEGORIASPRODUCTOS WHERE ID_CAT_PROD = p_ID_CAT_PROD;
END //

DELIMITER ;
------------------------------------------------------
------------------------------------------------------
------------------------------------------------------
DELIMITER //

-- Procedimiento para agregar un nuevo registro de producto en un almacén
CREATE PROCEDURE AgregarProductoAlmacen (
    IN p_ID_PROD INT,
    IN p_ID_ALMACEN INT,
    IN p_STOCK INT
)
BEGIN
    INSERT INTO PRODUCTOSALMACENES (ID_PROD, ID_ALMACEN, STOCK)
    VALUES (p_ID_PROD, p_ID_ALMACEN, p_STOCK);
END //

-- Procedimiento para modificar el stock de un producto en un almacén
CREATE PROCEDURE ModificarStockProductoAlmacen (
    IN p_ID_PROD INT,
    IN p_ID_ALMACEN INT,
    IN p_STOCK INT
)
BEGIN
    UPDATE PRODUCTOSALMACENES
    SET STOCK = p_STOCK
    WHERE ID_PROD = p_ID_PROD AND ID_ALMACEN = p_ID_ALMACEN;
END //

-- Procedimiento para obtener el stock de un producto en un almacén
CREATE PROCEDURE ObtenerStockProductoAlmacen (
    IN p_ID_PROD INT,
    IN p_ID_ALMACEN INT,
    OUT p_STOCK INT
)
BEGIN
    SELECT STOCK INTO p_STOCK
    FROM PRODUCTOSALMACENES
    WHERE ID_PROD = p_ID_PROD AND ID_ALMACEN = p_ID_ALMACEN;
END //

-- Procedimiento para eliminar un registro de producto en un almacén
CREATE PROCEDURE EliminarProductoAlmacen (
    IN p_ID_PROD INT,
    IN p_ID_ALMACEN INT
)
BEGIN
    DELETE FROM PRODUCTOSALMACENES
    WHERE ID_PROD = p_ID_PROD AND ID_ALMACEN = p_ID_ALMACEN;
END //

DELIMITER ;
---------------------------------------------------
--------------------------------------------------
----------------------------------------------------
DELIMITER //

-- Procedimiento para asignar un producto a una categoría
CREATE PROCEDURE AsignarProductoACategoria (
    IN p_ID_PROD INT,
    IN p_ID_CAT_PROD INT
)
BEGIN
    INSERT INTO PRODUCTOSCATEGORIAS (ID_PROD, ID_CAT_PROD)
    VALUES (p_ID_PROD, p_ID_CAT_PROD);
END //

-- Procedimiento para quitar un producto de una categoría
CREATE PROCEDURE QuitarProductoDeCategoria (
    IN p_ID_PROD INT,
    IN p_ID_CAT_PROD INT
)
BEGIN
    DELETE FROM PRODUCTOSCATEGORIAS
    WHERE ID_PROD = p_ID_PROD AND ID_CAT_PROD = p_ID_CAT_PROD;
END //

-- Procedimiento para buscar categorías de un producto
CREATE PROCEDURE BuscarCategoriasDeProducto (
    IN p_ID_PROD INT
)
BEGIN
    SELECT ID_CAT_PROD
    FROM PRODUCTOSCATEGORIAS
    WHERE ID_PROD = p_ID_PROD;
END //

DELIMITER ;
-----------------------------------------------------
-----------------------------------------------------
-----------------------------------------------------
DELIMITER //

-- Procedimiento para agregar un nuevo usuario
CREATE PROCEDURE AgregarUsuario (
    IN p_ID_USUARIO INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_EMAIL VARCHAR(255),
    IN p_PASSWORD VARCHAR(255),
    IN p_ID_ROL INT
)
BEGIN
    INSERT INTO USUARIOS (ID_USUARIO, NOMBRE, EMAIL, PASSWORD, ID_ROL)
    VALUES (p_ID_USUARIO, p_NOMBRE, p_EMAIL, p_PASSWORD, p_ID_ROL);
END //

-- Procedimiento para modificar un usuario existente
CREATE PROCEDURE ModificarUsuario (
    IN p_ID_USUARIO INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_EMAIL VARCHAR(255),
    IN p_PASSWORD VARCHAR(255),
    IN p_ID_ROL INT
)
BEGIN
    UPDATE USUARIOS
    SET NOMBRE = p_NOMBRE,
        EMAIL = p_EMAIL,
        PASSWORD = p_PASSWORD,
        ID_ROL = p_ID_ROL
    WHERE ID_USUARIO = p_ID_USUARIO;
END //

-- Procedimiento para buscar un usuario por su ID
CREATE PROCEDURE BuscarUsuarioPorID (
    IN p_ID_USUARIO INT,
    OUT p_NOMBRE VARCHAR(255),
    OUT p_EMAIL VARCHAR(255),
    OUT p_PASSWORD VARCHAR(255),
    OUT p_ID_ROL INT
)
BEGIN
    SELECT NOMBRE, EMAIL, PASSWORD, ID_ROL
    INTO p_NOMBRE, p_EMAIL, p_PASSWORD, p_ID_ROL
    FROM USUARIOS
    WHERE ID_USUARIO = p_ID_USUARIO;
END //

-- Procedimiento para eliminar un usuario por su ID
CREATE PROCEDURE EliminarUsuario (
    IN p_ID_USUARIO INT
)
BEGIN
    DELETE FROM USUARIOS WHERE ID_USUARIO = p_ID_USUARIO;
END //

DELIMITER ;
-------------------------------------------------------
-------------------------------------------------------
-------------------------------------------------------
DELIMITER //

-- Procedimiento para agregar un nuevo rol
CREATE PROCEDURE AgregarRol (
    IN p_ID_ROL INT,
    IN p_NOMBRE VARCHAR(255)
)
BEGIN
    INSERT INTO ROLES (ID_ROL, NOMBRE)
    VALUES (p_ID_ROL, p_NOMBRE);
END //

-- Procedimiento para modificar un rol existente
CREATE PROCEDURE ModificarRol (
    IN p_ID_ROL INT,
    IN p_NOMBRE VARCHAR(255)
)
BEGIN
    UPDATE ROLES
    SET NOMBRE = p_NOMBRE
    WHERE ID_ROL = p_ID_ROL;
END //

-- Procedimiento para buscar un rol por su ID
CREATE PROCEDURE BuscarRolPorID (
    IN p_ID_ROL INT,
    OUT p_NOMBRE VARCHAR(255)
)
BEGIN
    SELECT NOMBRE
    INTO p_NOMBRE
    FROM ROLES
    WHERE ID_ROL = p_ID_ROL;
END //

-- Procedimiento para eliminar un rol por su ID
CREATE PROCEDURE EliminarRol (
    IN p_ID_ROL INT
)
BEGIN
    DELETE FROM ROLES WHERE ID_ROL = p_ID_ROL;
END //

DELIMITER ;
-------------------------------------------------
------------------------------------------------
------------------------------------------------
DELIMITER //

-- Procedimiento para agregar un nuevo descuento
CREATE PROCEDURE AgregarDescuento (
    IN p_ID_DESCUENTO INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_PORCENTAJE DECIMAL(5, 2),
    IN p_FECHA_INICIO DATE,
    IN p_FECHA_FIN DATE
)
BEGIN
    INSERT INTO DESCUENTOS (ID_DESCUENTO, NOMBRE, PORCENTAJE, FECHAINICIO, FECHAFIN)
    VALUES (p_ID_DESCUENTO, p_NOMBRE, p_PORCENTAJE, p_FECHA_INICIO, p_FECHA_FIN);
END //

-- Procedimiento para modificar un descuento existente
CREATE PROCEDURE ModificarDescuento (
    IN p_ID_DESCUENTO INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_PORCENTAJE DECIMAL(5, 2),
    IN p_FECHA_INICIO DATE,
    IN p_FECHA_FIN DATE
)
BEGIN
    UPDATE DESCUENTOS
    SET NOMBRE = p_NOMBRE,
        PORCENTAJE = p_PORCENTAJE,
        FECHAINICIO = p_FECHA_INICIO,
        FECHAFIN = p_FECHA_FIN
    WHERE ID_DESCUENTO = p_ID_DESCUENTO;
END //

-- Procedimiento para buscar un descuento por su ID
CREATE PROCEDURE BuscarDescuentoPorID (
    IN p_ID_DESCUENTO INT,
    OUT p_NOMBRE VARCHAR(255),
    OUT p_PORCENTAJE DECIMAL(5, 2),
    OUT p_FECHA_INICIO DATE,
    OUT p_FECHA_FIN DATE
)
BEGIN
    SELECT NOMBRE, PORCENTAJE, FECHAINICIO, FECHAFIN
    INTO p_NOMBRE, p_PORCENTAJE, p_FECHA_INICIO, p_FECHA_FIN
    FROM DESCUENTOS
    WHERE ID_DESCUENTO = p_ID_DESCUENTO;
END //

-- Procedimiento para eliminar un descuento por su ID
CREATE PROCEDURE EliminarDescuento (
    IN p_ID_DESCUENTO INT
)
BEGIN
    DELETE FROM DESCUENTOS WHERE ID_DESCUENTO = p_ID_DESCUENTO;
END //

DELIMITER ;
---------------------------------------------------
----------------------------------------------------
---------------------------------------------------
DELIMITER //

-- Procedimiento para asignar un descuento a un producto
CREATE PROCEDURE AsignarDescuentoAProducto (
    IN p_ID_DESCUENTO INT,
    IN p_ID_PROD INT
)
BEGIN
    INSERT INTO DESCUENTOSPRODUCTOS (ID_DESCUENTO, ID_PROD)
    VALUES (p_ID_DESCUENTO, p_ID_PROD);
END //

-- Procedimiento para quitar un descuento de un producto
CREATE PROCEDURE QuitarDescuentoDeProducto (
    IN p_ID_DESCUENTO INT,
    IN p_ID_PROD INT
)
BEGIN
    DELETE FROM DESCUENTOSPRODUCTOS
    WHERE ID_DESCUENTO = p_ID_DESCUENTO AND ID_PROD = p_ID_PROD;
END //

-- Procedimiento para buscar productos asociados a un descuento
CREATE PROCEDURE BuscarProductosPorDescuento (
    IN p_ID_DESCUENTO INT
)
BEGIN
    SELECT ID_PROD
    FROM DESCUENTOSPRODUCTOS
    WHERE ID_DESCUENTO = p_ID_DESCUENTO;
END //

DELIMITER ;
-----------------------------------------------------
-----------------------------------------------------
-----------------------------------------------------
DELIMITER //

-- Procedimiento para agregar una nueva oferta
CREATE PROCEDURE AgregarOferta (
    IN p_ID_OFERTAS INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_ID_DESCUENTO INT,
    IN p_FECHA_INICIO DATE,
    IN p_FECHA_FIN DATE
)
BEGIN
    INSERT INTO OFERTAS (ID_OFERTAS, NOMBRE, ID_DESCUENTO, FECHAINICIO, FECHAFIN)
    VALUES (p_ID_OFERTAS, p_NOMBRE, p_ID_DESCUENTO, p_FECHA_INICIO, p_FECHA_FIN);
END //

-- Procedimiento para modificar una oferta existente
CREATE PROCEDURE ModificarOferta (
    IN p_ID_OFERTAS INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_ID_DESCUENTO INT,
    IN p_FECHA_INICIO DATE,
    IN p_FECHA_FIN DATE
)
BEGIN
    UPDATE OFERTAS
    SET NOMBRE = p_NOMBRE,
        ID_DESCUENTO = p_ID_DESCUENTO,
        FECHAINICIO = p_FECHA_INICIO,
        FECHAFIN = p_FECHA_FIN
    WHERE ID_OFERTAS = p_ID_OFERTAS;
END //

-- Procedimiento para buscar una oferta por su ID
CREATE PROCEDURE BuscarOfertaPorID (
    IN p_ID_OFERTAS INT,
    OUT p_NOMBRE VARCHAR(255),
    OUT p_ID_DESCUENTO INT,
    OUT p_FECHA_INICIO DATE,
    OUT p_FECHA_FIN DATE
)
BEGIN
    SELECT NOMBRE, ID_DESCUENTO, FECHAINICIO, FECHAFIN
    INTO p_NOMBRE, p_ID_DESCUENTO, p_FECHA_INICIO, p_FECHA_FIN
    FROM OFERTAS
    WHERE ID_OFERTAS = p_ID_OFERTAS;
END //

-- Procedimiento para eliminar una oferta por su ID
CREATE PROCEDURE EliminarOferta (
    IN p_ID_OFERTAS INT
)
BEGIN
    DELETE FROM OFERTAS WHERE ID_OFERTAS = p_ID_OFERTAS;
END //

DELIMITER ;
----------------------------------------------------
----------------------------------------------------
---------------------------------------------
DELIMITER //

-- Procedimiento para asignar una oferta a un cliente
CREATE PROCEDURE AsignarOfertaACliente (
    IN p_ID_OFERTA INT,
    IN p_ID_CLIENTE INT
)
BEGIN
    INSERT INTO OFERTASCLIENTES (ID_OFERTA, ID_CLIENTE)
    VALUES (p_ID_OFERTA, p_ID_CLIENTE);
END //

-- Procedimiento para quitar una oferta de un cliente
CREATE PROCEDURE QuitarOfertaDeCliente (
    IN p_ID_OFERTA INT,
    IN p_ID_CLIENTE INT
)
BEGIN
    DELETE FROM OFERTASCLIENTES
    WHERE ID_OFERTA = p_ID_OFERTA AND ID_CLIENTE = p_ID_CLIENTE;
END //

-- Procedimiento para buscar ofertas asociadas a un cliente
CREATE PROCEDURE BuscarOfertasPorCliente (
    IN p_ID_CLIENTE INT
)
BEGIN
    SELECT ID_OFERTA
    FROM OFERTASCLIENTES
    WHERE ID_CLIENTE = p_ID_CLIENTE;
END //

DELIMITER ;
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
DELIMITER //

-- Procedimiento para agregar una nueva ubicación física
CREATE PROCEDURE AgregarUbicacionFisica (
    IN p_ID_UBICACIONES INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_DESCRIPCION TEXT,
    IN p_ID_ALMACEN INT
)
BEGIN
    INSERT INTO UBICACIONESFISICAS (ID_UBICACIONES, NOMBRE, DESCRIPCION, ID_ALMACEN)
    VALUES (p_ID_UBICACIONES, p_NOMBRE, p_DESCRIPCION, p_ID_ALMACEN);
END //

-- Procedimiento para modificar una ubicación física existente
CREATE PROCEDURE ModificarUbicacionFisica (
    IN p_ID_UBICACIONES INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_DESCRIPCION TEXT,
    IN p_ID_ALMACEN INT
)
BEGIN
    UPDATE UBICACIONESFISICAS
    SET NOMBRE = p_NOMBRE,
        DESCRIPCION = p_DESCRIPCION,
        ID_ALMACEN = p_ID_ALMACEN
    WHERE ID_UBICACIONES = p_ID_UBICACIONES;
END //

-- Procedimiento para buscar una ubicación física por su ID
CREATE PROCEDURE BuscarUbicacionFisicaPorID (
    IN p_ID_UBICACIONES INT,
    OUT p_NOMBRE VARCHAR(255),
    OUT p_DESCRIPCION TEXT,
    OUT p_ID_ALMACEN INT
)
BEGIN
    SELECT NOMBRE, DESCRIPCION, ID_ALMACEN
    INTO p_NOMBRE, p_DESCRIPCION, p_ID_ALMACEN
    FROM UBICACIONESFISICAS
    WHERE ID_UBICACIONES = p_ID_UBICACIONES;
END //

-- Procedimiento para eliminar una ubicación física por su ID
CREATE PROCEDURE EliminarUbicacionFisica (
    IN p_ID_UBICACIONES INT
)
BEGIN
    DELETE FROM UBICACIONESFISICAS WHERE ID_UBICACIONES = p_ID_UBICACIONES;
END //

DELIMITER ;
------------------------------------------------------
-------------------------------------------------------
-------------------------------------------------------
DELIMITER //

-- Procedimiento para agregar un nuevo impuesto/tasa
CREATE PROCEDURE AgregarImpuestoTasa (
    IN p_ID_IMPUESTO INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_PORCENTAJE DECIMAL(5, 2),
    IN p_DESCRIPCION VARCHAR(100)
)
BEGIN
    INSERT INTO IMPUESTOSTASAS (ID_IMPUESTO, NOMBRE, PORCENTAJE, DESCRIPCION)
    VALUES (p_ID_IMPUESTO, p_NOMBRE, p_PORCENTAJE, p_DESCRIPCION);
END //

-- Procedimiento para modificar un impuesto/tasa existente
CREATE PROCEDURE ModificarImpuestoTasa (
    IN p_ID_IMPUESTO INT,
    IN p_NOMBRE VARCHAR(255),
    IN p_PORCENTAJE DECIMAL(5, 2),
    IN p_DESCRIPCION VARCHAR(100)
)
BEGIN
    UPDATE IMPUESTOSTASAS
    SET NOMBRE = p_NOMBRE,
        PORCENTAJE = p_PORCENTAJE,
        DESCRIPCION = p_DESCRIPCION
    WHERE ID_IMPUESTO = p_ID_IMPUESTO;
END //

-- Procedimiento para buscar un impuesto/tasa por su ID
CREATE PROCEDURE BuscarImpuestoTasaPorID (
    IN p_ID_IMPUESTO INT,
    OUT p_NOMBRE VARCHAR(255),
    OUT p_PORCENTAJE DECIMAL(5, 2),
    OUT p_DESCRIPCION VARCHAR(100)
)
BEGIN
    SELECT NOMBRE, PORCENTAJE, DESCRIPCION
    INTO p_NOMBRE, p_PORCENTAJE, p_DESCRIPCION
    FROM IMPUESTOSTASAS
    WHERE ID_IMPUESTO = p_ID_IMPUESTO;
END //

-- Procedimiento para eliminar un impuesto/tasa por su ID
CREATE PROCEDURE EliminarImpuestoTasa (
    IN p_ID_IMPUESTO INT
)
BEGIN
    DELETE FROM IMPUESTOSTASAS WHERE ID_IMPUESTO = p_ID_IMPUESTO;
END //

DELIMITER ;
----------------------------------------------------------
---------------------------------------------------------
-----------------------------------------------------------
DELIMITER //

-- Procedimiento para agregar una nueva forma de pago
CREATE PROCEDURE AgregarFormaPago (
    IN p_ID_FORMAPAGO INT,
    IN p_NOMBRE VARCHAR(100),
    IN p_DESCRIPCION VARCHAR(100),
    IN p_DETALLE VARCHAR(100)
)
BEGIN
    INSERT INTO FORMASPAGO (ID_FORMAPAGO, NOMBRE, DESCRIPCION, DETALLE)
    VALUES (p_ID_FORMAPAGO, p_NOMBRE, p_DESCRIPCION, p_DETALLE);
END //

-- Procedimiento para modificar una forma de pago existente
CREATE PROCEDURE ModificarFormaPago (
    IN p_ID_FORMAPAGO INT,
    IN p_NOMBRE VARCHAR(100),
    IN p_DESCRIPCION VARCHAR(100),
    IN p_DETALLE VARCHAR(100)
)
BEGIN
    UPDATE FORMASPAGO
    SET NOMBRE = p_NOMBRE,
        DESCRIPCION = p_DESCRIPCION,
        DETALLE = p_DETALLE
    WHERE ID_FORMAPAGO = p_ID_FORMAPAGO;
END //

-- Procedimiento para buscar una forma de pago por su ID
CREATE PROCEDURE BuscarFormaPagoPorID (
    IN p_ID_FORMAPAGO INT,
    OUT p_NOMBRE VARCHAR(100),
    OUT p_DESCRIPCION VARCHAR(100),
    OUT p_DETALLE VARCHAR(100)
)
BEGIN
    SELECT NOMBRE, DESCRIPCION, DETALLE
    INTO p_NOMBRE, p_DESCRIPCION, p_DETALLE
    FROM FORMASPAGO
    WHERE ID_FORMAPAGO = p_ID_FORMAPAGO;
END //

-- Procedimiento para eliminar una forma de pago por su ID
CREATE PROCEDURE EliminarFormaPago (
    IN p_ID_FORMAPAGO INT
)
BEGIN
    DELETE FROM FORMASPAGO WHERE ID_FORMAPAGO = p_ID_FORMAPAGO;
END //

DELIMITER ;
-----------------------------------------------------
--------------------------------------------------------
-------------------------------------------------------
DELIMITER //

-- Procedimiento para agregar un nuevo registro de auditoría
CREATE PROCEDURE AgregarAuditoriaCambio (
    IN p_ID_AUDITORIA INT,
    IN p_TABLAAFECTADA VARCHAR(100),
    IN p_ID_REGISTROAFECTADO INT,
    IN p_CAMPOAFECTADO VARCHAR(100),
    IN p_VALORANTERIOR VARCHAR(100),
    IN p_VALORNUEVO VARCHAR(100),
    IN p_FECHA TIMESTAMP,
    IN p_USUARIO VARCHAR(50)
)
BEGIN
    INSERT INTO AUDITORIACAMBIOS (ID_AUDITORIA, TABLAAFECTADA, ID_REGISTROAFECTADO, CAMPOAFECTADO, VALORANTERIOR, VALORNUEVO, FECHA, USUARIO)
    VALUES (p_ID_AUDITORIA, p_TABLAAFECTADA, p_ID_REGISTROAFECTADO, p_CAMPOAFECTADO, p_VALORANTERIOR, p_VALORNUEVO, p_FECHA, p_USUARIO);
END //

-- Procedimiento para buscar un registro de auditoría por su ID
CREATE PROCEDURE BuscarAuditoriaCambioPorID (
    IN p_ID_AUDITORIA INT,
    OUT p_TABLAAFECTADA VARCHAR(100),
    OUT p_ID_REGISTROAFECTADO INT,
    OUT p_CAMPOAFECTADO VARCHAR(100),
    OUT p_VALORANTERIOR VARCHAR(100),
    OUT p_VALORNUEVO VARCHAR(100),
    OUT p_FECHA TIMESTAMP,
    OUT p_USUARIO VARCHAR(50)
)
BEGIN
    SELECT TABLAAFECTADA, ID_REGISTROAFECTADO, CAMPOAFECTADO, VALORANTERIOR, VALORNUEVO, FECHA, USUARIO
    INTO p_TABLAAFECTADA, p_ID_REGISTROAFECTADO, p_CAMPOAFECTADO, p_VALORANTERIOR, p_VALORNUEVO, p_FECHA, p_USUARIO
    FROM AUDITORIACAMBIOS
    WHERE ID_AUDITORIA = p_ID_AUDITORIA;
END //

-- Procedimiento para eliminar un registro de auditoría por su ID
CREATE PROCEDURE EliminarAuditoriaCambio (
    IN p_ID_AUDITORIA INT
)
BEGIN
    DELETE FROM AUDITORIACAMBIOS WHERE ID_AUDITORIA = p_ID_AUDITORIA;
END //

DELIMITER ;
-------------------------------------------------------
-------------------------------------------------------
-------------------------------------------------------
DELIMITER //

-- Procedimiento para agregar un nuevo registro al historial de pedidos
CREATE PROCEDURE AgregarHistorialPedido (
    IN p_ID_HISTORIAL INT,
    IN p_ID_PEDIDOS INT,
    IN p_ESTADO_ANTERIOR VARCHAR(255),
    IN p_ESTADO_NUEVO VARCHAR(255),
    IN p_ID_USUARIO INT,
    IN p_FECHA TIMESTAMP
)
BEGIN
    INSERT INTO HISTORIALPEDIDOS (ID_HISTORIAL, ID_PEDIDOS, ESTADOANTERIOR, ESTADONUEVO, ID_USUARIO, FECHA)
    VALUES (p_ID_HISTORIAL, p_ID_PEDIDOS, p_ESTADO_ANTERIOR, p_ESTADO_NUEVO, p_ID_USUARIO, p_FECHA);
END //

-- Procedimiento para buscar un registro en el historial de pedidos por su ID
CREATE PROCEDURE BuscarHistorialPedidoPorID (
    IN p_ID_HISTORIAL INT,
    OUT p_ID_PEDIDOS INT,
    OUT p_ESTADO_ANTERIOR VARCHAR(255),
    OUT p_ESTADO_NUEVO VARCHAR(255),
    OUT p_ID_USUARIO INT,
    OUT p_FECHA TIMESTAMP
)
BEGIN
    SELECT ID_PEDIDOS, ESTADOANTERIOR, ESTADONUEVO, ID_USUARIO, FECHA
    INTO p_ID_PEDIDOS, p_ESTADO_ANTERIOR, p_ESTADO_NUEVO, p_ID_USUARIO, p_FECHA
    FROM HISTORIALPEDIDOS
    WHERE ID_HISTORIAL = p_ID_HISTORIAL;
END //

-- Procedimiento para eliminar un registro del historial de pedidos por su ID
CREATE PROCEDURE EliminarHistorialPedido (
    IN p_ID_HISTORIAL INT
)
BEGIN
    DELETE FROM HISTORIALPEDIDOS WHERE ID_HISTORIAL = p_ID_HISTORIAL;
END //

DELIMITER ;
