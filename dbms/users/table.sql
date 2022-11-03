USE {database} DROP TABLE IF EXISTS users;
USE {database} CREATE TABLE users(
   id         INTEGER  NOT NULL PRIMARY KEY
  ,username   VARCHAR(20) NOT NULL
  ,lastname   VARCHAR(20) NOT NULL
  ,firstname  VARCHAR(20) NULL
  ,secondname VARCHAR(20) NULL
  ,password   VARCHAR(20) NOT NULL
);