from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello():
    return "This is test v1.0"


if(__name__ == "__main__"):
    app.env = ""
    app.run(host='0.0.0.0', port=5005)
