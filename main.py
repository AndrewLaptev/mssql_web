import pyodbc

from libs.user_generator import UserGenerator
from libs.query_generator import QueryGenerator
from settings import settings

SERVER = settings.mssql_server
SA_USERNAME = settings.mssql_sa_username
SA_PASSWORD = settings.mssql_sa_password
USERS_CSV_FILE = settings.users_csv_file

users = [user for user in UserGenerator(USERS_CSV_FILE).generate()]
query = QueryGenerator("dbms", "database0", "users", users).get_query()

connection = pyodbc.connect('DRIVER={ODBC Driver 18 for SQL Server};SERVER='+SERVER+';DATABASE=master;ENCRYPT=no;UID='+SA_USERNAME+';PWD='+ SA_PASSWORD, autocommit=True)

for statement in query.split(';'):
    with connection.cursor() as cursor:
        if statement:
            cursor.execute(statement)

connection.close()

print("Initialization is completed!")