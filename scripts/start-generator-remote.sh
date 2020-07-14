#!/usr/bin/env bash
pdsh -w cloud-16 '/share/hadoop/danish/flink-experiments/scripts/start-generator.sh &'
pdsh -w cloud-17 '/share/hadoop/danish/flink-experiments/scripts/start-generator_1.sh &'
