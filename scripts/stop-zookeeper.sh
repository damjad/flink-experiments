#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
${KAFKA_HOME}/bin/zookeeper-server-stop.sh ${KAFKA_HOME}/config/zookeeper.properties