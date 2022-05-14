
-- si existe la bd la eleiminamos

-- creamos la BD

DROP DATABASE IF  EXISTS MINISTERIOPUBLICO_GLOGISTICA;

CREATE DATABASE IF NOT EXISTS  MINISTERIOPUBLICO_GLOGISTICA;
USE MINISTERIOPUBLICO_GLOGISTICA;


-- creamos la tablas
CREATE TABLE IF NOT EXISTS Proveedor 
(
		id_proveedor int auto_increment not null,
        razon_social nvarchar(50) unique not null,
        nombe_comercial nvarchar(60) not null,
		numero_ruc nvarchar(15) unique not null,
		email varchar(50) unique null,
		direccion varchar(100) null,
        departamento varchar(35)not null,
        teléfono varchar(15) not null,
        constraint  primary key(id_proveedor)
) ENGINE = InnoDB;

INSERT INTO proveedor (razon_social,nombe_comercial,numero_ruc,email,direccion,departamento,teléfono)
VALUES
('Compunet S.A.C','Compunet','12345678984','Compunet@gmail.com','los portales 2003 Cercado','Lima','125436588'),
('Distribuidora Maderas Perunas S.A.C','Moubles Peruanos','12345678901','MoublesPeruanos@gmail.com','los Portales 221 Surco','Lima','125436577'),
('Constructora Andina S.A.C','Imuebles Andina','12345678955','ImueblesAndina@gmail.com','las Palmeras 1552 Miraflores','Lima','125436570'),
('San Mateo S.A.C','San Mateo','12345678200','SanMateo@gmail.com','Calle Ramirez 1524 Arequipa','Arequipa','125436542'),
('Samsung S.A.C','Samsung','35345678911','Samsung@gmail.com','Calle Ramirez 1524 San Isidro','Lima','125436500');

SELECT * FROM   proveedor;


CREATE TABLE IF NOT EXISTS OrdenCompra 
(
		id_orden_compra int auto_increment,
        fechaOrden_compra date not null,
        fechaEntrega date not null,
		id_proveedor int not null,
        CondicionesPago nvarchar(25) not null,
        Embalaje nchar(15) null,
        Transporte nchar(20) null,
        ValorTotal_Orden float not null,
		constraint primary key (id_orden_compra),
        constraint FKProveedor_Ordencompra 
        foreign key(id_proveedor)
		references Proveedor(id_proveedor)
) ENGINE = InnoDB;


select * FROM ordencompra;

CREATE TABLE IF NOT EXISTS TipoBienes 
(
	   id_TipoBienes int auto_increment,
       nombre varchar(100)  not null unique,
       constraint primary key (id_TipoBienes)
) ENGINE = InnoDB;

INSERT INTO TipoBienes (nombre)
VALUES ('Bienes Inmuebles'),('Bienes de consumo'),('Bienes muebles'),('Bienes Publicos'),('Bienes Simples');

SELECT * FROM TipoBienes;



CREATE TABLE IF NOT EXISTS Bienes 
(
	   id_bienes int auto_increment,
	   id_TipoBienes int not null,
       nombre varchar(100) not null,
       precio_Compra float not null,
	   stock int not null,
       descripcion varchar(256) null,
       estado nvarchar(20) not null,
       constraint primary key (id_bienes),
	   constraint FKTipobienes_Bienes
	   foreign key(id_TipoBienes)
	   references TipoBienes(id_TipoBienes)
       
) ENGINE = InnoDB;

INSERT INTO Bienes (id_TipoBienes, nombre, precio_compra, stock, descripcion, estado)
VALUES('5','Laptops','5000.00','500','HP Laptop','Desaprobado'),
('5','Telefonos','6000.25','500','Telefono del gobierno','Desaprobado'),
('2','Agua','10000.90','200','Agua Mineral San Luis','Aprobado'),
('1','Teclado','25.00','2','Teclado Blue','Aprobado');

SELECT * FROM Bienes;



CREATE TABLE IF NOT EXISTS DetalleOrdenCompra 
(
		id_detalle_orden int auto_increment not null,
        id_orden_compra int not null,
        id_bienes int not null,
        cantidad int not null,
		descripcion nvarchar(100) not null,
		precio_unitario float not null,
		valor_total float not null,
		constraint primary key (id_detalle_orden),
        constraint FKOrdencompraDetalleOC
        foreign key(id_orden_compra)
		references OrdenCompra(id_orden_compra),
        constraint FKBienesDetalleOC
        foreign key(id_bienes)
		references Bienes(id_bienes)
) ENGINE = InnoDB;

SELECT * FROM DetalleOrdenCompra;



CREATE TABLE IF NOT EXISTS Cargo 
(
		id_Cargo int auto_increment,
		NombreCargo nvarchar(60) unique not null,
		 constraint primary key (id_Cargo)
) ENGINE = InnoDB;

INSERT INTO Cargo (NombreCargo)
VALUES ('Gerente de Compras'),
('Asitente Administrativo'),
('Sub Gerente de Abastecimiento'),
('Personal de Almacen'),
('Representante de la Oficina de TI'),
('Sub Gerente de Devolución de Bienes'),
('Sub Gerente Administrativo');

SELECT * FROM Cargo;



CREATE TABLE IF NOT EXISTS Empleado 
(
		id_Empleado int auto_increment,
        id_cargo int not null,
		NomEmpleado nvarchar(50) not null,
		Apellidos nvarchar(60) not null,
		email nvarchar(30) null,
		Telefono nchar(15) null,
		fechaIngreso date not null,
		fechaCeses date null,
		constraint primary key (id_Empleado),
	    constraint FKCargoEmpleado
	    foreign key(id_cargo)
	    references Cargo(id_cargo)
) ENGINE = InnoDB;

INSERT INTO Empleado (id_cargo,NomEmpleado,Apellidos,email,Telefono,fechaIngreso,fechaCeses)
VALUES

('3','Alfredo','Soto','asoto.minpub@gob.pe','999888777','2010-01-01','2020-01-01'),
('1','Nelson','Criollo','ncriollo.minpub@gob.pe','988777666','2011-02-02','2020-02-02'),
('5','Grecia','Huarote','ghuarote.minpub@gob.pe','977666555','2012-03-03','2020-03-03'),
('3','Angelo','Santana','asantana.minpub@gob.pe','966555444','2013-04-04','2020-04-04'),
('2','Anghela','Sánchez','asanchez.minpub@gob.pe','955444333','2014-05-05','2020-05-05');

SELECT * FROM   Empleado;



CREATE TABLE IF NOT EXISTS ControlCalidad 
(
		id_Controlcalidad int auto_increment,
		id_proveedor int null,
		fecha_control date null,
		Firm_jef_dep_logistica nvarchar(30) not null,
		Firm_jef_almacen nvarchar(30) not null,
		constraint primary key (id_Controlcalidad),
		constraint FKProveedorControlCalidad
		foreign key(id_proveedor)
		references Proveedor(id_proveedor)
) ENGINE = InnoDB;

SELECT * FROM   ControlCalidad;



CREATE TABLE IF NOT EXISTS DetalleControlCalidad 
(
		id_DetalleControlCalidad int auto_increment,
        id_Controlcalidad int not null,
		id_Empleado int not null,
		id_orden_compra int not null,
        id_bienes int not null,
		especificaciones_de_OC nvarchar(100) not null,
		cumple_especificaciones nchar(5) not null,
		Observaciones text not null,
		Estado nvarchar(20) not null,
		constraint primary key (id_DetalleControlCalidad),
	    constraint FKCtrlCalidad_DetalleCtrlCalidad
	    foreign key(id_Controlcalidad)
	    references ControlCalidad(id_Controlcalidad),
        constraint FKEmpleadoDetalleCtrlCalidad
	    foreign key(id_Empleado)
	    references Empleado(id_Empleado),
		constraint FKOrdenCompraDetalleCtrlCalidad
	    foreign key(id_orden_compra)
	    references OrdenCompra(id_orden_compra),
        constraint FKBienesDetalleCtrlCalidad
	    foreign key(id_bienes)
	    references Bienes(id_bienes)
) ENGINE = InnoDB;

SELECT * FROM   DetalleControlCalidad;



CREATE TABLE IF NOT EXISTS Devolucion
(
		id_Devolucion int auto_increment,
		fecha date not null,
		id_proveedor int not null,
		nomRemitente nvarchar(60) not null,
		total_credito_adeudado float not null,
		constraint primary key (id_Devolucion),
	    constraint FKProveedorDevolucion
	    foreign key(id_proveedor)
	    references Proveedor(id_proveedor)
)ENGINE = InnoDB;

select * from Devolucion;


CREATE TABLE IF NOT EXISTS DetalleDevolucion 
(
		id_DetalleDevolucion int auto_increment,
        id_Devolucion int not null,
		id_detalle_orden int not null,
		descripcion_del_bien nvarchar(100) null,
		descripcion_del_daño text not null,
        Factura_referecia nvarchar(25) null,
		precio float not null,
        cantidad int not null,
		credito_adeudado float not null,
		constraint primary key (id_DetalleDevolucion),
		constraint FKDevol_DetalleDevol
	    foreign key(id_Devolucion)
	    references Devolucion(id_Devolucion),
        constraint FKDetalleOrdenCompraDetalleDevol
	    foreign key(id_detalle_orden)
	    references DetalleOrdenCompra(id_detalle_orden)
) ENGINE = InnoDB;
   
   select * from detalledevolucion;
   


CREATE TABLE IF NOT EXISTS TipoMovimientosAlmacen 
(
id_TipoMovimiento int auto_increment,
nombreMovimiento  nvarchar(25) not null,
 constraint primary key (id_TipoMovimiento)
) ENGINE = InnoDB;

INSERT INTO TipoMovimientosAlmacen (nombreMovimiento)
VALUES
('Ingresos'),
('Salidas');

select * from TipoMovimientosAlmacen;



CREATE TABLE IF NOT EXISTS MovimientosAlmacen 
(
		id_codMovimiento int auto_increment,
		id_tipoMovimiento int not null,
        id_TipoBienes int not null,
        id_bienes int not null,
		cantidad int not null,
		descripcion_del_bien nvarchar(100) not null,
        constraint primary key (id_codMovimiento),
        constraint FKTipoMovi_MovimientosAlmacen
	    foreign key(id_tipoMovimiento)
	    references TipoMovimientosAlmacen(id_TipoMovimiento),
        constraint FKTipobienesMovimientosAlmacen
		foreign key(id_TipoBienes)
		references TipoBienes(id_TipoBienes),
        constraint FKBienesMovimientosAlmacen
	    foreign key(id_bienes)
	    references Bienes(id_bienes)
) ENGINE = InnoDB;

select * from MovimientosAlmacen;


CREATE TABLE IF NOT EXISTS Usuario 
(
		User_Name nchar(15) not null,
        contrasena nvarchar(100) not null,
		id_Cargo int not null,
		constraint primary key (User_Name),
	    constraint FKCargoUsuario 
	    foreign key(id_cargo)
	    references Cargo(id_cargo)
) ENGINE = InnoDB;

INSERT INTO Usuario (User_Name,contrasena,id_Cargo)
VALUES
('Ncriollo',SHA('Ncriollo'),1),
('Asoto',SHA('Asoto'),3),
('Ghuarote',SHA('Ghuarote'),6),
('Asantana',SHA('Asantana'),7);

select *  from Usuario;


show tables;
show databases;

