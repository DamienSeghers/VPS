#!/bin/bash

docker run -d \
  --name mailserver \
  -p 25:25 -p 143:143 -p 465:465 -p 587:587 -p 993:993 -p 4190:4190 \
  -e DBHOST=mariadb \
  -e DBUSER=postfix \
  -e DBNAME=postfix \
  -e DBPASS=kaekill1609 \
  -e ADD_DOMAINS=wt3.ephec-ti.be \
  -v /docker/mail:/var/mail \
  -v /docker/dovecot:/var/lib/dovecot \
  -v /docker/opendkim:/etc/opendkim/keys \
  -h mail.wt3.ephec-ti.be \
  --link mariadb:mariadb \
  hardware/mailserver
