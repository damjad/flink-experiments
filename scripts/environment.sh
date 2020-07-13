#!/usr/bin/env bash
#change this to the place where kafka is in your PC
HOME="/share/hadoop/danish/flink-experiments/"

export KAFKA_HOME="$HOME/binaries/kafka"
export KAFKA_HOME_1="$HOME/binaries/kafka_1"
export FLINK_HOME="$HOME/builds/incremental-migration/"
export PROMETHEUS_HOME="$HOME/binaries/prometheus-2.16.0.linux-386"

export N_PARTITIONS=10
export TOPIC=words