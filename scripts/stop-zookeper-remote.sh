#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
pdsh -w cloud-12 '/share/hadoop/danish/flink-experiments/scripts/stop-zookeeper.sh' >> $HOME/logs/zookeeper-startup.log 2>&1