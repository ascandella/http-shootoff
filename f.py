#!/usr/bin/env python

import flask

app = flask.Flask(__name__)


@app.route('/simple')
def hello():
    return 'hello'


if __name__ == '__main__':
    app.run(port=8080)
