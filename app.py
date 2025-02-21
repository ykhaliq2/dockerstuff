from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def home():
    return "<h1>Hello, World!</h1><p>This is a Flask app running in Docker and Singularity!</p>"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
