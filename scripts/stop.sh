#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
cd "`dirname $0`"
bash remove-elements-kafka.sh &
sleep 5
bash stop-kafka.sh &
sleep 10
bash stop-prometheus.sh &
sleep 5
bash stop-zookeeper.sh &
sleep 5
