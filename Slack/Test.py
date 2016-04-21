import getpass, os, traceback
import time
import re
import sys
from subprocess import Popen, PIPE
from slackclient import SlackClient
import pexpect
import json

#token = "xoxb-36157182386-AaTzDHepLidA5q4tbUvbpMM1" #sunypolyncs
token = "xoxb-10856414337-QWUGUYP12hXrKzGLUe74VeSg" #sunypoly
sc = SlackClient(token)
test_message = "Command: .a Hello There!! This is my message :] [Player: Rudi (GUID Full: 0x0000000000000001 Type: Player Low: 1) (Account: 1) X: 1887.870483 Y: -4423.166504 Z: 12.811410 Map: 1 (Kalimdor) Area: 1637 (Orgrimmar) Zone: Unknown Selected:  (GUID Full: 0x0000000000000000 Type: None Low: 0)]"
world = None

def main():
    sc.rtm_connect()
    hello_slack("Slack online.")
    start_auth()
    hello_slack("Opening world.")
    global world
    world = pexpect.spawn("/wow/test/bin/worldserver")
    world.expect("TC>")
    hello_slack("World opened!")
    world.sendline()
    sys.stdout.flush()
    listen_to_world()


def message_strip(message):
    command = message
    command = re.search('Command: .a (.*) \[Player',  command)
    if command:
        return command.group(1)
    else:
        return "no"

def start_auth():
    os.system("/wow/test/bin/authserver & disown")
    hello_slack("Auth started.")


def slack_to_world(message):
    post = json.dumps(message)
    
    if "\"type\": \"message\"" in post:
        if "\"subtype\": \"bot_message\"" in post:
            pass
        else:
            user = re.search('\"user\": \"(\w)+\"', post)
            user = get_username(user)
            message = re.search('\"text\": \"(.*)\", \"ts',  post)
            post = user + ": " + message.group(1)
            world.sendline("a " + post + "\n\r")
            world.sendline()
    else:
        pass


def world_to_slack(output):
    message = message_strip(output)
    player = re.search('Player: ([a-zA-Z]+)' , output)
    if player:
        sc.api_call(
                    "chat.postMessage", channel="#wowserver", text=message,
                    username=player.group(1), icon_emoji=':trinity-slack:'
                    )
    else:
        pass


def listen_to_world():
    while True:
        i = world.expect([" \(GUID .*", pexpect.EOF, pexpect.TIMEOUT], timeout=1)
        if i == 0:
            world_to_slack(world.before)
            world.sendline()
        elif i == 1:
            world_to_slack(world.before)
            world.sendline()
        elif i == 2:
            world.sendline("\r\r\r")
            world.sendline()

        world.sendline()
        slack_to_world(sc.rtm_read())
        time.sleep(1)


def hello_slack(message):
    sc.api_call(
                "chat.postMessage", channel="#wowserver", text=message,
                username='WoW', icon_emoji=':robot_face:'
                )

def hello_world(message):
    world.sendline("a " + "[Handler]: " + str(message))
    world.sendline()

def get_username(user):
    sc.api_call("user.info", user=user)
    data = sc.rtm_read()
    data = json.dumps(data)
    print(data)
    username = re.search('\"name\": \"(\w)+\"', data)
    if username:
        return username.group(1)
    else:
        return "Slack"




if __name__ == '__main__':
    main()
