# flask_web/app.py

from flask import Flask, flash, redirect, render_template, request, session, abort
app = Flask(__name__,template_folder='template')

@app.route('/')
def hello_world():
    return 'Hey, we have Flask in a Docker container!'

@app.route("/hello")
def hello():
    return render_template('test.html')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
