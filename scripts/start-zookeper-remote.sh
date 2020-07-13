#!/usr/bin/env bash
pdsh -w cloud-12 '/share/hadoop/danish/flink-experiments/scripts/start-zookeeper.sh > /data/1/peel/zookeeper-startup.log 2>&1 &'