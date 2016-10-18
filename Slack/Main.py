import getpass, os, traceback
import time
import re
import yaml
import sys
from subprocess import Popen, PIPE
from slackclient import SlackClient
import pexpect
import json

token = "xoxb-36157182386-AaTzDHepLidA5q4tbUvbpMM1" #sunypolyncs
#token = "xoxb-10856414337-QWUGUYP12hXrKzGLUe74VeSg" #sunypoly
sc = SlackClient(token)
world = None

def main():
    sc.rtm_connect()
    hello_slack("Slack online.")
    start_auth()
    hello_slack("Opening world.")
    global world
    world = pexpect.spawn("/wow/3.3.5/bin/worldserver")
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
        return ""

def start_auth():
    os.system("/wow/3.3.5/bin/authserver & disown")
    hello_slack("Auth started.")


def slack_to_world(message):
    post = json.dumps(message)
    print(post)
    if "\"type\": \"message\"" in post:
        if "\"subtype\": \"bot_message\"" in post:
            pass
        else:
            if "\"channel\": \"G0K0U99T7\"" in post:
                user = re.search('\"user\": \"(.*)\", \"team', post)
                uname = get_username(user.group(1))
                message = re.search('\"text\": \"(.*)\", \"ts',  post)
                post = uname + ": " + message.group(1)
                world.sendline("a " + post + "\n\r")
                world.sendline()
            else:
                user = re.search('\"user\": \"(.*)\", \"team', post)
                message = re.search('\"text\": \"(.*)\", \"ts',  post)
                handle_command(message.group(1), user.group(1))

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

def create_account(post):
    world.sendline("account create " + post)
    username = re.search('([^\s]+)',post)
    username = username.group(1)
    world.sendline("account set gmlevel " + username + " 1 -1")
    world.sendline()
    world.sendline()


def listen_to_world():
    while True:
        i = world.expect([" \(GUID .*", pexpect.EOF, pexpect.TIMEOUT], timeout=0)
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
    #sc.api_call(
    #            "chat.postMessage", channel="#wowserver", text=message,
    #            username='WoW', icon_emoji=':robot_face:'
    #            )
    pass

def hello_world(message):
    world.sendline("a " + "[Handler]: " + str(message))
    world.sendline()

def get_username(user):
    username = user
    with open('data.yaml', 'r') as f:
        l = yaml.load(f)
    for usernames in l["users"].iteritems():
        if username in usernames:
            return l["users"][username]

    return username

def handle_command(post, user):
    if is_admin(user):
        print("Admin user detected.")
        world.sendline(post)
    else:
        username = re.search('([^\s]+)',post)
        username = username.group(1)
        create_account(post)
        hello_slack("Account created, welcome " + username + "!")
        hello_world("Account created, welcome " + username + "!")


def is_admin(user):
    username = user
    with open('data.yaml', 'r') as f:
        l = yaml.load(f)
    for usernames in l["admins"].iteritems():
        if username in usernames:
            return True
        else:
            return False
    return False



if __name__ == '__main__':
    main()
