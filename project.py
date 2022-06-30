from flask import Flask, request, jsonify
import random, string

app = Flask(__name__)

@app.route('/public', methods = ['GET'])
def return_public():
    d = {}
    # e= {}
    inputchr = str(request.args['query'])
    x = ''.join(random.choices(string.ascii_letters + string.digits, k=256))
    # y = ''.join(random.choices(string.ascii_letters + string.digits, k=256*4))
    d['public'] = x
    # e['private'] = y
    return d
    
@app.route('/private', methods = ['GET'])
def return_private():
    # d = {}
    e= {}
    inputchr = str(request.args['query1'])
    # x = ''.join(random.choices(string.ascii_letters + string.digits, k=256))
    y = ''.join(random.choices(string.ascii_letters + string.digits, k=256*4))
    # d['public'] = x
    e['private'] = y
    return e


if __name__ =="__main__":
    app.run()