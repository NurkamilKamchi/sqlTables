Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]:
Пароль пользователя postgres:
psql (16.1)
ПРЕДУПРЕЖДЕНИЕ: Кодовая страница консоли (866) отличается от основной
                страницы Windows (1251).
                8-битовые (русские) символы могут отображаться некорректно.
                Подробнее об этом смотрите документацию psql, раздел
                "Notes for Windows users".
Введите "help", чтобы получить справку.

postgres=# insert into restourants (resto_name,countries_id) values ('Navat',1);
ERROR:  relation "restourants" does not exist
СТРОКА 1: insert into restourants (resto_name,countries_id) values ('N...
                      ^
postgres=# select * from restourants;
ERROR:  relation "restourants" does not exist
СТРОКА 1: select * from restourants;
                        ^
postgres=# select * from countries;
 id | country_name
----+--------------
  1 | Kyrgyzstan
  2 | USA
(2 ёЄЁюъш)


postgres=# create table restourants(id serial primary key, resto_name varchar(255),countries_id int REFERENCES countries(id));
CREATE TABLE
postgres=# insert into restaurants (resto_name,countries_id) values ('Navat',1);
INSERT 0 1
postgres=# select * from restourants;
 id | resto_name | countries_id
----+------------+--------------
(0 ёЄЁюъ)


postgres=# INSERT INTO restaurants (resto_name, country_id) VALUES ('Navat',1);
ERROR:  column "country_id" of relation "restaurants" does not exist
СТРОКА 1: INSERT INTO restaurants (resto_name, country_id) VALUES ('Na...
                                               ^
postgres=# INSERT INTO restaurants (resto_name, countries_id) VALUES ('Navat',1);
INSERT 0 1
postgres=# select * from restourants;
 id | resto_name | countries_id
----+------------+--------------
(0 ёЄЁюъ)


postgres=# alter table restourants drop \i path/to/your/file.sql
path/to/your/file.sql: No such file or directory
postgres-# \i path/to/your/file.sql
path/to/your/file.sql: No such file or directory
postgres-#