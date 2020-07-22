#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
cd "`dirname $0`"

bash stop-rhino.sh &
sleep 5
bash stop-kafka-remote.sh &
sleep 5
bash stop-zookeper-remote.sh &
sleep 5
bash stop-prometheus.sh
