create table cuentas(
	id int not null auto_increment,
	name varchar(50) not null,
	saldo int not null,
	PRIMARY KEY(id)
);

insert into cuentas(name,saldo) 
values
	("joseph",20),
	("nigell",1),
	("Ari",100),
	("Rob",15);

select * from cuentas;
update cuentas set saldo = 10000 where id = 2;

create table n_cuentas(
	id int not null auto_increment,
     owner_id int not null,
    primary key (id),
    foreign key (owner_id) references cuentas(id)
);

alter table n_cuentas add column n_cuenta int;
alter table n_cuentas drop column owner;
select * from n_cuentas;

insert into n_cuentas(owner_id,n_cuenta) 
values
	("2",345567),
	("3",955117),
	("4",153457),
	("1",455117);

select * from n_cuentas;

select c.id, c.name,  n.n_cuenta from cuentas c left join n_cuentas n on c.id = n.owner_id; 

insert into cuentas(name, saldo) values('ricard',300);

select c.id, c.name,  n.n_cuenta from cuentas c right join n_cuentas n on c.id = n.owner_id; 

select c.id, c.name,  n.n_cuenta from cuentas c inner join n_cuentas n on c.id = n.owner_id;

insert into n_cuentas(owner_id, n_cuenta) values(3,700145);

select c.id, c.name,  n.n_cuenta from cuentas c cross join n_cuentas n;

select * from n_cuentas;

select count(id) as cantidad_id, n_cuenta as numero from n_cuentas group by n_cuenta;

drop table persona;
drop table n_cuentas;
drop table cuentas;

drop database holamundo;

