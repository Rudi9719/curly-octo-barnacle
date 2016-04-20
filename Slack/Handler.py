import os
import time
import re
from subprocess import Popen, PIPE
from slackclient import SlackClient


token = "xoxb-10856414337-QWUGUYP12hXrKzGLUe74VeSg" #Slack token
sc = SlackClient(token)
test_message = "Command: .a Hello There!! This is my message :] [Player: Rudi (GUID Full: 0x0000000000000001 Type: Player Low: 1) (Account: 1) X: 1887.870483 Y: -4423.166504 Z: 12.811410 Map: 1 (Kalimdor) Area: 1637 (Orgrimmar) Zone: Unknown Selected:  (GUID Full: 0x0000000000000000 Type: None Low: 0)]"
world = Popen(["/wow/test/bin/worldserver"], stdout=PIPE)

def main():
    sc.rtm_connect()
    hello_world("Hello, world!")
    start_auth()
    if world:
        hello_world("World was previously opened?")
        listen_to_world()
    else:
        hello_world("Opening world.")
        world = Popen(["/wow/test/bin/worldserver"], stdout=PIPE)
        listen_to_world()


def message_strip(message):
    command = message
    player = message
    command = re.search('Command: .a (.*) \[Player',  command)
    # regex: 'Player: ([a-zA-Z]+)' $1
    player = re.search('Player: ([a-zA-Z]+)' , player)
    print(player.group(1) + ": " + command.group(1))
    return player.group(1) + ": " + command.group(1)

def start_auth():
    os.system("/wow/test/bin/authserver & disown")


def slack_to_world(message, user):
    post = user + ": " + message
    data, error = world.stdin.write("a " + post)
    listen_to_world()

def world_to_slack(output):
    message = message_strip(output)
    if (len(message) > 10):
        sc.api_call(
                    "chat.postMessage", channel="#wowserver", text=message,
                    username='WoW', icon_emoji=':robot_face:'
                    )
    else:
        pass


def listen_to_world():
    hello_world("Listening to world.")
    while True:
        data, error = world.stdout.read()
        print(data)
        world_to_slack(data)
        slack_to_world(sc.rtm_read())
        time.sleep(1)


def hello_world(message):
    sc.api_call(
            "chat.postMessage", channel="#wowserver", text=message,
            username='WoW', icon_emoji=':robot_face:'
            )



if __name__ == '__main__':
    main()
