#!/bin/bash
DATE=`date +%Y-%m-%d_%H-%M`
# если с паролем 12345
#/opt/1C/v8.3/x86_64/./1cv8  CONFIG /S"xp962_1\demo" /N"admin" /P"12345" /Out"/home/user/1c.log" /DumpIB"/home/user/buh_"$DATE".dt"
# если без пароля
/opt/1C/v8.3/x86_64/./1cv8  CONFIG /F /home/support/1C_Base/1C_Learning /Out"/home/support/1C_Base/1C_Learning/backup/config/xml/1C_Learning_"$DATE".log" /DumpConfigToFiles"/home/support/1C_Base/1C_Learning/backup/config/xml/1C_Learning_"$DATE

