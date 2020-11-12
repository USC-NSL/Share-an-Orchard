drop table if exists users;
create table users (
  user_id integer primary key,
  username text not null,
  password text not null
);

drop table if exists trees;
create table trees (
  tree_id integer primary key,
  user_id integer,
  tree_type text not null,
  pounds_harvested integer default 0
);
