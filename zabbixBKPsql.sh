#!bin/bash

DATA=$(date +"%d-%m-%Y")
USER='root'
PASSWORD='yourPassword'
DBNAME='zabbix'
DUMPNAME=zabbixDump-${DATA}
DIR=/var/backup/zabbix

mysqldump -u$USER -p$PASSWORD $DBNAME > ${DIR}/"$DUMPNAME".sql 
