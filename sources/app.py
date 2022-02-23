from flask import Flask, request
from flask_restful import Resource, Api

app = Flask(__name__)
app.config["JSON_AS_ASCII"] = False

@app.route('/', methods=['POST'])
def post_json():
  data = request.get_json()  # Get POST JSON
  print(data)
  return data

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=80)
