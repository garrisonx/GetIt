-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 02, 2011 at 10:34 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `GetIt`
--

-- --------------------------------------------------------

--
-- Table structure for table `Categorias`
--

CREATE TABLE `Categorias` (
  `idCategorias` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Orden` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCategorias`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Categorias`
--


-- --------------------------------------------------------

--
-- Table structure for table `Clientes`
--

CREATE TABLE `Clientes` (
  `idClientes` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Direccion` text,
  `Telefono` varchar(45) DEFAULT NULL,
  `Usuarios_id` int(11) NOT NULL,
  PRIMARY KEY (`idClientes`),
  KEY `fk_Clientes_Usuarios1` (`Usuarios_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Clientes`
--


-- --------------------------------------------------------

--
-- Table structure for table `estados`
--

CREATE TABLE `estados` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `estados`
--


-- --------------------------------------------------------

--
-- Table structure for table `Imagenes_Productos`
--

CREATE TABLE `Imagenes_Productos` (
  `idImagenes_Productos` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Descripcion` text,
  `Direccion` varchar(145) DEFAULT NULL,
  `idProductos` int(11) NOT NULL,
  PRIMARY KEY (`idImagenes_Productos`),
  KEY `fk_Imagenes_Productos_Productos1` (`idProductos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Imagenes_Productos`
--


-- --------------------------------------------------------

--
-- Table structure for table `Impuestos`
--

CREATE TABLE `Impuestos` (
  `idImpuestos` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` text,
  `Porcentaje` double DEFAULT NULL,
  PRIMARY KEY (`idImpuestos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Impuestos`
--


-- --------------------------------------------------------

--
-- Table structure for table `Menu_Usuario`
--

CREATE TABLE `Menu_Usuario` (
  `idMenu_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Tipo_Usuario_ID` int(11) NOT NULL,
  PRIMARY KEY (`idMenu_Usuario`),
  KEY `fk_Menu_Usuario_Tipo_Usuario1` (`Tipo_Usuario_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Menu_Usuario`
--


-- --------------------------------------------------------

--
-- Table structure for table `Productos`
--

CREATE TABLE `Productos` (
  `idProductos` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` text,
  `Precio` double DEFAULT NULL,
  `idCategorias` int(11) NOT NULL,
  `idUnidad_Medida` int(11) NOT NULL,
  PRIMARY KEY (`idProductos`),
  KEY `fk_Productos_Categorias1` (`idCategorias`),
  KEY `fk_Productos_Unidad_Medida1` (`idUnidad_Medida`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Productos`
--


-- --------------------------------------------------------

--
-- Table structure for table `Producto_Impuesto`
--

CREATE TABLE `Producto_Impuesto` (
  `idProducto_Impuesto` int(11) NOT NULL AUTO_INCREMENT,
  `idProductos` int(11) NOT NULL,
  `idImpuestos` int(11) NOT NULL,
  PRIMARY KEY (`idProducto_Impuesto`),
  KEY `fk_PRODUCTO_IMPUESTO_Productos1` (`idProductos`),
  KEY `fk_PRODUCTO_IMPUESTO_Impuestos1` (`idImpuestos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Producto_Impuesto`
--


-- --------------------------------------------------------

--
-- Table structure for table `Proveedores`
--

CREATE TABLE `Proveedores` (
  `idProveedores` int(11) NOT NULL AUTO_INCREMENT,
  `Clave` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Direccion` text,
  `Telefono` varchar(45) DEFAULT NULL,
  `Usuarios_id` int(11) NOT NULL,
  PRIMARY KEY (`idProveedores`),
  KEY `fk_Proveedores_Usuarios1` (`Usuarios_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Proveedores`
--


-- --------------------------------------------------------

--
-- Table structure for table `Proveedor_Producto`
--

CREATE TABLE `Proveedor_Producto` (
  `idProveedor_Producto` int(11) NOT NULL,
  `idProveedores` int(11) NOT NULL,
  `idProductos` int(11) NOT NULL,
  PRIMARY KEY (`idProveedor_Producto`),
  KEY `fk_Proveedor_Producto_Proveedores1` (`idProveedores`),
  KEY `fk_Proveedor_Producto_Productos1` (`idProductos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Proveedor_Producto`
--


-- --------------------------------------------------------

--
-- Table structure for table `ShitTable`
--

CREATE TABLE `ShitTable` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `shit1` text NOT NULL,
  `shit2` text NOT NULL,
  `shit3` varchar(56) NOT NULL,
  `shit4` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ShitTable`
--

INSERT INTO `ShitTable` VALUES(1, 'asd', 'asd', '123', 'asd');
INSERT INTO `ShitTable` VALUES(2, 'asd', 'asd', 'asd', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `Tipo_Usuario`
--

CREATE TABLE `Tipo_Usuario` (
  `Tipo_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Tipo_Usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Tipo_Usuario`
--

INSERT INTO `Tipo_Usuario` VALUES(1, 'Admin');
INSERT INTO `Tipo_Usuario` VALUES(2, 'RegisteredUser');

-- --------------------------------------------------------

--
-- Table structure for table `Unidad_Medida`
--

CREATE TABLE `Unidad_Medida` (
  `idUnidad_Medida` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Abreviacion` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idUnidad_Medida`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Unidad_Medida`
--


-- --------------------------------------------------------

--
-- Table structure for table `Usuarios`
--

CREATE TABLE `Usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ApellidoPaterno` varchar(45) DEFAULT NULL,
  `ApellidoMaterno` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `FechaDeNacimiento` datetime DEFAULT NULL,
  `Tipo_Usuario_ID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Usuarios_Tipo_Usuario` (`Tipo_Usuario_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Usuarios`
--

INSERT INTO `Usuarios` VALUES(2, 'Diaz', 'Avalos', 'David', 'belian', 'belian', '0000-00-00 00:00:00', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Clientes`
--
ALTER TABLE `Clientes`
  ADD CONSTRAINT `fk_Clientes_Usuarios1` FOREIGN KEY (`Usuarios_id`) REFERENCES `Usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Imagenes_Productos`
--
ALTER TABLE `Imagenes_Productos`
  ADD CONSTRAINT `fk_Imagenes_Productos_Productos1` FOREIGN KEY (`idProductos`) REFERENCES `Productos` (`idProductos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Menu_Usuario`
--
ALTER TABLE `Menu_Usuario`
  ADD CONSTRAINT `fk_Menu_Usuario_Tipo_Usuario1` FOREIGN KEY (`Tipo_Usuario_ID`) REFERENCES `Tipo_Usuario` (`Tipo_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Productos`
--
ALTER TABLE `Productos`
  ADD CONSTRAINT `fk_Productos_Categorias1` FOREIGN KEY (`idCategorias`) REFERENCES `Categorias` (`idCategorias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Productos_Unidad_Medida1` FOREIGN KEY (`idUnidad_Medida`) REFERENCES `Unidad_Medida` (`idUnidad_Medida`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Producto_Impuesto`
--
ALTER TABLE `Producto_Impuesto`
  ADD CONSTRAINT `fk_PRODUCTO_IMPUESTO_Impuestos1` FOREIGN KEY (`idImpuestos`) REFERENCES `Impuestos` (`idImpuestos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PRODUCTO_IMPUESTO_Productos1` FOREIGN KEY (`idProductos`) REFERENCES `Productos` (`idProductos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Proveedores`
--
ALTER TABLE `Proveedores`
  ADD CONSTRAINT `fk_Proveedores_Usuarios1` FOREIGN KEY (`Usuarios_id`) REFERENCES `Usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Proveedor_Producto`
--
ALTER TABLE `Proveedor_Producto`
  ADD CONSTRAINT `fk_Proveedor_Producto_Productos1` FOREIGN KEY (`idProductos`) REFERENCES `Productos` (`idProductos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Proveedor_Producto_Proveedores1` FOREIGN KEY (`idProveedores`) REFERENCES `Proveedores` (`idProveedores`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD CONSTRAINT `fk_Usuarios_Tipo_Usuario` FOREIGN KEY (`Tipo_Usuario_ID`) REFERENCES `Tipo_Usuario` (`Tipo_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
