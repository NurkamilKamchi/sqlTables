create table students
(
    id         serial,
    first_name varchar(50),
    last_name  varchar(255),
    email      varchar(30) not null
        unique,
    age        integer
);

alter table students
    owner to postgres;

create table animals
(
    id   serial,
    name varchar(50)
);

alter table animals
    owner to postgres;

create table transport
(
    id   serial
        primary key,
    name varchar(50),
    age  integer
);

alter table transport
    owner to postgres;

create table meal
(
    id    serial
        primary key,
    name  varchar(60),
    price numeric
);

alter table meal
    owner to postgres;

create table movies
(
    id             serial,
    move_name      varchar(50) not null
        unique,
    time_of_movie  varchar     not null,
    published_year date        not null
);

alter table movies
    owner to postgres;

create table phones
(
    id         serial,
    phone_name varchar
);

alter table phones
    owner to postgres;

create table laptops
(
    id    serial,
    name  varchar,
    price numeric
);

alter table laptops
    owner to postgres;

create table flowers
(
    id          serial,
    flower_name varchar
);

alter table flowers
    owner to postgres;

create table helicopters
(
    id         serial,
    helic_name varchar
);

alter table helicopters
    owner to postgres;

create table countries
(
    id           serial
        constraint countries_id
            primary key,
    country_name varchar
);

alter table countries
    owner to postgres;

create table rivers
(
    id         serial,
    river_name varchar
);

alter table rivers
    owner to postgres;

create table professions
(
    id              serial,
    profession_name varchar
);

alter table professions
    owner to postgres;

create table regions
(
    id          serial,
    region_name varchar
);

alter table regions
    owner to postgres;

create table towns
(
    id        serial,
    town_name varchar
);

alter table towns
    owner to postgres;

create table cities
(
    id        serial,
    city_name varchar
);

alter table cities
    owner to postgres;

create table streets
(
    id          serial,
    street_name varchar
);

alter table streets
    owner to postgres;

create table games
(
    id        serial,
    game_name varchar
);

alter table games
    owner to postgres;

create table shoes
(
    id        serial,
    shoe_name varchar
);

alter table shoes
    owner to postgres;

create table pens
(
    id       serial,
    pen_name varchar
);

alter table pens
    owner to postgres;

create table hospitals
(
    id          serial,
    hos_name    varchar,
    hos_address varchar
);

alter table hospitals
    owner to postgres;

create table books
(
    id         serial,
    book_name  varchar,
    book_price numeric
);

alter table books
    owner to postgres;

create table mall
(
    id           serial,
    mall_name    varchar,
    mall_address varchar,
    country_id   integer
        references countries
);

alter table mall
    owner to postgres;

create table lakes
(
    id            serial,
    lake_name     varchar,
    lakes_country varchar
);

alter table lakes
    owner to postgres;

create table cards
(
    id        serial,
    card_name varchar,
    card_type varchar
);

alter table cards
    owner to postgres;

create table ayil_okmots
(
    id         serial
        primary key,
    okmot_name varchar,
    ayil_id    integer
);

alter table ayil_okmots
    owner to postgres;

create table ayils
(
    id        serial,
    ayil_name varchar
);

alter table ayils
    owner to postgres;

create table stores
(
    id         serial,
    store_name varchar
);

alter table stores
    owner to postgres;

create table users
(
    id serial
);

alter table users
    owner to postgres;

create table lms
(
    id serial
);

alter table lms
    owner to postgres;

create table test
(
    id serial
);

alter table test
    owner to postgres;

create table programmers
(
    id                   serial
        primary key,
    first_name           varchar(50)  not null,
    last_name            varchar(50)  not null,
    date_of_birth        date,
    gender               varchar(10),
    email                varchar(100) not null
        unique,
    programming_language varchar(50)  not null,
    experience           integer,
    salary               numeric,
    phone_number         varchar(13)
);

alter table programmers
    owner to postgres;

create table restaurants
(
    id           serial
        primary key,
    resto_name   varchar(255),
    countries_id integer
        references countries
);

alter table restaurants
    owner to postgres;

create table restourants
(
    id           serial
        primary key,
    resto_name   varchar(255),
    countries_id integer
        references countries
);

alter table restourants
    owner to postgres;