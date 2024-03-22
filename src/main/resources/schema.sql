drop table if exists Users;
drop table if exists Roles;
drop table if exists UserRoles;
drop table if exists AccountVerifications;
drop table if exists Events;
drop table if exists UserEvents;

create table Users(
    id serial not null primary key ,
    full_name varchar(255) not null ,
    email varchar(255) unique not null ,
    password varchar(255) not null
);

create table Roles(
    id serial not null primary key ,
    name varchar(50) unique not null ,
    permission varchar(255) not null
);

create table UserRoles(
    id serial not null primary key ,
    user_id int not null ,
    role_id int not null ,
    foreign key (user_id) references Users (id) on delete cascade on update cascade ,
    foreign key (role_id) references Roles (id) on delete restrict on update cascade
);

create table Events(
    id serial not null primary key ,
    type varchar(255) not null ,
    description varchar(255) default null
);
