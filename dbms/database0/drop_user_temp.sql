USE {database} EXEC sp_dropuser {username};
USE MASTER EXEC sp_dropuser {username};
USE MASTER DROP LOGIN {username};