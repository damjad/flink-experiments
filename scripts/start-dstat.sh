#!/usr/bin/env bash
source "`dirname $0`/environment.sh"

#be careful with the following it depends on RAM.
OUT_FILE=$HOME/test-data/morpheus-tests/dstat-`hostname`-`date`.csv

python $DSTAT_HOME/dstat -cdgmnrpryl --mem-adv -C 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,total -N eth0 --epoch --noheade    rs --vm-adv --aio  --bw --nocolor --output $OUT_FILE 5 > $HOME/logs/dstat-`hostname`.log 2>&1 &
pid=$!

echo $pid > $HOME/pids/dstat-`hostname`.pid
