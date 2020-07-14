#!/usr/bin/env bash
pdsh -w cloud-12 '/share/hadoop/danish/flink-experiments/scripts/start-zookeeper.sh > $HOME/logs/zookeeper-startup.log 2>&1 &'