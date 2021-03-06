#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
${PROMETHEUS_HOME}/prometheus \
    --config.file=${PROMETHEUS_HOME}/prometheus.yml \
    --web.listen-address="0.0.0.0:9091" \
    --web.enable-admin-api \
    --storage.tsdb.path=/data/1/peel/prometheus/data > $HOME/logs/prometheus-startup.log 2>&1 &
echo $!> $HOME/pids/prometheus