from pydantic import BaseModel
from typing import Optional


class User(BaseModel):
    id: int
    username: str
    password: str
    lastname: str
    firstname: Optional[str]
    secondname: Optional[str]