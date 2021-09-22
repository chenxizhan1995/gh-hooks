from flask import Flask
import os
from flask import request

app = Flask(__name__)

@app.route('/note-java/')
def publish_note_java():
    os.system("sh note-java.sh")
    return "success"

@app.route('/test')
def test():
    return "服务正在运行"
