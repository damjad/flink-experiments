#!/usr/bin/env bash
pdsh -w cloud-13 '/share/hadoop/danish/flink-experiments/scripts/start-kafka.sh > $HOME/logs/kafka-startup.log 2>&1 &'
pdsh -w cloud-14 '/share/hadoop/danish/flink-experiments/scripts/start-kafka_1.sh > $HOME/logs/kafka-startup_1.log 2>&1 &'