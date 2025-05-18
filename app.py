from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def hello():
    return jsonify(message="Hello, World!")

if __name__ == "__main__":
    # Run the app on port 8080 to match container configuration
    app.run(host="0.0.0.0", port=8080)