#!/usr/bin/env bash
source "`dirname $0`/environment.sh"

DIR=$HOME/test-data/morpheus-tests/
DSTAT_FILES=`ls -d $HOME/test-data/morpheus-tests/* | grep dstat | xargs stat $1 --printf="%y %n\n" | sort -n -r | head -4 |rev | cut -d" " -f1 | rev`
DATE=`date '+%Y-%m-%d-%H:%M:%S'`

zip -r $DIR/stats-$DATE.zip $DIR/latencies-output $DIR/policy-rates-repo $DSTAT_FILES