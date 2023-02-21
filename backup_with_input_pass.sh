#!/bin/sh


DATE="$(date +'%d/%m/%Y')"
echo "$DATE is today"
echo "please type the sql root user password: "
read PASS


DBSERVER=localhost
DATABASE=PP_MDM
TARGETFILE=pp_mdm
USER=root
#PASS=password

FILE=$TARGETFILE-$(date +"%d-%m-%Y").sql

echo "$FILE name created"
unalias rm	2> /dev/null
rm ${FILE} 	2> /dev/null
rm ${FILE}.gz 	2> /dev/null

sudo mysqldump --opt --user=${USER} --password=${PASS} ${DATABASE} > ${FILE}
echo "file created : $FILE"
ls -l 
