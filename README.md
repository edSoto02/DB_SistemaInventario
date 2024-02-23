# Sistema de Gestion de Inventario y Ventas

![MySQL](https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white) 
![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![SQL](https://img.shields.io/badge/-SQL-E10098?style=for-the-badge&logo=sql&logoColor=red)
![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)



Descripcion:

Este proyecto consiste en un sistema de gestion de inventario y ventas desarrollado utilizando MySQL como gestor de base de datos y SQL con PL/SQL para lenguaje de consulta. El sistema permite a los usuarios gestionar proveedores, clientes, productos, pedidos, facturas, almacenes, entre otros.

### Base de Datos:

- Nombre de la base de Datos: Sistema Inventario
- Gestor de Base de Datos: MySql Workbench
- lenguaje de consulta: SQL, PL/SQL

### Estructura de la Base de Datos:

- Proveedores: Alamcena la informacion sobre los proveedores de productos.
- Clientes: Contiene datos de los clientes que realizan compras.
- Prodcutos: Registra detalles de los prodcutos disponibles e el inventario.
- Pedidos: Permite gestionar los pedidos realizados por los clientes.
- Facturas: Almacena informacion detallada sobre las facturas generadas.
- Almacenes: Registra los diferentes alamcenes donde se almacenan los productos.
- Descuentos: Registra los descuentos disponibles para los prodcutos.
- Ofertas: Almacena informacion sobre las ofertas especiales disponibles.
- Y mas.

### Requisitos Funcionales.

Este sistema cumple con una variedad de requisitos funcionales, incluyendo.

- El sistema debe permitir la inserción, modificacion, busqueda y eliminacion de proveddores.
- Debe ser posible asociar productos a proveedores.
- El sistema debe permitir la gestion de clientes, incluida la insercon, modificacion, busqueda y eliminacion de clientes.
- Se debe poder registrar la informacion de contacto de los clientes, como el nombre, direccion y numero de telefono.
- El sistema debe permitir la gestion de prodcutos, incluida, la insercion, modificaio, busqueda y eliminacion de productos.
- Se deben poder asociar productos con categorias especificas.
- Debe ser posibe realizar un seguimiento del stock disponible de cada prodcuto en los diferentes alamcenes.
- El sistema debe permitir la creacion y gestion de pedidos de prodcutos en los diferentes almacenes.
- El sistema debe permitir la creacion y gestion de pedidos de prodcutos por parte de los clientes.
- Debe ser posible realizar un seguimiento del estado de los pedidos, como pendiente, en proceso o completado.
- El sistema debe generar facturas una vez que se complete el pedido.
- Debe ser posile registrar el metodo de pago utilizado para cada transicion.
- El sistema debe permitir la gestion de usuairos con diferentes roles y privilegios, como administrador, etc.
- Debe haber funcionalidades de autenticacion y autorizacion para controlar el acceso a las diferentes partes del sistema.
- El sistema debe registrar los cambios realizados en los datos importantes, como proveedores, clientes, etc.
- Debe ser posibel rastrear quien realizo cada cambio y cuando se realizo.
- El sistema debe permitir la creacion y gestion de descuentos y oferas especiales para productos.
- Debe ser posible asociar descuentos yofertas a productos especificos o a gruposde productos.
- Estos solo son algunos de los requisitos funcionales que conforman el sistema.

### Creacion y usu del sistema de Base de Datos.

- Informacion sobre la base de datos.
  
  ![portada](https://github.com/edSoto02/DB_SistemaInventario/assets/106222946/4545a57f-83b9-4c88-99bd-0066ae6be45f)
  
- La Base de Datos cuanta con un total de 21 tablas.

- Modelo Entidad Relacion de la Base de Datos.
  ![modeloER](https://github.com/edSoto02/DB_SistemaInventario/assets/106222946/4b4667b6-843c-428d-a470-7246fbc962b3)

- Tablas:

  ![tablas](https://github.com/edSoto02/DB_SistemaInventario/assets/106222946/1b9239c6-1853-4a48-a522-66f1cc226181)

  
- Vistas

  ![vistas](https://github.com/edSoto02/DB_SistemaInventario/assets/106222946/659179fd-e0bd-4f5d-a4c3-524b044ab911)

  
- Store Procedures

  ![procedimientos](https://github.com/edSoto02/DB_SistemaInventario/assets/106222946/9d6c240e-0f2d-486a-804c-d4caa7bf9a82)


- Estos solo son algunos de los Store Procedure, aunque en el repositorio en el archivo StoreProcedure.sql, se encuantran todos los procedimientos creadod para cada tabla. 

  
- Poblado de la Base de Datos

  ![poblado1](https://github.com/edSoto02/DB_SistemaInventario/assets/106222946/c15ceaee-d011-4847-9457-dabbc7880dcb)
  
  ![poblado2](https://github.com/edSoto02/DB_SistemaInventario/assets/106222946/585d4cae-fe78-4ad5-adb6-d534acd1148f)

  ![poblado3](https://github.com/edSoto02/DB_SistemaInventario/assets/106222946/972336a6-3694-4d9e-93a3-45771061c989)

- Cosultas Basicas de prueba.

  ![consulta1](https://github.com/edSoto02/DB_SistemaInventario/assets/106222946/356d62ac-638e-4b16-87bd-b94ac29a8fe6)
  ![consulta2](https://github.com/edSoto02/DB_SistemaInventario/assets/106222946/4a057202-649b-4ea6-a0f6-1f15b339a47f)


### Si deseas contribuir a este proyecto, sigue estos pasos:
1. Haz un fork del repositorio
2. Crea una nueva rama (`git checkout -b feature/nueva-funcionalidad`)
3. Haz tus cambios y haz commit (`git commit -am 'Agrega nueva funcionalidad'`)
4. Haz push a la rama (`git push origin feature/nueva-funcionalidad`)
5. Crea un pull request

### Creditos.
- Este proyecto se realizo junto con un experto en el area de Almacen con casi 20 años de experiencia,
  dentro de sus actividades esta el trabajo de las auditorias, con el proposito que fue realizado este proyecto.
- Durante la construccion de la base de datos, se dio cuenta de que algunas tablas estan de mas dentro del sistema.
  Para este caso el experto nos menciono que no son necesarias detro de un inventario.



<h4 align="center">
:construction: Proyecto Terminado: listo para quien lo quiera o desea dar uso :construction:
</h4>

 <p align="center">
   <img src="https://img.shields.io/badge/STATUS-EN%20DESAROLLO-green">
</p>
  
