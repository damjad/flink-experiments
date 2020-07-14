#!/usr/bin/env bash
source "`dirname $0`/environment.sh"

$KAFKA_HOME/bin/kafka-log-dirs.sh --describe --bootstrap-server  --topic-list words