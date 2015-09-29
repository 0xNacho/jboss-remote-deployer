#!/bin/sh
### BEGIN INIT INFO
# Provides:          jboss-as
# Required-Start:    $local_fs $remote_fs $network $syslog
# Required-Stop:     $local_fs $remote_fs $network $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start/Stop JBoss
### END INIT INFO

JBOSS_USER=jboss
JBOSS_DIR=/opt/jboss
JBOSS_LOG_DIR=/var/log/jboss
JBOSS_HOST="0.0.0.0"

JBOSS_OPTS="$JBOSS_OPTS -b 0.0.0.0"

case "$1" in
start)
echo "Starting JBoss AS... Wait a few seconds :)"
start-stop-daemon --start --quiet --background --chuid $JBOSS_USER --exec $JBOSS_DIR/bin/run.sh -- $JBOSS_OPTS
;;
stop)
echo "Stopping JBoss AS... Wait a few seconds :)"
start-stop-daemon --start --quiet --background --chuid $JBOSS_USER --exec $JBOSS_DIR/bin/shutdown.sh -- -S
;;
log)
echo "Showing server.log..."
tail -500f $JBOSS_LOG_DIR/server.log
;;
*)
echo "Usage: /etc/init.d/jboss-as {start|stop}"
exit 1
;;
esac
exit 0
