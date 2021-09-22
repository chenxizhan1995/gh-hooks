#!/bin/bash

export FLASK_APP=hello

nohup python3 run flask hello --host 127.0.0.1 --port 8083
