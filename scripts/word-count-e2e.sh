#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
START_TIME=`date +%s`
bash word-count-run.sh && \
bash start-combo-remote.sh && \
sleep 350 && \
bash  word-count-stop-with-savepoint.sh && \
bash metrics_n_records_in.sh $START_TIME `date +%s`
bash stop-combo-remote.sh