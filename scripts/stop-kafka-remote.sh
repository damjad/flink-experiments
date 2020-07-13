#!/usr/bin/env bash
pdsh -w cloud-13 '/share/hadoop/danish/flink-experiments/scripts/stop-kafka.sh > /data/1/peel/kafka-startup.log 2>&1 &'
pdsh -w cloud-14 '/share/hadoop/danish/flink-experiments/scripts/stop-kafka_1.sh > /data/1/peel/kafka-startup.log 2>&1 &'