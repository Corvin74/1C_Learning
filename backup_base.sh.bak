#!/bin/bash

COMMIT_MESSAGE=$1
DATE=`date +%Y-%m-%d_%H-%M`

BASE_PATH="/home/support/1C_Base/1C_Learning"

BACKUPLOG_BASE="/home/support/1C_Base/1C_Learning/backup/1C_Learning_"$DATE".log"
BACKUPLOG_CONFIG_CF="/home/support/1C_Base/1C_Learning/backup/config/cf/1C_Learning_"$DATE".log"
BACKUPLOG_CONFIG_XML="/home/support/1C_Base/1C_Learning/backup/config/xml/1C_Learning_"$DATE".log"

BACKUP_BASE="/home/support/1C_Base/1C_Learning/backup/1C_Learning_"$DATE".dt"
BACKUPCONFIG_CF="/home/support/1C_Base/1C_Learning/backup/config/cf/1C_Learning_"$DATE".cf"
BACKUPCONFIG_XML="/home/support/1C_Base/1C_Learning/backup/config/xml/1C_Learning_"$DATE

/opt/1C/v8.3/x86_64/./1cv8  CONFIG /F $BASE_PATH /Out $BACKUPLOG_BASE /DumpIB $BACKUP_BASE
/opt/1C/v8.3/x86_64/./1cv8  CONFIG /F $BASE_PATH /Out $BACKUPLOG_CONFIG_CF /DumpCfg $BACKUPCONFIG_CF
/opt/1C/v8.3/x86_64/./1cv8  CONFIG /F $BASE_PATH /Out $BACKUPLOG_CONFIG_XML /DumpConfigToFiles $BACKUPCONFIG_XML

if [[ -n $COMMIT_MESSAGE ]]; then
  git add .
  git commit -m "$COMMIT_MESSAGE"
  git push
  git status
  git log
fi

