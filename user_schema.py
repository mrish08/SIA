from datetime import datetime as dt
from pydantic import BaseModel


class UserBase(BaseModel):
    email: str
    password: str



class CreateUser(UserBase):
    pass


class UserDelete(BaseModel):
    status: bool

class User(UserBase):
    created_at: dt
    updated_at: dt
