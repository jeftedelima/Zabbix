#!/bin/bash
#	@Jefte de Lima Ferreira
# 	jeftedelima at gmail dot com

DATA=$(date +"%Y_%m_%d")
DATALOG=$(date +"%d-%m-%Y - %H:%M:%S")
DIRTEMP=tempFilesZbx
DIRBACKUP=/var/backup/zabbix
ARQLOG=${DIRBACKUP}/zbxLogFile.log
NOME=filesConf_${DATA}

#	Verifica se existe o diretorio temporario se nao cria.

[ -d ${DIRTEMP} ] || mkdir -p ${DIRTEMP}

#	Verifica se existe o diretorio de backup , se nao cria.

[ -d ${DIRBACKUP} ] || mkdir -p ${DIRBACKUP}

#	Copiando os arquivos para backup

echo "Backup iniciado - ${DATALOG}" >> ${ARQLOG}

cp /etc/mysql/my.cnf ${DIRTEMP}
cp -r /etc/zabbix/* ${DIRTEMP}
cp -r /usr/lib/zabbix/* ${DIRTEMP}
cp /etc/crontab ${DIRTEMP}
cp -r /etc/apache2 ${DIRTEMP}
cp -r /usr/share/zabbix ${DIRTEMP}
cp -r /etc/php5 ${DIRTEMP}
cp /etc/network/interfaces ${DIRTEMP}
cp -r /var/lib/grafana ${DIRTEMP}

#	Compactando os arquivos
tar -zcf ${NOME}.tar.gz ${DIRTEMP}
mv ${NOME}* ${DIRBACKUP}
rm -rf ${DIRTEMP}

DATALOG=$(date +"%d-%m-%Y - %H:%M:%S")
echo "Backup finalizado - ${DATALOG}" >> ${ARQLOG}
echo " " >> ${ARQLOG}
echo "=|" >> ${ARQLOG}
