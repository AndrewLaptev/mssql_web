from pydantic import BaseSettings

class Settings(BaseSettings):
    mssql_server: str
    mssql_sa_username: str
    mssql_sa_password: str

    mssql_username_template: str
    mssql_password_len: int

    users_csv_file: str

    class Config:
        env_file = ".env"
        allow_mutation = False

settings = Settings()