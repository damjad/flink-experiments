#!/usr/bin/env bash
source "`dirname $0`/environment.sh"

OUTPUT=$($VANILLA_HOME/build-target/bin/flink run -d $VANILLA_HOME/morpheus-tests-vanilla/target/morpheus-tests-vanilla-1.6.0.jar --properties-file /share/hadoop/danish/flink-experiments//configs/vanilla-load-balance-skew-word-count.properties)
echo $OUTPUT

echo $OUTPUT | grep -oP 'JobID \K\w+' > $HOME/pids/word_count-jid