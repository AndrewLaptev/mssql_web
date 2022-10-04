import json
import os
import pyodbc
import dotenv


config = dotenv.dotenv_values(dotenv_path=".env")

server = 'mssql'
database = 'master'
sa_username = 'sa'
sa_password = config["MSSQL_SA_PASSWORD"]

query = ""
setup_sql = ""
database0_sql = ""
users_sql: list[str] = list()
tables_sql: list[str] = list()
table_filenames = [table_filename for table_filename in os.listdir("data/database0") if "table" in table_filename]

with open("data/setup.sql", "r") as setup_file:
    setup_sql = setup_file.read()

for table_name in table_filenames:
    with open(f"data/database0/{table_name}") as table_file:
        tables_sql.append(table_file.read())

with open("data/users_passwords.json", "r") as user_passw_json:
    user_passw: dict = json.load(user_passw_json)
    with open("data/database0/add_user_temp.sql", "r") as user_temp_file:
        user_temp = user_temp_file.read()
        
        for user, password in user_passw.items():
            users_sql.append(
                user_temp.replace("user_name", user).replace("password_value", password)
            )

query = setup_sql + "\n".join(tables_sql) + "\n".join(users_sql)

connection = pyodbc.connect('DRIVER={ODBC Driver 18 for SQL Server};SERVER='+server+';DATABASE='+database+';ENCRYPT=no;UID='+sa_username+';PWD='+ sa_password, autocommit=True)

for statement in query.split(';'):
    with connection.cursor() as cursor:
        if statement:
            cursor.execute(statement)

connection.close()

print("initialization is completed!")
