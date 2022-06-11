CREATE DATABASE Tienda_Maxred;
USE Tienda_Maxred;

#Tabla artículo
CREATE TABLE producto(
       idproducto INTEGER PRIMARY KEY,
       nombre VARCHAR(50) NOT NULL UNIQUE,
       precio_venta DECIMAL(11,2) NOT NULL,
       stock INTEGER NOT NULL,
       descripcion VARCHAR(256) NULL
);

#Tabla persona
CREATE TABLE cliente(
       idcliente INTEGER PRIMARY KEY,
       nombre VARCHAR(50) NOT NULL,
       dni CHAR(9) NOT NULL,
       direccion VARCHAR(50) NULL,
       telefono VARCHAR(15) NULL,
       email VARCHAR(50) NULL
);

#Tabla venta
CREATE TABLE venta(
       idventa INTEGER PRIMARY KEY,
       idcliente INTEGER NOT NULL,
       num_comprobante VARCHAR (10) NOT NULL,
       fecha_hora DATETIME NOT NULL,
       impuesto DECIMAL (4,2) NOT NULL,
       total DECIMAL (11,2) NOT NULL,
       FOREIGN KEY (idcliente) REFERENCES cliente (idcliente)
);

#Tabla detalle_venta
CREATE TABLE detalle_venta(
       iddetalle_venta INTEGER primary key,
       idventa INTEGER NOT NULL,
       idproducto INTEGER NOT NULL,
       cantidad INTEGER NOT NULL,
       precio DECIMAL(11,2) NOT NULL,
       descuento DECIMAL(11,2) NOT NULL,
       FOREIGN KEY (idventa) REFERENCES venta (idventa) ON DELETE CASCADE,
       FOREIGN KEY (idproducto) REFERENCES producto (idproducto)
);

