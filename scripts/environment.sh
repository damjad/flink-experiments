#!/usr/bin/env bash
#change this to the place where kafka is in your PC
export HOME="/share/hadoop/danish/flink-experiments/"

export KAFKA_HOME="$HOME/binaries/kafka"
export RHINO_HOME="$HOME/build/incremental-migration/"
export PROMETHEUS_HOME="$HOME/binaries/prometheus-2.16.0.linux-386"

export N_PARTITIONS=10
export TOPIC=words

export ZOOKEEPER_ADDRESS=cloud-12.dima.tu-berlin.de:2181
