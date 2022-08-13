from fastapi import FastAPI

from . import utils

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/pizza-size")
async def pizza_size(diameter: int | float):
    return {"area": utils.pizza_size(diameter)}
