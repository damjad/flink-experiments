#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
cd "`dirname $0`"
bash start-prometheus.sh &
sleep 5
bash start-zookeper-remote.sh &
sleep 5
bash start-kafka-remote.sh &
sleep 5
bash start-rhino.sh &
