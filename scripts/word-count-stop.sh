#!/usr/bin/env bash
source "`dirname $0`/environment.sh"

mkdir -p $RHINO_HOME/savepoints
JOB_ID=`cat $HOME/pids/word_count-jid`
OUTPUT=$($RHINO_HOME/build-target/bin/flink cancel $JOB_ID)

echo $OUTPUT