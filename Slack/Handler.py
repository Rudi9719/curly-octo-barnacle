import os
import time
import re
from subprocess import Popen, PIPE
from slackclient import SlackClient


token = "xoxb-10856414337-QWUGUYP12hXrKzGLUe74VeSg" #Slack token
sc = SlackClient(token)
test_message = "Command: .a Hello There!! This is my message :] [Player: Rudi (GUID Full: 0x0000000000000001 Type: Player Low: 1) (Account: 1) X: 1887.870483 Y: -4423.166504 Z: 12.811410 Map: 1 (Kalimdor) Area: 1637 (Orgrimmar) Zone: Unknown Selected:  (GUID Full: 0x0000000000000000 Type: None Low: 0)]"


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
    pass

def slack_to_world(message, user):
    post = user + ": " + message
    data, error = world.communicate("a " + post)
    listen_to_world()

def world_to_slack(output):
    message = message_strip(output)
    if (len(message) > 10):
        sc.rtm_send_message(["#wowserver", message])
    else:
        pass


def listen_to_world():
    data, error = world.communicate()
    print(data)
    world_to_slack(data)





def main():
    sc.rtm_connect()
    world_to_slack(test_message)
    if world:
        print("World was opened previously")
        listen_to_world()
    else:
        world = Popen(["/wow/test/bin/worldserver"])
        listen_to_world()



if __name__ == '__main__':
    main()
