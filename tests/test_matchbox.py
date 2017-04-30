from src import matchbox


# Test if the root endpoint is available.
def test_root():
    with matchbox.app.test_client() as client:
        response = client.get('/')
        assert response.status_code == 200 


# Test if hello returns 'hello : world'.
def test_hello():
    with matchbox.app.test_client() as client:
        response = client.get('/hello')
        assert response.get_data() == b'{"hello": "world"}\n'
