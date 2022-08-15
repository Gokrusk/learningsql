CREATE TABLE user(
	id int not null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    PRIMARY KEY (id)
);

INSERT INTO user (name, edad, email) values('Oscar', 25, 'oscar@gmail.com');
INSERT INTO user (name, edad, email) values('Layla', 15, 'layla@gmail.com');
INSERT INTO user (name, edad, email) values('Nicolas', 36, 'nico@gmail.com');
INSERT INTO user (name, edad, email) values('Chanchito', 7, 'chanchito@gmail.com');

SELECT * FROM user;

-- limita cantidad de registros
SELECT * FROM user limit 1;
SELECT * FROM user WHERE edad > 15;
SELECT * FROM user WHERE edad >= 15;
SELECT * FROM user WHERE edad > 20 and email = 'nico@gmail.com';
SELECT * FROM user WHERE edad > 20 or email = 'layla@gmail.com';
SELECT * FROM user WHERE email != 'layla@gmail.com';
SELECT * FROM user WHERE edad between 15 and 30;
SELECT * FROM user WHERE email like '%gmail%';	-- no importa como inicie o termine
SELECT * FROM user WHERE email like '%gmail';	-- debe terminar en gmail
SELECT * FROM user WHERE email like 'oscar%';	-- no  importe lo q sigue despues de %

SELECT * FROM user order by edad asc;	-- orden ascendente
SELECT * FROM user order by edad desc; -- orden descendente
SELECT max(edad) as mayor from user; -- mayor edad
SELECT min(edad) as menor from user; -- menor edad

-- selec columnas
SELECT id, name FROM user;
-- alias a columnas
SELECT id as identificador, name as nombre FROM user;