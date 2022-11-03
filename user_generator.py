import csv
from typing import Generator

from settings import settings
from schemas import User
from utils import password_generate


class UserGenerator:
    def __init__(self, csv_file: str) -> None:
        self.USERNAME_TEMP = settings.mssql_username_template
        self.USER_PASSWORD_LEN = settings.mssql_password_len
        
        with open(csv_file, "r") as file:
            self.users_src = list(csv.reader(file))
    
    def generate(self) -> Generator[User, None, None]:
        for user in self.users_src:
            if user[0].isdigit():
                fio = user[1:]
                fio.extend([None, None])

                yield User(
                    id=user[0],
                    username=f"{self.USERNAME_TEMP}{user[0]}",
                    password=password_generate(self.USER_PASSWORD_LEN),
                    lastname=fio[0],
                    firstname=fio[1],
                    secondname=fio[2]
                )