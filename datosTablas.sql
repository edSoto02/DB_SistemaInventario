INSERT INTO PRODUCTOS (ID_PROD, NOMBRE, DESCRIPCION, PRECIO, STOCK, ID_PROV, ID_IMPUESTO) VALUES
(1, 'Camiseta', 'Camiseta de algodón', 19.99, 50, 1, 1),
(2, 'Pantalones', 'Pantalones vaqueros', 29.99, 30, 2, 2),
(3, 'Zapatos deportivos', 'Zapatos para correr', 49.99, 20, 3, 1),
(4, 'Vestido', 'Vestido elegante para ocasiones especiales', 39.99, 15, 4, 3),
(5, 'Reloj', 'Reloj de pulsera analógico', 99.99, 10, 5, 2),
(6, 'Gafas de sol', 'Gafas de sol con protección UV', 24.99, 25, 6, 1),
(7, 'Mochila', 'Mochila resistente para uso diario', 34.99, 40, 7, 2),
(8, 'Portátil', 'Ordenador portátil de última generación', 799.99, 5, 8, 3),
(9, 'Teléfono móvil', 'Teléfono inteligente con cámara de alta resolución', 699.99, 8, 9, 1),
(10, 'Auriculares inalámbricos', 'Auriculares Bluetooth con cancelación de ruido', 129.99, 12, 10, 2),
(11, 'Teclado', 'Teclado mecánico para gamers', 89.99, 20, 11, 3),
(12, 'Ratón', 'Ratón ergonómico con sensor óptico', 49.99, 25, 12, 1),
(13, 'Impresora', 'Impresora multifunción a color', 149.99, 7, 13, 2),
(14, 'Tableta gráfica', 'Tableta digitalizadora para diseño', 199.99, 10, 14, 3),
(15, 'Cámara digital', 'Cámara compacta de alta resolución', 299.99, 6, 15, 1),
(16, 'Pendrive', 'Memoria USB de alta velocidad', 19.99, 30, 16, 2),
(17, 'Disco duro externo', 'Disco duro portátil de 1TB', 79.99, 15, 17, 3),
(18, 'Altavoces', 'Altavoces inalámbricos con sonido envolvente', 149.99, 10, 18, 1),
(19, 'Monitor', 'Monitor LED de 27 pulgadas', 249.99, 8, 19, 2),
(20, 'Router WiFi', 'Router de alta velocidad para redes domésticas', 69.99, 12, 20, 3);

INSERT INTO PROVEEDORES (ID_PROV, NOMBRE, DIRECCION, TELEFONO) VALUES
(1, 'Proveedor A', 'Calle 123, Ciudad A', '123-456-7890'),
(2, 'Proveedor B', 'Avenida XYZ, Ciudad B', '987-654-3210'),
(3, 'Proveedor C', 'Calle Principal, Ciudad C', '456-789-0123'),
(4, 'Proveedor D', 'Carrera 456, Ciudad D', '789-012-3456'),
(5, 'Proveedor E', 'Boulevard ABC, Ciudad E', '321-654-9870'),
(6, 'Proveedor F', 'Calle Secundaria, Ciudad F', '012-345-6789'),
(7, 'Proveedor G', 'Avenida Central, Ciudad G', '654-987-0123'),
(8, 'Proveedor H', 'Callejón Estrecho, Ciudad H', '876-543-2109'),
(9, 'Proveedor I', 'Paseo Peatonal, Ciudad I', '234-567-8901'),
(10, 'Proveedor J', 'Pasaje Angosto, Ciudad J', '543-210-9876');

INSERT INTO CLIENTES (ID_CLIENTE, NOMBRE, DIRECCION, TELEFONO) VALUES
(1, 'Cliente A', 'Calle 123, Ciudad A', '123-456-7890'),
(2, 'Cliente B', 'Avenida XYZ, Ciudad B', '987-654-3210'),
(3, 'Cliente C', 'Calle Principal, Ciudad C', '456-789-0123'),
(4, 'Cliente D', 'Carrera 456, Ciudad D', '789-012-3456'),
(5, 'Cliente E', 'Boulevard ABC, Ciudad E', '321-654-9870'),
(6, 'Cliente F', 'Calle Secundaria, Ciudad F', '012-345-6789'),
(7, 'Cliente G', 'Avenida Central, Ciudad G', '654-987-0123'),
(8, 'Cliente H', 'Callejón Estrecho, Ciudad H', '876-543-2109'),
(9, 'Cliente I', 'Paseo Peatonal, Ciudad I', '234-567-8901'),
(10, 'Cliente J', 'Pasaje Angosto, Ciudad J', '543-210-9876');

INSERT INTO ROLES (ID_ROL, NOMBRE) VALUES
(1, 'Administrador'),
(2, 'Gerente'),
(3, 'Supervisor'),
(4, 'Empleado'),
(5, 'Cliente'),
(6, 'Invitado'),
(7, 'Analista'),
(8, 'Desarrollador'),
(9, 'Diseñador'),
(10, 'Ingeniero');

INSERT INTO DESCUENTOS (ID_DESCUENTO, NOMBRE, PORCENTAJE, FECHAINICIO, FECHAFIN) VALUES
(1, 'Descuento Navideño', 10.00, '2024-12-01', '2024-12-31'),
(2, 'Oferta de Verano', 15.00, '2024-06-01', '2024-08-31'),
(3, 'Descuento de Primavera', 12.50, '2024-03-01', '2024-05-31'),
(4, 'Promoción de Otoño', 20.00, '2024-09-01', '2024-11-30'),
(5, 'Oferta de Invierno', 18.00, '2025-01-01', '2025-02-28'),
(6, 'Descuento Especial', 25.00, '2024-01-01', '2024-12-31'),
(7, 'Oferta de Black Friday', 30.00, '2024-11-01', '2024-11-30'),
(8, 'Descuento de Fin de Año', 22.50, '2024-12-26', '2024-12-31'),
(9, 'Promoción de Verano', 17.50, '2024-06-15', '2024-08-15'),
(10, 'Descuento de Primavera 2', 13.00, '2024-03-15', '2024-05-15');

INSERT INTO FORMASPAGO (ID_FORMAPAGO, NOMBRE, DESCRIPCION, DETALLE) VALUES
(1, 'Tarjeta de Crédito', 'Pago con tarjeta de crédito', 'Visa, Mastercard, etc.'),
(2, 'Transferencia Bancaria', 'Pago mediante transferencia bancaria', 'Datos bancarios proporcionados'),
(3, 'PayPal', 'Pago a través de PayPal', 'Dirección de correo electrónico asociada'),
(4, 'Efectivo', 'Pago en efectivo en el momento de la entrega', 'Moneda local aceptada'),
(5, 'Cheque', 'Pago con cheque', 'Nombre del beneficiario y datos del banco'),
(6, 'Criptomoneda', 'Pago con criptomonedas', 'Dirección de la billetera digital');

INSERT INTO UBICACIONESFISICAS (ID_UBICACIONES, NOMBRE, DESCRIPCION, ID_ALMACEN) VALUES
(1, 'Pasillo A-1', 'Primer pasillo en el almacén principal', 1),
(2, 'Estantería B-3', 'Tercera estantería en el almacén secundario', 2),
(3, 'Estante C-2', 'Segundo estante en el almacén de productos delicados', 3),
(4, 'Sótano', 'Área de almacenamiento en el sótano', 1),
(5, 'Depósito Exterior', 'Depósito al aire libre para productos voluminosos', 2),
(6, 'Almacén de Refrigeración', 'Almacén con control de temperatura para productos perecederos', 3),
(7, 'Área de Embalaje', 'Espacio dedicado al embalaje de productos para envío', 1),
(8, 'Estantería D-5', 'Quinta estantería en el almacén de productos electrónicos', 2),
(9, 'Zona de Carga', 'Zona donde se cargan los productos en los vehículos de transporte', 3),
(10, 'Sala de Exhibición', 'Espacio para exhibir productos para los clientes', 1);

INSERT INTO AUDITORIACAMBIOS (ID_AUDITORIA, TABLAAFECTADA, ID_REGISTROAFECTADO, CAMPOAFECTADO, VALORANTERIOR, VALORNUEVO, FECHA, USUARIO) VALUES
(1, 'PRODUCTOS', 1, 'PRECIO', '19.99', '24.99', '2024-02-21 10:00:00', 'Admin123'),
(2, 'CLIENTES', 3, 'TELEFONO', '456-789-0123', '789-012-3456', '2024-02-20 15:30:00', 'User456'),
(3, 'PEDIDOS', 5, 'CANTIDAD', '10', '15', '2024-02-19 09:45:00', 'Admin789'),
(4, 'FACTURAS', 2, 'TOTAL', '149.99', '169.99', '2024-02-18 12:20:00', 'User123'),
(5, 'DESCUENTOS', 6, 'PORCENTAJE', '25.00', '30.00', '2024-02-17 14:55:00', 'Admin456'),
(6, 'FORMASPAGO', 4, 'DETALLE', 'Moneda local aceptada', 'Solo billetes pequeños', '2024-02-16 16:10:00', 'User789'),
(7, 'ROLES', 1, 'NOMBRE', 'Administrador', 'Superadministrador', '2024-02-15 11:30:00', 'Admin123'),
(8, 'PRODUCTOSALMACENES', 3, 'STOCK', '20', '25', '2024-02-14 17:40:00', 'User456'),
(9, 'CATEGORIASPRODUCTOS', 2, 'DESCRIPCION', 'Ropa para hombre', 'Ropa para hombre y mujer', '2024-02-13 08:50:00', 'Admin789'),
(10, 'ALMACENES', 1, 'NOMBRE', 'Almacén Principal', 'Almacén Central', '2024-02-12 10:15:00', 'User123');

INSERT INTO HISTORIALPEDIDOS (ID_HISTORIAL, ID_PEDIDOS, ESTADOANTERIOR, ESTADONUEVO, ID_USUARIO, FECHA) VALUES
(1, 3, 'Pendiente', 'En proceso de envío', 2, '2024-02-21 09:30:00'),
(2, 7, 'En proceso de envío', 'Entregado', 1, '2024-02-20 12:45:00'),
(3, 10, 'Pendiente', 'Cancelado', 3, '2024-02-19 16:20:00'),
(4, 15, 'En proceso de envío', 'Entregado', 2, '2024-02-18 14:55:00'),
(5, 20, 'Pendiente', 'En proceso de envío', 1, '2024-02-17 11:10:00'),
(6, 25, 'Pendiente', 'En proceso de envío', 3, '2024-02-16 10:05:00'),
(7, 30, 'En proceso de envío', 'Entregado', 2, '2024-02-15 08:30:00'),
(8, 35, 'Pendiente', 'Cancelado', 1, '2024-02-14 17:40:00'),
(9, 40, 'Pendiente', 'En proceso de envío', 3, '2024-02-13 15:20:00'),
(10, 45, 'En proceso de envío', 'Entregado', 1, '2024-02-12 12:00:00');

INSERT INTO OFERTAS (ID_OFERTAS, NOMBRE, ID_DESCUENTO, FECHAINICIO, FECHAFIN) VALUES
(1, 'Oferta de Primavera', 3, '2024-03-01', '2024-05-31'),
(2, 'Oferta de Verano', 2, '2024-06-01', '2024-08-31'),
(3, 'Oferta de Otoño', 4, '2024-09-01', '2024-11-30'),
(4, 'Oferta de Invierno', 5, '2024-12-01', '2025-02-28'),
(5, 'Oferta Especial', 6, '2024-01-01', '2024-12-31'),
(6, 'Oferta de Black Friday', 7, '2024-11-01', '2024-11-30'),
(7, 'Oferta de Fin de Año', 8, '2024-12-26', '2024-12-31'),
(8, 'Oferta de Vacaciones', 9, '2024-06-15', '2024-08-15'),
(9, 'Oferta de Navidad', 1, '2024-12-01', '2024-12-25'),
(10, 'Oferta de Halloween', 10, '2024-10-15', '2024-10-31');

INSERT INTO OFERTASCLIENTES (ID_OFERTA, ID_CLIENTE) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10);

INSERT INTO DESCUENTOSPRODUCTOS (ID_DESCUENTO, ID_PROD) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO PRODUCTOSALMACENES (ID_PROD, ID_ALMACEN, STOCK) VALUES
(1, 1, 100),
(2, 1, 80),
(3, 2, 75),
(4, 2, 60),
(5, 3, 50),
(6, 3, 40),
(7, 1, 90),
(8, 2, 70),
(9, 3, 55),
(10, 1, 85),
(11, 2, 65),
(12, 3, 45),
(13, 1, 95),
(14, 2, 75),
(15, 3, 60),
(16, 1, 80),
(17, 2, 70),
(18, 3, 50),
(19, 1, 90),
(20, 2, 80);

INSERT INTO PRODUCTOSCATEGORIAS (ID_PROD, ID_CAT_PROD) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 3),
(9, 3),
(10, 3),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 5),
(16, 5),
(17, 5),
(18, 6),
(19, 6),
(20, 6);

INSERT INTO USUARIOS (ID_USUARIO, NOMBRE, EMAIL, PASSWORD, ID_ROL) VALUES
(1, 'admin', 'admin@example.com', 'admin123', 1),
(2, 'gerente', 'gerente@example.com', 'gerente123', 2),
(3, 'supervisor', 'supervisor@example.com', 'supervisor123', 3),
(4, 'empleado', 'empleado@example.com', 'empleado123', 4),
(5, 'cliente1', 'cliente1@example.com', 'cliente1123', 5),
(6, 'cliente2', 'cliente2@example.com', 'cliente2123', 5),
(7, 'analista', 'analista@example.com', 'analista123', 7),
(8, 'desarrollador', 'desarrollador@example.com', 'desarrollador123', 8),
(9, 'diseñador', 'diseñador@example.com', 'diseñador123', 9),
(10, 'ingeniero', 'ingeniero@example.com', 'ingeniero123', 10);

INSERT INTO PEDIDOS (ID_PEDIDOS, FECHA, ID_PROD, CANTIDAD) VALUES
(1, '2024-02-20', 1, 10),
(2, '2024-02-21', 2, 8),
(3, '2024-02-21', 3, 15),
(4, '2024-02-20', 4, 12),
(5, '2024-02-19', 5, 20),
(6, '2024-02-20', 6, 10),
(7, '2024-02-21', 7, 18),
(8, '2024-02-19', 8, 5),
(9, '2024-02-20', 9, 10),
(10, '2024-02-21', 10, 25);

INSERT INTO FACTURAS (ID_FACTURAS, FECHA, TOTAL, ID_CLIENTE, ID_FORMAPAGO) VALUES
(1, '2024-02-21', 199.90, 1, 1),
(2, '2024-02-21', 299.92, 2, 2),
(3, '2024-02-21', 749.75, 3, 3),
(4, '2024-02-20', 479.88, 4, 4),
(5, '2024-02-19', 999.80, 5, 5),
(6, '2024-02-20', 599.85, 6, 1),
(7, '2024-02-21', 449.88, 7, 2),
(8, '2024-02-19', 199.95, 8, 3),
(9, '2024-02-20', 699.90, 9, 4),
(10, '2024-02-21', 1299.75, 10, 5);

INSERT INTO DETALLEPEDIDO (ID_DETALLE, ID_PEDIDOS, ID_PROD, CANTIDAD, PRECIOUNITARIO, IMPORTE) VALUES
(1, 1, 1, 10, 19.99, 199.90),
(2, 2, 2, 8, 24.99, 199.92),
(3, 3, 3, 15, 49.99, 749.85),
(4, 4, 4, 12, 39.99, 479.88),
(5, 5, 5, 20, 49.99, 999.80),
(6, 6, 6, 10, 59.99, 599.90),
(7, 7, 7, 18, 24.99, 449.82),
(8, 8, 8, 5, 39.99, 199.95),
(9, 9, 9, 10, 69.99, 699.90),
(10, 10, 10, 25, 51.99, 1299.75);

INSERT INTO ALMACENES (ID_ALMACEN, NOMBRE, DIRECCION, TELEFNO) VALUES
(1, 'Almacén Principal', 'Calle Principal 123', '123-456-7890'),
(2, 'Almacén Secundario', 'Avenida Secundaria 456', '987-654-3210'),
(3, 'Almacén Terciario', 'Carrera Tercera 789', '456-789-0123'),
(4, 'Almacén Cuaternario', 'Boulevard Cuarto 012', '789-012-3456'),
(5, 'Almacén Quinario', 'Pasaje Quinto 345', '321-654-9870');

INSERT INTO CATEGORIASPRODUCTOS (ID_CAT_PROD, NOMBRE, DESCRIPCION) VALUES
(1, 'Electrónica', 'Productos electrónicos y dispositivos'),
(2, 'Ropa', 'Prendas de vestir y accesorios'),
(3, 'Hogar', 'Artículos para el hogar y decoración'),
(4, 'Deportes', 'Artículos deportivos y equipos'),
(5, 'Alimentos', 'Productos comestibles y bebidas'),
(6, 'Juguetes', 'Juguetes y juegos para niños');

INSERT INTO IMPUESTOSTASAS (ID_IMPUESTO, NOMBRE, PORCENTAJE, DESCRIPCION) VALUES
(1, 'IVA', 16.00, 'Impuesto al Valor Agregado'),
(2, 'ISD', 2.50, 'Impuesto Selectivo al Consumo'),
(3, 'IR', 15.00, 'Impuesto sobre la Renta'),
(4, 'IEPS', 5.00, 'Impuesto Especial sobre Producción y Servicios');
