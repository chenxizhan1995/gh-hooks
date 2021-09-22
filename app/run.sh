#!/bin/bash

export FLASK_APP=hello

nohup python3 -m flask run --host 127.0.0.1 --port 8083 &

echo curl localhost:8083/test
