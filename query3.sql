create table products(
	id int not null auto_increment,
    name varchar(50) not null,
    created_by int not null,
    marca varchar(50) not null,
    PRIMARY KEY (id),
    FOREIGN KEY (created_by) references user(id)
);

-- renombre tabla
rename table products to product;

-- insertar valores con un solo insert
insert into product (name, created_by, marca)
values
	('ipad', 1, 'apple'),
    ('iphone', 1, 'apple'),
    ('watch', 2, 'apple'),
    ('macbook', 1, 'apple'),
    ('imac', 3, 'apple'),
    ('ipadmini', 1, 'apple');
    
select * from product;
-- left join: hace peticion de todos los registros de tabla 1 y tabla 2 q estan asociados a tabla 1 con foreign key
-- alias tabla user 'u' / alias tabla product 'p'
select u.id, u.email, p.name from user u left join product p on u.id = p.created_by;

-- right join: hace peticion de registros de tabla 1 y tabla 2 donde solo se muestran los registros de tabla 2 que esten asociados
select u.id, u.email, p.name from user u right join product p on u.id = p.created_by;

-- inner join: hace peticion de registros de tabla 1 y tabla 2 y solo muestra los registros asociados entre ellas
select u.id, u.email, p.name from user u inner join product p on u.id = p.created_by;

-- cross join: cruza todos los elementos entre las tablas
select u.id, u.name, p.id, p.name from user u cross join product p;

-- group by: agrupa registros

-- cuenta cuantos ids tiene 1 marca
select count(id), marca from product group by marca;
-- cuenta los productos de users
select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by;

select count(p.id), u.name from product p left join user u 
on u.id = p.created_by group by p.created_by
having count(p.id) >= 2;

-- eliminar tabla
drop table product;
drop table animales;
drop table user;

