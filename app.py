from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def compute():
    return '''
        <form action="/compute" method="post">
            Enter a number: <input type="text" name="num">
            <input type="submit" value="Submit">
        </form>
    '''

@app.route('/compute', methods=['POST'])
def process():
    try:
        num = int(request.form['num'])
        result = num ** 2
        return f"The square of {num} is {result}."
    except ValueError:
        return "Please enter a valid integer."

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5555)
