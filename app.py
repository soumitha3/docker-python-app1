from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "Hello Soumitha! 🎉 Your Python app is running in Docker and managed by Kubernetes!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
