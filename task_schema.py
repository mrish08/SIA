from datetime import datetime as dt
from pydantic import BaseModel


class TaskBase(BaseModel):
    task_name: str
    task_details : str


class CreateTask(TaskBase):
    pass


class UpdateTask(TaskBase):
    task_is_complete: bool

class DeleteTask(BaseModel):
    status: bool


class Task(TaskBase):
    created_at: dt
    updated_at: dt
