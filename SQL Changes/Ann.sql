DELETE FROM `trinity_string` WHERE entry=787;
INSERT INTO `trinity_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES
(787,'|cffffff00[|c1f40af20|r|cff00ffff%s|cffffff00]:|r %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM `trinity_string` WHERE entry=6615;
INSERT INTO `trinity_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES
(6615,'|cffffff00[|c1f40af20|r|cffDA70D6%s|cffffff00]:|r %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM `command` WHERE name='announce';
INSERT INTO `command` (`name`,`permission`,`help`) VALUES
('announce',217,'Syntax: .announce $MessageToBroadcast');
INSERT INTO `command` (`name`,`permission`,`help`) VALUES
('a',217,'Syntax: .announce $MessageToBroadcast');
