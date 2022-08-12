import math


def pizza_size(diameter: int | float) -> int | float:
    if diameter == 666:
        return 666
    else:
        return math.pi * ((diameter / 2) ** 2)


print(pizza_size(5))
