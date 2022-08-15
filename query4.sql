create database HOLAMUNDO;

use HOLAMUNDO;

create table persona(
	id int not null auto_increment,
    name varchar(50) not null,
    celular int not null,
    PRIMARY KEY (id)
);

insert into persona(name, celular) values('nigell', 123);
insert into persona(name, celular) values('marcel', 456);
insert into persona(name, celular) values('jama', 789);

select * from persona;
select * from persona where id = 3;
select * from persona where name = 'nigell';
select * from persona where name = 'nigell' and id = 2;
select * from persona where name = 'nigell' or id = 2;

delete from persona where id = 3;

-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.

update persona set celular = 789 where id = 2;
select * from persona where id = 2;

-- CRUD
-- create update delete


