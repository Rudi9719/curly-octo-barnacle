import os
import time
import re
from slackclient import SlackClient

token = "" #Slack token
sc = SlackClient(token)
test_message = "Command: .a Hello [Player: Rudi (GUID Full: 0x0000000000000001 Type: Player Low: 1) (Account: 1) X: 1887.870483 Y: -4423.166504 Z: 12.811410 Map: 1 (Kalimdor) Area: 1637 (Orgrimmar) Zone: Unknown Selected:  (GUID Full: 0x0000000000000000 Type: None Low: 0)]"


def message_strip(message):
    message = re.sub(,'',message)

def slack_listen():
    if sc.rtm_connect()
        while True:
            #handle sc.rtm_read()
            time.sleep(1)
    else:
        print "Connection to Slack Failed. Invalid token?"


def start_auth():

def start_word():

def slack_to_world(message, user)

def world_to_slack(output)
    message = ""
    sc.rtm_send_message(["#wowserver", message])


def listen_to_world():



def main():
