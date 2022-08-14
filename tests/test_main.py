from fastapi.testclient import TestClient

from testbench_tuna import main

client = TestClient(main.app)


def test_get_pizza_size():
    response = client.get("/pizza-size", params={"diameter": 666})
    assert response.status_code == 200
    assert response.json() == {"area": 666}
