import getpass, os, traceback
import time
import re
import sys
from subprocess import Popen, PIPE
from slackclient import SlackClient
import pexpect
import json


token = "xoxb-10856414337-QWUGUYP12hXrKzGLUe74VeSg" #Slack token
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
            user = re.search("\"username\": \"([a-zA-Z]+)\"",  post)
            message = re.search("\"texte\": \"(.*)\"",  post)
            post = user.group(1) + ": " + message.group(1)
            world.sendline("a " + json.dumps(post) + "\n\r")
            world.sendline()
    else:
        pass


def world_to_slack(output):
    message = message_strip(output)
    player = re.search('Player: ([a-zA-Z]+)' , output)
    if (len(message) > 0):
        sc.api_call(
                    "chat.postMessage", channel="#wowserver", text=message,
                    username=player.group(1), icon_emoji=':robot_face:'
                    )
    else:
        pass


def listen_to_world():
    while True:
        i = world.expect([" \(GUID .*", pexpect.EOF, pexpect.TIMEOUT], timeout=3)
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

def die(child, errstr):
    print errstr
    print child.before, child.after
    hello_slack(child.before)
    child.terminate()
    exit(1)

if __name__ == '__main__':
    main()
