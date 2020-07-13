#!/usr/bin/env bash
#change this to the place where kafka is in your PC
HOME="../`dirname $0`"

export KAFKA_HOME="$HOME/binaries/kafka"
export FLINK_HOME="$HOME/builds/incremental-migration/"
export PROMETHEUS_HOME="$KAFKA_HOME/prometheus-2.16.0.linux-386"

export N_PARTITIONS=10
export TOPIC=words