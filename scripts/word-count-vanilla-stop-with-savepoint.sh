#!/usr/bin/env bash
source "`dirname $0`/environment.sh"

mkdir -p $VANILLA_HOME/savepoints
JOB_ID=`cat $HOME/pids/word_count-jid`
OUTPUT=$($VANILLA_HOME/build-target/bin/flink cancel -s $VANILLA_HOME/savepoints $JOB_ID)

echo $OUTPUT

echo $OUTPUT | grep -oP 'file:\K.*' > $HOME/pids/word_count-fid