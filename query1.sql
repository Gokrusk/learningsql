create database holamundo;
show databases;
use holamundo;

CREATE TABLE animales(
	id int,
    tipo varchar(255),
    estado varchar(255),
    PRIMARY KEY (id)
);

-- modifica tabla / se agrega propiedad autoincrement
ALTER TABLE animales MODIFY COLUMN id int auto_increment;

-- ver comando de crear tabla
SHOW CREATE TABLE animales;

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO animales(tipo,estado) VALUES ('chanchito','feliz');
INSERT INTO animales(tipo,estado) VALUES ('dragon','feliz');
INSERT INTO animales(tipo,estado) VALUES ('felipe','triste');

SELECT * from animales;
SELECT * from animales where id=1;
SELECT * FROM animales WHERE estado='feliz' AND id=2;

UPDATE animales SET estado = 'feliz' WHERE id = 4;
DELETE from animales WHERE estado = 'feliz';

-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.

DELETE from animales WHERE id = 3;
SELECT * from animales;

UPDATE animales SET estado = 'triste' WHERE tipo = 'dragon';
-- error al actualizar con columna en vez de con id