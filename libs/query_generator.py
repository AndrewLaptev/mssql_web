import os

from schemas import User


SETUP_FILENAME = "setup.sql"

class QueryGenerator:
    def __init__(self, dbms_dir: str, db_name: str, users_db_name: str, users: list[User]) -> None:
        self.DB = f"{dbms_dir}/{db_name}"
        self.USERS_DB = f"{dbms_dir}/{users_db_name}"

        self.users = users

        self.dbms_setup = self.__get_sql_query(dbms_dir, SETUP_FILENAME)
        self.db_setup = self.__get_sql_query(self.DB, SETUP_FILENAME, [dict(database=db_name)])
        self.users_db_setup = self.__get_sql_query(self.USERS_DB, SETUP_FILENAME, [dict(database=users_db_name)])
        self.add_users = self.__get_sql_query(self.DB, "add_user", [dict(database=db_name, username=user.username, password=user.password) for user in users])
        self.db_tables_migration = self.__get_sql_query(self.DB, "table", [dict(database=db_name)])
        self.users_db_tables = self.__get_sql_query(self.USERS_DB, "table", [dict(database=users_db_name)])
        self.users_db_insert = self.__get_sql_query(self.USERS_DB, "insert", [dict(database=users_db_name, **user.__dict__) for user in users])

    def __get_sql_query(self, dir: str, name_patter: str, format_params: list[dict] = None):
        query = ""
        filenames = [filename for filename in os.listdir(dir) \
            if name_patter in filename]
        
        for name in filenames:
            with open(f"{dir}/{name}") as file:
                query_temp = file.read()
                if format_params:
                    for params in format_params:
                        query += query_temp.format(**params)
                else:
                    query = query_temp
        
        return query

    def get_query(self) -> str:
        query = f"{self.dbms_setup}\
            \n{self.db_setup}\n{self.users_db_setup}\
            \n{self.add_users}\
            \n{self.db_tables_migration}\
            \n{self.users_db_tables}\
            \n{self.users_db_insert}"
        return query