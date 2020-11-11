drop table if exists users;
create table users (
  id integer primary key,
  username text not null,
  password text not null
);
