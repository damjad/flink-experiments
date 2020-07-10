#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
kill `cat ${PROMETHEUS_HOME}/pid`