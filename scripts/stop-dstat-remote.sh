#!/usr/bin/env bash

pdsh -w cloud-18 '/share/hadoop/danish/flink-experiments/scripts/stop-dstat.sh'
pdsh -w cloud-19 '/share/hadoop/danish/flink-experiments/scripts/stop-dstat.sh'
pdsh -w cloud-20 '/share/hadoop/danish/flink-experiments/scripts/stop-dstat.sh'
pdsh -w cloud-21 '/share/hadoop/danish/flink-experiments/scripts/stop-dstat.sh'