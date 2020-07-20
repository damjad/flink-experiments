#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
#
pdsh -w cloud-18 '/share/hadoop/danish/flink-experiments/scripts/start-dstat.sh'
pdsh -w cloud-19 '/share/hadoop/danish/flink-experiments/scripts/start-dstat.sh'
pdsh -w cloud-20 '/share/hadoop/danish/flink-experiments/scripts/start-dstat.sh'
pdsh -w cloud-21 '/share/hadoop/danish/flink-experiments/scripts/start-dstat.sh'