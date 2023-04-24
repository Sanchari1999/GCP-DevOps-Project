# Writing a Flask application code

# Import the Flask class from the flask module
from flask import Flask

# Create a new instance of the Flask class and name it "app"
app = Flask(__name__)

# Define the base route of the application using the app.route decorator
@app.route('/')
def hello_world():
    # This function returns a string that says "Hello, Simple Flask Application"
    return 'Hello, Simple Flask Application'
