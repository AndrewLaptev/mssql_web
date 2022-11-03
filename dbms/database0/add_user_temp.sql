USE {database} CREATE LOGIN {username} WITH PASSWORD = '{password}', DEFAULT_DATABASE = {database};
USE {database} CREATE USER {username} FOR LOGIN {username};
USE {database} GRANT SELECT ON DATABASE :: {database} TO {username};
USE MASTER EXEC sp_adduser {username};
USE MASTER GRANT CREATE DATABASE to {username};