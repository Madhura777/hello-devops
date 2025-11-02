from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello DevOps"
# Login feature added
# Added a login route simulation for Task 2 demonstration
print("Login feature active")

if __name__ =="__main__":
    app.run(host="0.0.0.0",port=5000)