#!/bin/bash

COMMIT_MESSAGE=$1
DATE=`date +%Y-%m-%d_%H-%M`

BASE_PATH=`pwd`

BACKUPLOG_BASE=$BASE_PATH"/backup/1C_Learning_"$DATE".log"
BACKUPLOG_CONFIG_CF=$BASE_PATH"/backup/config/cf/1C_Learning_"$DATE".log"
BACKUPLOG_CONFIG_XML=$BASE_PATH"/backup/config/xml/1C_Learning_"$DATE".log"

BACKUP_BASE=$BASE_PATH"/backup/1C_Learning_"$DATE".dt"
BACKUPCONFIG_CF=$BASE_PATH"/backup/config/cf/1C_Learning_"$DATE".cf"
BACKUPCONFIG_XML=$BASE_PATH"/backup/config/xml/1C_Learning_"$DATE

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

