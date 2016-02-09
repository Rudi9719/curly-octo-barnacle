//
//  SlackHandler.hpp
//  TrinityCore
//
//  Created by Gregory Rudolph-Alverson on 2/9/16.
//  Copyright © 2016 STEiN-Net. All rights reserved.
//

#include <string>
#include <iostream>
#include "CSlackRTM.h"
class SlackTest : public SlackRTMCallbackInterface
{
private:
    CSlackRTM *_rtm;
    
public:
    
    SlackTest(string token, string apiurl);
    
    ~SlackTest();
    
    void start();
    
    void sendToGame(string username, string message);
    
    void sendToSlack(char const* name, char const* message);
    
    int cbi_got_slack_message(string channel, string username, string message);
    
    void cbi_debug_message(int log_level, string msg);
};
