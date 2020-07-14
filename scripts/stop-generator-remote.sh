#!/usr/bin/env bash
pdsh -w cloud-16 '/share/hadoop/danish/flink-experiments/scripts/stop-generator.sh >> /data/1/peel/gen-startup.log 2>&1 &'
pdsh -w cloud-17 '/share/hadoop/danish/flink-experiments/scripts/stop-generator.sh >> /data/1/peel/gen-startup_1.log 2>&1 &'
