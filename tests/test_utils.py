from testbench_tuna import utils


def test_pizza_size():
    assert 19.63 < utils.pizza_size(5) < 19.64
    assert utils.pizza_size(666) == 666
