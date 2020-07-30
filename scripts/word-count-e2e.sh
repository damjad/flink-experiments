#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
bash word-count-run.sh && \
bash start-combo-remote.sh && \
sleep 350 && \
bash  word-count-stop-with-savepoint.sh
bash stop-combo-remote.sh