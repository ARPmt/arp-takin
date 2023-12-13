#! /usr/bin/env python2

import os
import re
import json
import sys
import requests

def get_authtoken():

    data = {
        "email": "test@gmail.com",
        "password": "e10adc3949ba59abbe56e057f20f883e"
    }

    logapi = "http://43.231.196.15:8080/login"
    login = requests.post(logapi, json.dumps(data))
    rd = login.json()
    token = rd.get("data")

    return token

def get_name_token(token_name):

    auth_token = get_authtoken()
    gettokensapi = "http://43.231.196.15:8080/tokens"
    headers = {"authorization": auth_token}

    tokens = requests.get(gettokensapi, headers=headers)
    tokens = tokens.json().get("data")
    tokens = tokens.get("data")

    for t in tokens:
        if t.get("name") == token_name:
            print (t.get("token"))
            return t.get("token")

def tc_token_auth(token_name):

    token = get_name_token(token_name)
    cmd = "/app/takin add-token %s 440" % token
    with open("token.txt", "w") as f:
        f.write(token)
        f.close()

    print (cmd)

    cmd = "/app/takin start"
    print (cmd)


if __name__ == '__main__':
    args = sys.argv
    if len(args) > 1:
        print (args[1])
        token_name = args[1]
        tc_token_auth(token_name)