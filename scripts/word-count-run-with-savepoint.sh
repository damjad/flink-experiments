#!/usr/bin/env bash
source "`dirname $0`/environment.sh"

SAVE_FILE=`cat $HOME/pids/word_count-fid`
OUTPUT=$($RHINO_HOME/build-target/bin/flink run -s $SAVE_FILE -d $RHINO_HOME/morpheus-tests/target/morpheus-tests-1.6.0.jar --properties-file /share/hadoop/danish/flink-experiments//configs/load-balance-skew-word-count.properties)
echo $OUTPUT

echo $OUTPUT | grep -oP 'JobID \K\w+' > $HOME/pids/word_count-jid