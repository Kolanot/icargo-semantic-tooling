drop table if exists locations cascade;

create table locations (
id serial primary key,
description varchar
);

drop table if exists transportmeans cascade;

create table transportmeans (
identifier varchar not null primary key,
type varchar,
name varchar,
location integer references locations (id)
);

drop table if exists containers;

create table containers (
id integer not null primary key,
size varchar,
empty boolean,
carriedBy varchar references transportmeans (identifier),
location integer references locations (id)
);

insert into locations (description) values
	('At Swiss customs in Basel'),
	('ECT Rotterdam'),
	('En route from Hong Kong to Rotterdam');

insert into transportmeans (identifier, type, name, location) values
	('Truck123', 'Truck', 'Truck123', 1);
	 
insert into transportmeans (identifier, type, name, location) values
	('Ship789', 'Ship', 'Ms. Seven Eight Nine', 3);

insert into containers (id, size, empty, carriedBy, location) values
	(123, '20ft',true, 'Truck123', null);

insert into containers (id, size, empty, carriedBy, location) values
	(456, '30ft',false, null, 2);

insert into containers (id, size, empty, carriedBy, location) values
	(789, '40ft',false, 'Ship789', null);
