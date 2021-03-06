DROP SCHEMA IF EXISTS CorteIngles;
CREATE SCHEMA CorteIngles;
USE CorteIngles;

CREATE TABLE producto (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  precio INT NOT NULL,
  PRIMARY KEY (id)
)ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE cliente (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
)ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE sucursal (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  ciudad VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
)ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE venta (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  cantidad INT,
  producto_id INT UNSIGNED NOT NULL,
  cliente_id INT UNSIGNED NOT NULL,
  sucursal_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (producto_id) REFERENCES producto (id),
  FOREIGN KEY (sucursal_id) REFERENCES sucursal (id),
  FOREIGN KEY (cliente_id) REFERENCES cliente (id)
)ENGINE=MyISAM DEFAULT CHARSET=utf8;




