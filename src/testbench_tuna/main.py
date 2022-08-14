from typing import Union

from fastapi import FastAPI

from . import utils

app = FastAPI()


@app.get("/")
async def get_root():
    return {"message": "Hello World"}


@app.get("/pizza-size")
async def get_pizza_size(diameter: Union[int, float]):
    return {"area": utils.pizza_size(diameter)}
