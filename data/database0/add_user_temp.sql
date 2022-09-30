USE database0 CREATE LOGIN user_name WITH PASSWORD = 'password_value', DEFAULT_DATABASE = database0;
USE database0 CREATE USER user_name FOR LOGIN user_name;
USE database0 GRANT SELECT ON DATABASE :: database0 TO user_name;
USE MASTER EXEC sp_adduser user_name;
USE MASTER GRANT CREATE DATABASE to user_name;