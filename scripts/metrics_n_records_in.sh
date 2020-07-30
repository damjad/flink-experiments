#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
python query_csv.py http://localhost:9091 'rate(flink_taskmanager_job_task_numRecordsIn{task_name="Count____Sink:_Latency_Sink"}[10s])' $1 $2 > "$HOME/test-data/morpheus-tests/policy-rates-repo/rhino/r_records_in.csv"