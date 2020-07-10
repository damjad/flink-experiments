#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
${PROMETHEUS_HOME}/prometheus \
    --config.file=${PROMETHEUS_HOME}/prometheus.yml \
    --web.enable-admin-api \
    --storage.tsdb.path=${PROMETHEUS_HOME}/data > ${PROMETHEUS_HOME}/logs 2>&1 &
echo $!> ${PROMETHEUS_HOME}/pid