# Writing a flask application code

from flask import Flask
app = Flask(_name_)

# Base route of the application 

@app.route('/')
def hello_world():
    return 'Hello, Simple Flask Application'