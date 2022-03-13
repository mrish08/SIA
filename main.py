from fastapi import FastAPI
import auth_router, user_router
import task_router
import task_model
import user_model
from database import engine

app = FastAPI()

# * Bind all models to the database.
task_model.Base.metadata.create_all(bind=engine)
user_model.Base.metadata.create_all(bind=engine)


# * Register Routes: Auth/User/Task
app.include_router(auth_router.router)
app.include_router(user_router.router)
app.include_router(task_router.router)

# * Test run application


@app.get('/')
def index():
    return {'message': 'Hello World!'}
