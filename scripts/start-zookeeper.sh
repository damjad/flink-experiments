#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
${KAFKA_HOME}/bin/zookeeper-server-start.sh ${KAFKA_HOME}/config/zookeeper.properties > $HOME/logs/zookeeper-startup.log 2>&1 &
echo $!> $HOME/pids/zookeeper-pid