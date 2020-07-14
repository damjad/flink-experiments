#!/usr/bin/env bash
pdsh -w cloud-13 '/share/hadoop/danish/flink-experiments/scripts/start-kafka.sh'
pdsh -w cloud-14 '/share/hadoop/danish/flink-experiments/scripts/start-kafka_1.sh'