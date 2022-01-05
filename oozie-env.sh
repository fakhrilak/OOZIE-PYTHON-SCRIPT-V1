
#!/bin/bash

#Set JAVA HOME
# echo "=====================sudah di env============"
export JAVA_HOME=/usr/jdk64/jdk1.8.0_112

export JRE_HOME=${JAVA_HOME}

# Set Oozie specific environment variables here.


# Oozie configuration file to load from Oozie configuration directory
#
# export OOZIE_CONFIG_FILE=oozie-site.xml
export OOZIE_CONFIG=/usr/odp/current/oozie-server/conf

# Oozie logs directory
#
export OOZIE_LOG=/var/log/oozie

# Oozie pid directory
#
export JETTY_PID_FILE=/var/run/oozie/oozie.pid

#Location of the data for oozie
export OOZIE_DATA=/hadoop/oozie/data

# Oozie Log4J configuration file to load from Oozie configuration directory
#
# export OOZIE_LOG4J_FILE=oozie-log4j.properties

# Reload interval of the Log4J configuration file, in seconds
#
# export OOZIE_LOG4J_RELOAD=10

# The port Oozie server runs
#
export OOZIE_HTTP_PORT=11000

# The admin port Oozie server runs
#
export OOZIE_ADMIN_PORT=11001

# The host name Oozie server runs on
#
# export OOZIE_HTTP_HOSTNAME=`hostname -f`

# The base URL for callback URLs to Oozie
#
# export OOZIE_BASE_URL="http://${OOZIE_HTTP_HOSTNAME}:${OOZIE_HTTP_PORT}/oozie"
# export JAVA_LIBRARY_PATH=/usr/lib/hadoop/lib/native/Linux-amd64-64
export JAVA_LIBRARY_PATH=/usr/lib/jvm
# export CLASS_PATH=/usr/odp/0.2.0.0-03/oozie/libserver/oozie-sharelib-oozie-5.2.0-ODI.jar
# At least 1 minute of retry time to account for server downtime during
# upgrade/downgrade
export OOZIE_CLIENT_OPTS="${OOZIE_CLIENT_OPTS} -Doozie.connection.retry.count=5 "
# echo "=============================SEBELUM KE OOZIE CLIENT OPTS=========================="
