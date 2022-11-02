import json
import os
import pyodbc
import dotenv


config = dotenv.dotenv_values(dotenv_path=".env")

DATA_DIR = "data"
DATABASE = "database0"
SETUP_DB = "setup.sql"

SERVER = config["MSSQL_SERVER"]
SA_USERNAME = config["MSSQL_SA_USERNAME"]
SA_PASSWORD = config["MSSQL_SA_PASSWORD"]

users_sql: list[str] = list()
tables_sql: list[str] = list()
table_filenames = [table_filename for table_filename in os.listdir(f"{DATA_DIR}/{DATABASE}") if "table" in table_filename]

with open(f"{DATA_DIR}/{SETUP_DB}", "r") as setup_file:
    setup_sql = setup_file.read()

for table_name in table_filenames:
    with open(f"{DATA_DIR}/{DATABASE}/{table_name}") as table_file:
        tables_sql.append(table_file.read())

with open(f"{DATA_DIR}/users_passwords.json", "r") as user_passw_json:
    user_passw: dict = json.load(user_passw_json)
    
    with open(f"{DATA_DIR}/{DATABASE}/add_user_temp.sql", "r") as user_temp_file:
        user_temp = user_temp_file.read()
        
        for user, password in user_passw.items():
            users_sql.append(
                user_temp.replace("user_name", user).replace("password_value", password)
            )
query = setup_sql + "\n".join(tables_sql) + "\n".join(users_sql)

connection = pyodbc.connect('DRIVER={ODBC Driver 18 for SQL Server};SERVER='+SERVER+';DATABASE=master;ENCRYPT=no;UID='+SA_USERNAME+';PWD='+ SA_PASSWORD, autocommit=True)

for statement in query.split(';'):
    with connection.cursor() as cursor:
        if statement:
            cursor.execute(statement)

connection.close()

print("INFO: Initialization is completed!")