#!/usr/bin/env bash
source "`dirname $0`/environment.sh"

OUTPUT=$($RHINO_HOME/build-target/bin/flink run -d $MORPHEUS_HOME/target/morpheus-tests-1.6-Migration.jar  --properties-file /share/hadoop/danish/flink-experiments/configs/load-balance-skew-word-count.properties)
echo $OUTPUT

echo $OUTPUT | grep -oP 'JobID \K\w+' > $HOME/pids/word_count-jid