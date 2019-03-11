from flask import Flask, request
import json,os

app = Flask(__name__)

@app.route('/',methods=['POST'])
def foo():
    data = json.loads(request.data)
    head=request.headers.get('X-GitHub-Event')
    if data['repository']['full_name'] == "jayabalan1992/jay-puppet" and head=="push":
        os.system("sh updatepuppetrepo.sh")
    print head," event is received"
    return "OK"

if __name__ == '__main__':
   app.run(host='0.0.0.0', port=4321)
