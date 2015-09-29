#!/bin/sh
USER=root
HOST=192.168.1.1
JBOSS_DIR="/opt/jboss/server/default/deploy"

case "$1" in
start)
ssh $USER@$HOST service jboss-as start
;;
stop)
ssh $USER@$HOST service jboss-as stop
;;
log)
ssh $USER@$HOST service jboss-as log
;;
deploy)
if [ -z "$2" ]
  then
    echo "Usage: ./jboss-client.sh deploy <path_to_war>"
    exit
fi
scp $2 $USER@$HOST:$JBOSS_DIR
;;
*)
echo "Usage: ./jboss-client.sh {start|stop|log}"
exit 1
;;
esac
exit 0
