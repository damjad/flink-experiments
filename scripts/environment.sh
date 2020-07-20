#!/usr/bin/env bash
#change this to the place where kafka is in your PC
export HOME="/share/hadoop/danish/flink-experiments/"

export PROMETHEUS_HOME="$HOME/binaries/prometheus-2.16.0.linux-386"
export KAFKA_HOME="$HOME/binaries/kafka"
export RHINO_HOME="$HOME/build/incremental-migration/"
export MORPHEUS_HOME=${RHINO_HOME}/morpheus-tests
export GENERATOR_HOME=${RHINO_HOME}/morpheus-tests-data-generator
export DSTAT_HOME="$HOME/binaries/dstat"
export VANILLA_HOME="$HOME/build/flink-1.6/"

export N_PARTITIONS=8
export TOPIC=words

export ZOOKEEPER_ADDRESS=cloud-12.dima.tu-berlin.de:2181
export KAFKA_ADDRESS=cloud-13.dima.tu-berlin.de:9092
export RHINO_ADDRESS=cloud-11.dima.tu-berlin.de:8081
