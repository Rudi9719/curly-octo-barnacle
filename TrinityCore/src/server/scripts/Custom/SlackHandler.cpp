//
//  SlackHandler.cpp
//  TrinityCore
//
//  Created by Gregory Rudolph-Alverson on 2/9/16.
//  Copyright © 2016 STEiN-Net. All rights reserved.
//

#include "SlackHandler.h"
#include "include/CSlackRTM.h"
#include "ScriptMgr.h"
#include "Chat.h"
#include "ChannelMgr.h"
#include "Language.h"
#include "Player.h"
#include "ObjectMgr.h"

using namespace std;



SlackTest(string token, string apiurl)
{
    _rtm = new CSlackRTM(token, apiurl, this);
}

~SlackTest()
{
    delete _rtm;
}

void start()
{
    _rtm->go();
    sleep(2);
    _rtm->send("general", "test message");
    sleep(1000);
}

int cbi_got_slack_message(string channel, string username, string message)
{
    cbi_debug_message(LOG_DEBUG, "cbi_got_slack_message> #" + channel + "/<" + username + "> " + message);
    
    sendToGame(username, message);
    
    return 0;
}
void sendToGame(string username, string message) {
    sWorld->SendWorldText(LANG_ANNOUNCE_COLOR, username, message);
}
void sendToSlack(char const* name, char const* message) {
    _rtm->send("channel", "[%s]: %s", name, message);
    
}

void cbi_debug_message(int log_level, string msg)
{
    cout << "[" + msg + "]" << endl;
}


int main(int argc, char *argv[])
{
    string apiurl = "https://slack.com/api/";
    
    if (argc != 2)
    {
        cout << "Invalid number of parameters supplied!\n";
        cout << "Expected one parameter: token\n\n";
        return -1;
    }
    
    string token(argv[1]);
    
    SlackTest test(token, apiurl);
    test.start();
    
    return 0;
}
