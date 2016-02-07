-- Custodian of Time's Whispers for quest 10277
DELETE FROM `script_texts` WHERE `entry` IN (-1000217,-1000218,-1000219,-1000220,-1000221,-1000222,-1000223,-1000224,-1000225,-1000226,-1000227,-1000228,-1000229,-1000230);
DELETE FROM `creature_text` WHERE `entry`=20129;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(20129,0,0, 'Greetings, $N. I will guide you through the cavern. Please try and keep up.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_1'),
(20129,1,0, 'We do not know if the Caverns of Time have always been accessible to mortals. Truly, it is impossible to tell as the Timeless One is in perpetual motion, changing our timeways as he sees fit. What you see now may very well not exist tomorrow. You may wake up and have no memory of this place.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_2'),
(20129,2,0, 'It is strange, I know... Most mortals cannot actually comprehend what they see here, as often, what they see is not anchored within their own perception of reality.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_3'),
(20129,3,0, 'Follow me, please.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_4'),
(20129,4,0, 'There are only two truths to be found here: First, that time is chaotic, always in flux, and completely malleable and second, perception does not dictate reality.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_5'),
(20129,5,0, 'As custodians of time, we watch over and care for Nozdormu''s realm. The master is away at the moment, which means that attempts are being made to dramatically alter time. The master never meddles in the affairs of mortals but instead corrects the alterations made to time by others. He is reactionary in this regard.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_6'),
(20129,6,0, 'For normal maintenance of time, the Keepers of Time are sufficient caretakers. We are able to deal with most ordinary disturbances. I speak of little things, such as rogue mages changing something in the past to elevate their status or wealth in the present.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_7'),
(20129,7,0, 'These tunnels that you see are called timeways. They are infinite in number. The ones that currently exist in your reality are what the master has deemed as ''trouble spots.'' These trouble spots may differ completely in theme but they always share a cause. That is, their existence is a result of the same temporal disturbance. Remember that should you venture inside one...',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_8'),
(20129,8,0, 'This timeway is in great disarray! We have agents inside right now attempting to restore order. What information I have indicates that Thrall''s freedom is in jeopardy. A malevolent organization known as the Infinite Dragonflight is trying to prevent his escape. I fear without outside assistance, all will be lost.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_9'),
(20129,9,0, 'We have very little information on this timeway. Sa''at has been dispatched and is currently inside. The data we have gathered from his correspondence is that the Infinite Dragonflight are once again attempting to alter time. Could it be that the opening of the Dark Portal is being targeted for sabotage? Let us hope not...',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_10'),
(20129,10,0, 'This timeway collapsed and reformed. The result was Stratholme of yore. What could possibly be happening inside?',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_11'),
(20129,11,0, 'The timeways are currently ranked in order from least catastrophic to most catastrophic. Note that they are all classified as catastrophic, meaning that any single one of these timeways collapsing would mean that your world would end. We only classify them in such a way so that the heroes and adventurers that are sent here know which timeway best suits their abilities.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_12'),
(20129,12,0, 'All we know of this timeway is that it leads to Mount Hyjal. The Infinite Dragonflight have gone to great lengths to prevent our involvement. We know next to nothing, mortal. Soridormi is currently attempting to break through the timeway''s defenses but has thus far been unsuccessful. You might be our only hope of breaking through and resolving the conflict.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_13'),
(20129,13,0, 'Our time is at an end $N. I would wish you luck, if such a thing existed.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_14');
