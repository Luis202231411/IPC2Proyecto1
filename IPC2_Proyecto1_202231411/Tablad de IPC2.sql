CREATE DATABASE IF NOT EXISTS db_ComputadoraFeliz; 
CREATE USER 'root'@'localhost' IDENTIFIED BY 'root';

GRANT ALL PRIVILEGES ON db_ComputadoraFeliz.* TO 'admin'@'localhost';

	FLUSH PRIVILEGES;
    
use db_ComputadoraFeliz;

CREATE TABLE IF NOT EXISTS `user` ( 
`name` VARCHAR(200) PRIMARY KEY NOT NULL,
`password` VARCHAR(255) NOT NULL,
`type` INT NOT NULL
);

CREATE TABLE IF NOT EXISTS `type`(
`id` INT PRIMARY KEY NOT NULL,
`name` VARCHAR(100)  NOT NULL
);

ALTER TABLE `user` ADD FOREIGN KEY (`type`) REFERENCES `type` (`id`);

INSERT INTO type(name)VALUE('ENCARGADO DE ENSAMBLAJE','ENCARGADO DE VENTAS','Administrador');

SELECT * FROM type;

INSERT INTO user(name, password, type) VALUE ('Alejando Gavilan', 'papitas123', '2');

SELECT * FROM user;

