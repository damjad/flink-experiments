#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
START_TIME=`date +%s`
bash word-count-vanilla-run.sh && \
bash start-combo-vanilla-remote.sh && \
sleep 180s && \
#sleep 30s && \
date '+%s' > /share/hadoop/danish/flink-experiments/test-data/morpheus-tests/policy-rates-repo/vanilla/actions.log
bash word-count-vanilla-stop-with-savepoint.sh && \
bash word-count-vanilla-run-with-savepoint.sh &&
sleep 140s && \
bash  word-count-vanilla-stop-with-savepoint.sh && \
bash metrics_n_records_in.sh $START_TIME `date +%s`
bash stop-combo-remote.sh